---
layout: default
title: Phoneme Synthesis
description: The process of converting phonemes to audio.
keywords: text to speech, tts, cainteoir, design, architecture
breadcrumbs:
  - /index.html
  - /cainteoir/index.html
  - /cainteoir/design/index.html
---

This phase converts the phonemes in a phoneme sequence to audio. This can
be done in several ways:

1.  Calling out to an external phoneme synthesizer such as MBROLA;
2.  Using Spectral or Formant parameters such as in the Klatt or eSpeak
    synthesizers;
3.  Using a diphone database and concatenating the waveforms such as in
    the Cepstral or MBROLA synthesizers.

Each of the supported phoneme synthesizers expose a set of voices that
are described using RDF metadata.
