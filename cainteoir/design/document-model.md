---
layout: default
_copyright_: "Copyright (C) 2011-2013 Reece H. Dunn"
_license_: "CC-BY-SA 3.0"
title: Document Model
description: The representation of a document in memory.
keywords: text to speech, tts, cainteoir, design, architecture, document model
parent: /cainteoir/design/index.html
---

This is the design of how a document is represented in memory and how the reader
stream events are structured. This model is not an accurate representation of any
specific document format, but is designed around the general structure and
semantics of a document.

Fro example, an italic text span can be represented in many different ways in
HTML, DocBook and other document formats. In the Cainteoir Text-to-Speech
document model there is a single way of specifying an italic text span that is
not tied to any specific document format.

The rationale behind this is that the consumers of the document model
(text-to-speech engine, presentation layers, document converters, etc.) do not
need to understand the different equivalent ways of specifying content. It also
means the document model is a superset of all the different document formats.
