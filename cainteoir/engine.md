---
layout: project
_copyright_: "Copyright (C) 2010-2013 Reece H. Dunn"
_license_: "CC-BY-SA 3.0"
description: Text-to-speech engine supporting multiple document formats.
long-description: The Cainteoir Text-to-Speech Engine is a library for reading and recording different document formats (such as ePub and HTML) to various audio output formats (such as PulseAudio, WAV and OGG/Vorbis) using text-to-speech synthesis.
keywords: text to speech, tts, espeak, cainteoir, ebook, epub, ogg, rdf, metadata
title: Cainteoir Engine
parent: /cainteoir/index.html
alias:
  - "/cainteoir/cainteoir-engine.html"
install: "https://launchpad.net/~msclrhd-gmail/+archive/cainteoir"
issues: "https://github.com/rhdunn/cainteoir-engine/issues"
license: gpl3+
programming-language:
  - C++11
os:
  - Linux
homepage: "http://rhdunn.github.com/cainteoir/"
repositories:
  - { name: GitHub ,
      id: github ,
      location: "git://github.com/rhdunn/cainteoir-engine.git" ,
      browse: "https://github.com/rhdunn/cainteoir-engine" }
developers:
  - { name: "Reece H. Dunn" , foaf: "/about#me" , maintainer: true }
categories:
  - { name: "Speech Synthesis" , url: "http://dbpedia.org/resource/Category:Speech_synthesis" }
applications:
  - { name: cainteoir , description: "The command-line interface to the Cainteoir Text-to-Speech program." }
  - { name: metadata  , description: "A metadata extraction utility returning RDF metadata for supported document formats." }
rdf: ['rdfxml']
feeds: ['rss2']
---

# See Also

*  [Documents](formats/document) -- document format support
*  [Metadata](formats/metadata) -- metadata format import/export support
