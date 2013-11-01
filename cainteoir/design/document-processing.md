---
layout: default
_copyright_: "Copyright (C) 2011-2013 Reece H. Dunn"
_license_: "CC-BY-SA 3.0"
title: Document Processing
description: How different document formats should be processed.
keywords: text to speech, tts, cainteoir, design, architecture
parent: /cainteoir/design/index.html
references:
  - {id:    ref1,
     title: "Document Model",
     href:  "document-model"}
---

This phase is where the different supported documents are processed into a common
representation. This representation supports:

1.  metadata about the document, using RDF to represent the data;
2.  table of content/navigation;
3.  presentation data (how the document looks on screen);
4.  prosody data (how the document is to be read), including any custom
    pronunciations.

This is exposed through a reader-based API to make it easy and fast to process
as a consumer.
