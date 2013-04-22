---
layout: default
_copyright_: "Copyright (C) 2011-2013 Reece H. Dunn"
_license_: "CC-BY-SA 3.0"
title: Voice Quality
description: How to assess the quality of a text-to-speech voice.
keywords: text to speech, tts, cainteoir, voice, quality, accuracy, legibility, intelligibility, naturalness
parent: /cainteoir/design/index.html
---

There are different areas in which the quality of voices can be compared:

1.  _Intelligibility_ is a measure of how easy it is to understand
    what is being spoken by the voice.

2.  _Accuracy_ is a measure of how good the voice is at reading
    an arbitrary document.

3.  _Naturalness_ is a measure of how human a voice sounds.

Different aspects of the voice can also be compared:

1.  [Phonetic Quality](#phonetic_quality)
2.  [Prosodic Assignment Quality](#prosodic_assignment_quality)
3.  [Prosodic Modulation Quality](#prosodic_modulation_quality)
4.  [Pronunciation Quality](#pronunciation_quality)

# Phonetic Quality

Phonetic quality is an assessment of the quality of the individual
phonemes a voice produces.

1.  _Phonetic Intelligibility_ is an assessment of how easy
    it is to recognize each phoneme spoken by the voice and
    distinguish between similar phonemes.

2.  _Phonetic Accuracy_ is an assessment of how accurate
    the voice is at reproducing the phonemes.

3.  _Phonetic Naturalness_ is an assessment of how
    human-like the phonemes are, regardless of their
    intelligibility. This also includes how natural the
    phonemes sound when combined (i.e. do they flow
    together naturally).

For example the _eSpeak_ English voice is intelligible (the
different phonemes can be easily recognized), is accurate
and does not sound natural (it uses a spectral synthesizer
which sounds robotic and sibilant fricatives have a white
noise component which sounds harsh).

# Prosodic Assignment Quality

Prosodic assignment quality is an assessment of the quality of the
prosody applied to a given sentence. That is the stresses, pauses,
speed and pitch over the course of an arbitrary text.

1.  _Prosodic Assignment Intelligibility_ is a measure of
    how easy it is to understand what is being said, e.g. being
    able to differentiate between normal sentences, questions and
    exclamations.

2.  _Prosodic Assignment Accuracy_ is a measure of how
    accurate the voice is at applying prosody to a given text
    (allowing for subjectivity and natural variance in speech).

3.  _Prosodic Assignment Naturalness_ is a measure of how
    natural the prosody sounds.

For example the _eSpeak_ English voice is intelligible,
mostly accurate (for very long sentences it is too fast)
and usually sounds natural (for very long sentences it
does not take pauses for breath-breaks).

# Prosodic Modulation Quality

Prosodic modulation quality is an assessment of the quality of
the assigned prosody to the phonemes of the voice. That is,
how the phonemes vary in speed and pitch when the prosody is
applied to them.

1.  _Prosodic Modulation Intelligibility_ is a measure
    of how easy it is to recognise the phonemes across the
    different prosodic variations, specifically at the
    extremes of speed and pitch and from pitch transitions.

2.  _Prosodic Modulation Accuracy_ is a measure of how
    accurate the phoneme modifications are to the given prosody.

3.  _Prosodic Modulation Naturalness_ is a measure of
    how natural the phonemes sound at the different speeds
    and pitches as well as the changes in pitch.

For example the _Cepstral_ Allison voice is intelligible,
is not very accurate (pitch distortion is prevalent in
this voice when compared to others) and does not sound
very natural (the pitch distortion makes it sound
artificial).

# Pronunciation Quality

Pronunciation quality is an assessment of the quality of the
pronunciation of the language(s) the voice supports.

1.  _Pronunciation Intelligibility_ is a measure of how
    easy it is to recognise the words in the specified
    language when compared to understanding a native
    speaker in the supported language.

2.  _Pronunciation Accuracy_ is a measure of how accurate
    the pronunciation of the words is in the specified
    language and dialect.

    This is something that can be assessed in an automated way
    provided that a suitable test corpus can be produced and the
    text-to-speech engine can produce the phonemes the voice uses
    to pronounce the entries in that corpus, which can then be
    compared against a reference phoneme set.

3.  _Pronunciation Naturalness_ is a measure of how
    natural the pronunciation is. That is, it is
    measuring the suprasegmental morphology of
    speech (i.e. how words flow/merge together
    when spoken).

For example the _eSpeak_ English voice is very
intelligible, very accurate and moderately natural.
