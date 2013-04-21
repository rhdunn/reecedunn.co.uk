---
layout: post
title: Pronunciation Dictionaries and Regular Expressions
description: Using a Regular Expression-like syntax in Pronunciation Dictionaries
keywords: text to speech, tts, espeak, cainteoir, pronunciation, dictionary, regular, expression, regex
author: { name: Reece H. Dunn , foaf: /about#me }
category: tts
parent: /index.html
---

Over the past few months I have been compiling a _pronunciation dictionary_ for
English. This is a _big_ task. So why start it?

I have been using the eSpeak speech synthesizer to listen to documents and web
pages. Every now and then (particularly names and compound words) it would
pronounce the word wrong. I had been keeping a list of words that it
mispronounced, sending them to the eSpeak developer and then starting over.
This has several disadvantages:

1. how do you know if a word has regressed in pronunciation?
2. how do you deal with accent and dialect variations?

In addition to this, I want to build my own text to phoneme engine. This requires
having the data in place to construct the conversion rules. So I started a
pronunciation dictionary for the way I pronounce various words in the
_cainteoir-english_ project under the `data/reece` directory. One of the things
I am keen on is keeping each pronunciation dictionary tied to a specific person:
this is in order to avoid mixing accent and dialect variations between different
speakers.

I have been maintaining a script (`tests/dictionary.py` in the _cainteoir-engine_
project) that compares the pronunciation in the pronunciation dictionary against
the pronunciation by espeak and indicating success or failure. This is utilized
in the _cainteoir-english_ project through the `make check` command that shows
mispronounced words by espeak (according to the pronunciation dictionary). For
example:

    ../cainteoir-engine/tests/dictionary.py data/reece | grep fail
    faux /fˈəʊ/ got: /fˈɔːks/ ... fail
    mojito /məçˈiːtəʊ/ got: /məʊhˈiːtəʊ/ ... fail
    oort /ˈɔːt/ got: /ˈuːət/ ... fail
    poor /pˈɔː/ got: /pˈʊə/ ... fail
    prepare /pɹəpˈeə/ got: /pɹɪpˈeə/ ... fail
    Elise /əlˈiːz/ got: /ɪlˈiːz/ ... fail
    Eoghan /ˈəʊən/ got: /ɪˈɒɡən/ ... fail
    Eoin /ˈəʊən/ got: /ɪˈɔɪn/ ... fail

The `tests/dictionary.py` has another feature where it can produce an exception
dictionary usable by eSpeak containing the mispronounced words and the
pronunciation in the pronunciation dictionary. This is used in my fork of espeak
on github to generate the `dictsource/en_extra` file and build the _en_ voice
using the `make en` command. For example, running `make en` yields:

    ../cainteoir-engine/tests/dictionary.py ../cainteoir-english/data/reece | grep -F fail
    2143 passed 0 failed 2143 total
    wc -l dictsource/en_extra
    607 dictsource/en_extra

Or about a 72% accuracy rate. __NOTE:__ This is not a completely accurate
representation of the accuracy of the eSpeak en voice since the words are
weighted toward those that eSpeak mispronounces such as _Eoghan_ and
_Eoin_ and also covers dialect differences like _poor_.

This means that any word that espeak mispronounces through its rules that are
in the pronunciation dictionary are added to the `en_extra` file, keeping the
accuracy for those words. By having this driven automatically through a script
means that manually adding words to `en_list` is not needed (provided the word
is in the pronunciation dictionary).

Given the rules only (i.e. no extra words listed in `en_list`) the number of
entries in the `en_extra` file gives a clear indication of the accuracy of the
rules in `en_rules` for the given accent/dialect of the speaker of the
pronunciation dictionary used.

# Using Regular Expressions

As the pronunciation dictionary has been expanding -- particularly when dealing
with names -- there have been a growing number of words that are pronounced the
same. That it, it is only the spelling that is different.

Using a regular expression-style notation allows the words to be grouped together,
reducing the number of entries in the pronunciation dictionary. I have chosen a
regular expression notation as it is used in other areas (no need to create yet
another syntax to learn) and is powerful in what can be expressed.

This also has an interesting side effect -- it forms the initial step in
constructing pronunciation rules, suggesting where common word sequences occur.
For example, names often end with the pattern `(i|ie|y)` like the name
`Jacki/Jackie/Jacky`.

Using this information, I have constructed a set of replacement patterns that
can be used in the words. These form letter-based replacements such as
`&lt;y&gt;` as a placeholder for `(ee|ey|i|ie|y)` in names like `Dav&lt;y&gt;`,
and suffix-based replacements such as `+ANNA` as a placeholder for
`a(na|nna|nnah)` in names like `Jo+ANNA`.

This is still a work in progress as the implementation I am using is simplistic
and can only handle a limited set of expressions. I also want to express
groupings to cover prefixes and suffixes used in words to cover things like
`{kilo|mega|giga|terra|peta}byte` and `heal{ed|er|ers|ing|s}` with the
associated pronunciation for each sub-group.

See the [Rule Engine](/cainteoir/design/rules) page for my notes on the future
direction for this functionality.
