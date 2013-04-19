---
layout: default
title: Text to Words
description: The process of splitting a block of text into its component words.
keywords: text to speech, tts, cainteoir, design, architecture
breadcrumbs:
  - /index.html
  - /cainteoir/index.html
  - /cainteoir/design/index.html
references:
  - {id:    ref1,
     title: "Numbers",
     href:  "numbers"}
---

This phase breaks down sentences and paragraphs into a sequence of words and
punctuation, where the punctuation is used to denote pauses and other prosody
information. If a punctuation character is not used as punctuation, it is
converted to its word form.

This phase will also perform part-of-speech tagging, disambiguation of
capitonyms (words that are pronounced differently when capitalized, like
"My _Polish_ neighbour bought some _polish_ at the store.") and other
processing that affects the words spoken for the document text.
