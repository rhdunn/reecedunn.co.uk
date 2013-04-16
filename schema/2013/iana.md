---
layout: ontology
description: RDF ontology for describing IANA Language Subtag Registry data.
keywords: rdfa, ontology, schema, iana, rfc4646, rfc5646, bcp47
title: IANA Language Subtag Registry Schema
breadcrumbs:
  - /index.html
rdf: ['rdfxml']
classes:
  - {'label':    'Collection',
     'comment':  'An 639-5 language family code.',
     'subclass': '#Language'}
  - {'label':    'ExtLang',
     'comment':  'An ISO 639-2 or 639-3 language code that belongs to a macrolanguage.',
     'subclass': '#Subtag'}
  - {'label':    'Grandfathered',
     'comment':  'A deprecated RFC5646 language tag that does not conform to the RFC5646 syntax.',
     'subclass': '#Subtag'}
  - {'label':    'Language',
     'comment':  'An ISO 639-2, 639-3 or 639-5 language code.',
     'subclass': '#Subtag'}
  - {'label':    'MacroLanguage',
     'comment':  'An ISO 639-2 or 639-3 language code representing a group of languages.',
     'subclass': '#Language'}
  - {'label':    'Private',
     'comment':  'A user-defined private subtag.',
     'subclass': '#Subtag'}
  - {'label':    'Redundant',
     'comment':  'A deprecated RFC5646 language tag that conforms to the RFC5646 syntax.',
     'subclass': '#Subtag'}
  - {'label':    'Region',
     'comment':  'A geographical region code.',
     'subclass': '#Subtag'}
  - {'label':    'Script',
     'comment':  'A writing script code.',
     'subclass': '#Subtag'}
  - {'label':    'Special',
     'comment':  'A special purpose language code.',
     'subclass': '#Language'}
  - {'label':    'Subtag',
     'comment':  'A component of an RFC5646 language code or a complete grandfathered/redundant tag.'}
  - {'label':    'Variant',
     'comment':  'A specific form of the given language, region and script.',
     'subclass': '#Subtag'}
---

The [IANA Language Subtag Registry](http://www.iana.org/assignments/language-subtag-registry)
defines the language, region, script and variant codes used in
[RFC5646](http://tools.ietf.org/rfc/rfc5646.txt). The format for this data is a
custom format, for example:

    %%
    Type: language
    Subtag: af
    Description: Afrikaans
    Added: 2005-10-16
    Suppress-Script: Latn

This schema defines a way of expressing this information in RDF so that it can
be queried using RDF tools.

The RDF class associated with a subtag code is determined by the _Type_ and
_Scope_ properties as follows:

<table class="data">
<tr><th>Type</th><th>Scope</th><th>Class</th></tr>
<tr><td>extlang</td><td></td><td><a href="#ExtLang">ExtLang</a></td></tr>
<tr><td>grandfathered</td><td></td><td><a href="#Grandfathered">Grandfathered</a></td></tr>
<tr><td>language</td><td></td><td><a href="#Language">Language</a></td></tr>
<tr><td>language</td><td>collection</td><td><a href="#Collection">Collection</a></td></tr>
<tr><td>language</td><td>macrolanguage</td><td><a href="#MacroLanguage">MacroLanguage</a></td></tr>
<tr><td>language</td><td>special</td><td><a href="#Special">Special</a></td></tr>
<tr><td>language</td><td>private-use</td><td>N/A<sup><a href="#note1">1</a></sup></td></tr>
<tr><td>private<sup><a href="#note2">2</a></sup></td><td></td><td><a href="#Private">Private</a></td></tr>
<tr><td>redundant</td><td></td><td><a href="#Redundant">Redundant</a></td></tr>
<tr><td>region</td><td></td><td><a href="#Region">Region</a></td></tr>
<tr><td>script</td><td></td><td><a href="#Script">Script</a></td></tr>
<tr><td>variant</td><td></td><td><a href="#Variant">Variant</a></td></tr>
</table>

<ol>
<li id="note1">
<p>The <em>private-use</em> scope defines the range of language codes which are reserved for private use and as such do not define a specific language code to associate a class with.</p>
</li>
<li id="note2">
<p>The <em>private</em> type is not an official IANA type. It is used to describe subtags in the <code>-x-</code> part of the language tag reserved for private use. This differs from the range of private use language, region and script codes.</p>
</li>
</ol>
