---
layout: ontology
description: RDF ontology for describing IANA Language Subtag Registry data.
keywords: rdfa, ontology, schema, iana, rfc4646, rfc5646, bcp47
title: IANA Language Subtag Registry Schema
breadcrumbs:
  - /index.html
rdf: ['rdfxml']
classes:
  - {'label':      'Collection',
     'comment':    'An ISO 639-5 language family code.',
     'subClassOf': '#Language'}
  - {'label':      'ExtLang',
     'comment':    'An ISO 639-2 or 639-3 language code that belongs to a macrolanguage.',
     'subClassOf': '#Subtag'}
  - {'label':      'Grandfathered',
     'comment':    'A deprecated RFC5646 language tag that does not conform to the RFC5646 syntax.',
     'subClassOf': '#Tag'}
  - {'label':      'Language',
     'comment':    'An ISO 639-2, 639-3 or 639-5 language code.',
     'subClassOf': '#Subtag'}
  - {'label':      'MacroLanguage',
     'comment':    'An ISO 639-2 or 639-3 language code representing a group of languages.',
     'subClassOf': '#Language'}
  - {'label':      'Private',
     'comment':    'A user-defined private subtag.',
     'subClassOf': '#Subtag'}
  - {'label':      'Redundant',
     'comment':    'A deprecated RFC5646 language tag that conforms to the RFC5646 syntax.',
     'subClassOf': '#Tag'}
  - {'label':      'Region',
     'comment':    'An ISO 3166 or UN M.49 geographical region code.',
     'subClassOf': '#Subtag'}
  - {'label':      'Script',
     'comment':    'An ISO 15924 writing script code.',
     'subClassOf': '#Subtag'}
  - {'label':      'Special',
     'comment':    'A special purpose language code.',
     'subClassOf': '#Language'}
  - {'label':      'Subtag',
     'comment':    'A component of an RFC5646 language code or a complete grandfathered/redundant tag.'}
  - {'label':      'Tag',
     'comment':    'A complete RFC5646 language tag.',
     'subClassOf': ['#Subtag', 'dct:RFC4646', 'dct:RFC5646']}
  - {'label':      'Variant',
     'comment':    'A specific form of the given language, region and script.',
     'subClassOf': '#Subtag'}
properties:
  - {'label':         'added',
     'comment':       'The date at which the subtag was added.',
     'domain':        '#Subtag',
     'range':         'rdfs:Literal',
     'subPropertyOf': 'dct:created'}
  - {'label':         'comments',
     'comment':       'Notes about the subtag.',
     'domain':        '#Subtag',
     'range':         'rdfs:Literal',
     'subPropertyOf': 'dct:description'}
  - {'label':         'deprecated',
     'comment':       'The date at which the subtag was deprecated.',
     'domain':        '#Subtag',
     'range':         'rdfs:Literal',
     'subPropertyOf': 'dct:date'}
  - {'label':         'label',
     'comment':       'The name of the subtag.',
     'domain':        '#Subtag',
     'range':         'rdfs:Literal'}
  - {'label':         'macrolanguage',
     'comment':       'The associated parent language.',
     'domain':        '#Language',
     'range':         '#MacroLanguage'}
  - {'label':         'prefix',
     'comment':       'The subtag occurring before this subtag.',
     'domain':        '#Subtag',
     'range':         '#Subtag'}
  - {'label':         'preferred-value',
     'comment':       'The value that should be used instead of this subtag.',
     'domain':        '#Subtag',
     'range':         '#Subtag',
     'subPropertyOf': 'dct:isReplacedBy'}
  - {'label':         'supress-script',
     'comment':       'The default script for the subtag.',
     'domain':        '#Subtag',
     'range':         '#Script'}
---

# Overview

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
<col width="33%"/><col width="34%"/><col width="33%"/>
<tr><th>Type</th><th>Scope</th><th>RDF Class</th></tr>
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

1. {#note1} The _private-use_ scope defines the range of language codes which are
   reserved for private use and as such do not define a specific language code
   to associate a class with.

2. {#note2} The _private_ type is not an official IANA type. It is used to describe
   subtags in the `-x-` part of the language tag reserved for private use. This
   differs from the range of private use language, region and script codes.

The remaining properties are mapped to the following RDF properties:

<table class="data">
<col width="50%"/><col width="50%"/>
<tr><th>IANA Property</th><th>RDF Property</th></tr>
<tr><td>Added</td><td><a href="#added">added</a></td></tr>
<tr><td>Comments</td><td><a href="#comments">comments</a></td></tr>
<tr><td>Deprecated</td><td><a href="#deprecated">deprecated</a></td></tr>
<tr><td>Description</td><td><a href="#label">label</a></td></tr>
<tr><td>Macrolanguage</td><td><a href="#macrolanguage">macrolanguage</a></td></tr>
<tr><td>Prefix</td><td><a href="#prefix">prefix</a></td></tr>
<tr><td>Preferred-Value</td><td><a href="#preferred-value">preferred-value</a></td></tr>
<tr><td>Supress-Script</td><td><a href="#supress-script">supress-script</a></td></tr>
</table>
