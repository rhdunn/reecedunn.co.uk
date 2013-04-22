---
layout: default
_copyright_: "Copyright (C) 2011-2013 Reece H. Dunn"
_license_: "CC-BY-SA 3.0"
title: Words to Phonemes
description: The process of converting words into a phonetic representation.
keywords: text to speech, tts, cainteoir, design, architecture
parent: /cainteoir/design/index.html
references:
  - {id:    ref1,
     title: "Phoneme Transcription Schemes",
     href:  "phoneme-transcription-schemes"}
  - {id:    ref2,
     title: "Rule Engine",
     href:  "rules"}
---

This phase converts the words in a word sequence into a phoneme sequence.
The phoneme sequence is internally represented using a feature-based
phonetic model similar to that specified in Kirshenbaum's ASCII-IPA
document. This allows different phoneme transcription schemes to be used
for the language and voice.

The phonemes are generated using the specified language (either from the
document or explicitly specified by the user) using letter-to-phoneme
rules and an exception dictionary. The letter-to-phoneme rules describe
how letter sequences are pronounced and the exception dictionary provides
a set of words that are not pronounced correctly with the letter-to-phoneme
rules.
