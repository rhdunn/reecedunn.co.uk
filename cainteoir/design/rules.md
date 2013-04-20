---
layout: default
title: Letter to Phoneme Rule Engine
description: Design document for the rule engine in the Cainteoir Text-to-Speech program.
keywords: text to speech, tts, cainteoir, rules, letter to phoneme, pronunciation dictionary, grapheme to phoneme, grapheme, phoneme
parent: /cainteoir/design/index.html
references:
  - {id:        ref1,
     href:      "http://www.speech.cs.cmu.edu/cgi-bin/cmudict",
     title:     "The CMU Pronunciation Dictionary",
     publisher: {
       href: "http://www.cs.cmu.edu",
       name: "Carnegie Mellon University",
       abbr: CMU }}
  - {id:        ref2,
     href:      "http://handle.dtic.mil/100.2/ADA021929",
     title:     "Automatic Translation of English Text to Phonetics by Means of Letter-to-Sound Rules",
     alt-title: "NRL Report 7948",
     authors:   ["Elovitz, H. S.", "Johnson, R. W.", "McHugh, A.", "Shore, J. E."],
     date:      "1976-21-01",
     publisher: {
       href: "http://www.nrl.navy.mil/",
       name: "Naval Research Laboratory",
       abbr: NRL,
       near: "Washington, D. C."}}
  - {id:        ref3,
     href:      "http://espeak.sourceforge.net/dictionary.html",
     title:     "eSpeak: Pronunciation Dictionaries"}
  - {id:        ref4,
     href:      "http://www.regular-expressions.info/reference.html",
     title:     "Regular Expressions Reference - Basic Syntax"}
  - {id:        ref5,
     href:      "http://morepypy.blogspot.com/2010/05/efficient-and-elegant-regular.html",
     title:     "An Efficient and Elegant Regular Expression Matcher in Python",
     authors:   ["Carl Friedrich Bolz"],
     date:      "2010-05-21"}
  - {id:        ref6,
     href:      "http://swtch.com/~rsc/regexp/",
     title:     "Implementing Regular Expressions",
     authors:   ["Russ Cox"]}
  - {id:        ref7,
     partof:    "http://swtch.com/~rsc/regexp/",
     href:      "http://swtch.com/~rsc/regexp/regexp1.html",
     title:     "Regular Expression Matching Can Be Simple And Fast (but is slow in Java, Perl, PHP, Python, Ruby, ...)",
     authors:   ["Russ Cox"],
     date:      "2007-01"}
  - {id:        ref8,
     partof:    "http://swtch.com/~rsc/regexp/",
     href:      "http://swtch.com/~rsc/regexp/regexp2.html",
     title:     "Regular Expression Matching: the Virtual Machine Approach",
     authors:   ["Russ Cox"],
     date:      "2009-12"}
  - {id:        ref9,
     partof:    "http://swtch.com/~rsc/regexp/",
     href:      "http://swtch.com/~rsc/regexp/regexp3.html",
     title:     "Regular Expression Matching in the Wild",
     authors:   ["Russ Cox"],
     date:      "2010-03"}
  - {id:        ref10,
     href:      "http://www.ddj.com/architect/184410904",
     title:     "Regular Expressions",
     authors:   ["Brian W. Kernighan", "Rob Pike"],
     date:      "1999-04-01"}
  - {id:        ref11,
     href:      "http://blog.chromium.org/2009/02/irregexp-google-chromes-new-regexp.html",
     title:     "Irregexp, Google Chrome's New Regexp Implementation",
     authors:   ["Erik Corry", "Christian Plesner Hansen", "Lasse Reichstein Holst Nielsen"],
     date:      "2009-02"}
  - {id:        ref12,
     href:      "http://en.wikipedia.org/wiki/Trie",
     title:     "Trie",
     publisher: {
       href: "http://en.wikipedia.org",
       name: "Wikipedia"}}
---

Creating a text-to-speech voice that has accurate pronunciation is complicated
and challenging, especially for a diverse language such as English.

Using a _pronunciation dictionary_ (such as the one by the _Carnegie Mellon
University_<sup><a href="#ref1">1</a></sup>) has its limitations. The dictionary
can be very large, requiring megabytes of memory to store it which has an impact
on cache locality and performance. It is also difficult to deal with made up
words or words that are not present in the dictionary. Care also needs to be
made to ensure the pronunciations have a consistent accent (e.g. keeping _hot_
and _cot_ consistent).

Using _grapheme to phoneme_ rules (such as the ones described in the _Naval
Research Laboratory_ (NRL) Report 7948<sup><a href="#ref2">2</a></sup>)
drastically reduces the space needed to pronounce all words in a dictionary
and significantly improve pronunciation of unknown words. The _eSpeak_
text-to-speech engine provides a mechanism for describing _grapheme to
phoneme_ rules<sup><a href="#ref3">3</a></sup> such as the ones provided in
the NRL Report.

A key problem with _grapheme to phoneme_ rules is how to ensure that they are
accurate. This is easily verified by using a complete and accurate
_pronunciation dictionary_ as the test set for the rules.

__NOTE:__ It is possible to create a _pronunciation dictionary_ by listing all
the words in the dictionary as _grapheme to phoneme_ rules.

# Expressing Letter To Phoneme Rules

This is a description of the types of expressions supported by the Cainteoir
_grapheme to phoneme_ rules engine.

These come in several forms:

<table class="data">
<tr>
<th>Form</th>
<th>Example</th>
<th>Description</th>
</tr>
<tr>
<td><code><em>letter-sequence</em> /<em>phoneme-sequence</em>/</code></td>
<td><code>cat /k'at/</code></td>
<td>A match to the <em>letter-sequence</em> causes the <em>phoneme-sequence</em> to be generated.</td>
</tr>
<tr>
<td><code><em>letter-sequence</em> /<em>phoneme-sequence</em>/ <em>language</em></code></td>
<td><code>si /s'i:/ es</code></td>
<td>A match to the <em>letter-sequence</em> causes the <em>phoneme-sequence</em> to be generated (which is noted to be in a specific language).</td>
</tr>
<tr>
<td><code><em>letter-sequence</em> /<em>phoneme-sequence</em>/ <em>language</em>+<em>accent</em></code></td>
<td><code>cot /k'0t/ en+RP</code></td>
<td>A match to the <em>letter-sequence</em> causes the <em>phoneme-sequence</em> to be generated (which is noted to be in a specific language and accent).</td>
</tr>
<tr>
<td><code><em>letter-sequence</em> "<em>replacement-text</em>"</code></td>
<td><code>12 "twelve"</code></td>
<td>A match to the <em>letter-sequence</em> causes the <em>replacement-text</em> to be scanned by the rules (<strong>NOTE:</strong> <code>a "a"</code> is infinitely recursive).</td>
</tr>
</table>

Where the _letter-sequence_ may consist of one or more of the following regular
expression-like constructs<sup><a href="#ref4">4</a></sup>:

<table class="data">
<tr>
<th>Pattern</th>
<th>Example</th>
<th>Description</th>
</tr>
<tr>
<td><em>8-bit character</em></td>
<td><code>t</code></td>
<td>Matches if the character is at the current string position (<strong>NOTE:</strong> a <em>utf-8 character</em> will match as 1-4 <em>8-bit characters</em>).</td>
</tr>
<tr>
<td><code>\[<em>characterset</em>\]</code></td>
<td><code>\[ck\]</code></td>
<td>Matches if one of the characters in <em>characterset</em> is at the current string position.</td>
</tr>
<tr>
<td><code>(<em>option</em>|<em>option</em>)</code></td>
<td><code>(c|k|ck)</code></td>
<td>Matches if one of the <em>option</em> sub-patterns match at the current string position.</td>
</tr>
<tr>
<td><code><em>character</em>?</code></td>
<td><code>mr.?</code></td>
<td>Optionally matches if the character is at the current string position.</td>
</tr>
<tr>
<td><code>^</code></td>
<td><code>^nano</code></td>
<td>Matches if the current string position is at the start of a word.</td>
</tr>
<tr>
<td><code>$</code></td>
<td><code>ing$</code></td>
<td>Matches if the current string position is at the end of a word.</td>
</tr>
</table>

__NOTE:__ To enable advanced optimisation techniques, patterns involving repeated
items are excluded.

# Multiple-Pass Interpreter

The letter to phoneme rules will be scanned in order and the first matching rule
is the one that will be chosen and the resulting action taken. The text is then
processed from the next string marker. This is to simplify the scanning algorithm:

    void letter2phoneme(rule *rules, const char *str)
    {
    	for (rule *r = rules ; r != NULL ; r = r->next) {
    		const char *next = match(r, str);
    		if (next) { // a match was found ...
    			doaction(r);
    			if (!*next) // end of string ...
    				return;
    			str = next; // advance
    			r = rules;  // reset the scanner
    		}
    	}
    	printf("no matching rule found!\n");
    }

# Single-Pass Interpreter

This can be inefficient for large rule sets (e.g. a large pronunciation
dictionary). A faster approach at runtime would be to have a single _Discrete
Finite-State Automata_ (DFA) rule with multiple end-points, each of which holds
the action required. The scanner would then match against this big automata,
picking the longest matching sequence (behaving differently to the first matching
algorithm above):

    void letter2phoneme(rule *r, const char *str)
    {
    	while (*str) {
    		action *m = match(r, str);
    		if (m) { // a match was found ...
    			doaction(m);
    			str = m->next; // advance
    		} else {
    			printf("no matching rule found!\n");
    			return; // abort
    		}
    	}
    }

For a pronunciation dictionary, this single-pass model behaves like a _trie_
data structure<sup><a href="#ref12">12</a></sup>.

In order to build the DFA, the loader could scan each rule as it is being added
and avoid inserting duplicate nodes. This should be possible without ambiguities
by limiting the supported expressions to forward-scanning expressions only (i.e.
no repetition).

# Virtual Machine

Each rule is transformed to an internal opcode representation. This provides a
simpler sequence processing model operating on a stack and register virtual
machine<sup><a href="#ref8">8</a></sup>.

It should be possible to serialise the opcode sequence in a text form (for
automated regression testing and debugging) as well as a compact binary
bytecode form (for optimal storage).

# Just-in-Time Compilation

A Just-in-Time (JIT) compiler could replace the interpreter to convert the
scanner into efficient native code, taking advantage of native registers
and SSE instructions.
