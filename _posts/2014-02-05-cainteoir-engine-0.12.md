---
layout: release
_copyright_: "Copyright (C) 2012-2013 Reece H. Dunn"
_license_: "CC-BY-SA 3.0"
title: 0.12
description: Cainteoir Engine 0.12 release notes
keywords: text to speech, tts, espeak, cainteoir, ebook, epub, ogg, rdf, metadata
category: release
project: Cainteoir Engine
parent: /cainteoir/engine.html
rdf: ['rdfxml']
---

## What's New

*  added ALSA support for audio
*  use [ucd-tools](https://github.com/rhdunn/ucd-tools) for Unicode handling
*  improved CSS Counter Styles Level 3 support
*  additional improvements and bug fixes

## Text-to-Speech

Initial support for text to phoneme conversion. Specifically, this includes initial support for:

*  document text tokenization
*  context analysis
*  cardinal/ordinal numbers to words
*  phonetic model and phoneme transcriptions
*  pronunciation dictionaries

## Document Format Support

*  ePub 3: support Media Overlays (enabled on Debian Jessie or later, and Ubuntu Trusty Tahr)<sup>1</sup>
*  ePub 3: support ePub 3 navigation documents<sup>1</sup>
*  html: improve the whitespace normalization logic<sup>1</sup>
*  html: improve parsing HTML5 documents<sup>1</sup>
*  zip/epub: support ZIP archives containing data descriptors
*  email: support archived email files
*  email: support Debian bugmail mbox files

1. This feature was funded by the [CSIR](http://www.csir.co.za) (Council for Scientific and Industrial Research).

## New Applications

dictionary
: manage pronunciation dictionaries

phoneme-converter
: convert between different phonetic transcriptions (IPA, ASCII-IPA, X-SAMPA, CXS, etc.)
