---
layout: release
_copyright_: "Copyright (C) 2013 Reece H. Dunn"
_license_: "CC-BY-SA 3.0"
title: 1.46.32
description: eSpeak for Android 1.46.32 release notes
keywords: text to speech, tts, espeak, android
category: release
project: eSpeak for Android
parent: /espeak-for-android.html
rdf: ['rdfxml']
---

What's New:

*  Update eSpeak to 1.46.32
*  Fix applying setting changes (rate, pitch, etc.)
*  Installing the voice data does not require the eSpeak activity to be displayed

Issues Fixed:

*  [#36](https://github.com/rhdunn/espeak/issues/36): The TtsSettingsActivity uses deprecated APIs
*  [#44](https://github.com/rhdunn/espeak/issues/44): Install voice data while the service is starting
*  [#45](https://github.com/rhdunn/espeak/issues/45): Engine specific settings are only applied when the service is restarted
