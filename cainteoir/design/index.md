---
layout: default
title: Design
description: The architectural design (implemented and planned) for the Cainteoir Text-to-Speech Engine.
keywords: text to speech, tts, cainteoir, design, architecture
breadcrumbs:
  - /index.html
  - /cainteoir/index.html
references:
  - {id:    ref1,
     title: "Languages, Voices, Accents and Dialects",
     href:  "languages-voices-accents-and-dialects"}
  - {id:    ref2,
     title: "Voice Quality",
     href:  "quality"}
---

The Cainteoir Text-to-Speech Engine is split into several groups that relate to
the different phases of the speech synthesis process. These phases are:

1.  [Document Processing](document-processing)
2.  [Text To Words](text-to-words)
3.  [Words To Phonemes](words-to-phonemes)
4.  [Phoneme Morphology](phoneme-morphology)
5.  [Phoneme Synthesis](phoneme-synthesis)

The design is such that each phase can be run independently of each other,
allowing, for example, the process to start or end at a phoneme transcription.

The Cainteoir Engine currently uses the eSpeak API to handle phases 2 to 5. The
intention is to implement these within the Cainteoir Engine itself, allowing more
advanced functionality to be provided than is provided by eSpeak.
