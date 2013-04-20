---
layout: release
title: "0.10"
description: Cainteoir Engine 0.10 release notes
keywords: text to speech, tts, espeak, cainteoir, ebook, epub, ogg, rdf, metadata
category: release
project: Cainteoir Engine
nav:
  - /index.html
  - /cainteoir/index.html
  - /cainteoir/engine.html
rdf: ['rdfxml']
---

*  html: initial support for MS Word generated HTML.
*  html: fix table of content navigation within zip files.
*  mime: improve From username and email extraction.
*  mime: support story-based mime-like identifiers Title, Story, Author and Keyword.
*  opf: support dc:subject statements with comma-separated keywords.
*  Improve use of the IANA Sub-Tag Repository RDF metadata.
*  Improve the phoneme transcription scheme chart generation.
*  Support arpabet, Unicode IPA, x-sampa and sampa-de transcription schemes.
*  Use C++11 range-based for loops.
*  Support building on clang >= 3.2 (as well as g++ >= 4.6).
*  Full doxygen documentation for the public API.
*  Simplify the buffer API.
*  Add expression templates to the RDF Query Language API.
*  Optimize RDF select on subjects.