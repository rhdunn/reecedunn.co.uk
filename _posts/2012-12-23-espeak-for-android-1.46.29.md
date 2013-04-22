---
layout: release
_copyright_: "Copyright (C) 2012-2013 Reece H. Dunn"
_license_: "CC-BY-SA 3.0"
title: 1.46.29
description: eSpeak for Android 1.46.29 release notes
keywords: text to speech, tts, espeak, android
category: release
project: eSpeak for Android
parent: /espeak-for-android.html
rdf: ['rdfxml']
---

Changes from the eyes-free eSpeak port (version 1.46.02):

*  Update eSpeak to 1.46.29
*  Rework the language handling logic to display the correct language and country names (with tests)
*  Properly support Unicode characters (accented Latin characters, Cyrillic, etc.)
*  Support all available eSpeak languages and accents
*  Fix rate and pitch handling to use the correct values
*  Support MIPS devices
*  Fix various memory/object leaks and crashes
*  Improve the layout of the main eSpeak activity
*  Improve logging and error handling
*  Make it easier to build the APK from source with associated build instructions

Issues Fixed:

*  [#2](https://github.com/rhdunn/espeak/issues/2): Add tests to verify the locale mapping between android and espeak
*  [#3](https://github.com/rhdunn/espeak/issues/3): Fix handling of Cantonese and Manderin Chinese
*  [#4](https://github.com/rhdunn/espeak/issues/4): Fix building the espeakdata.zip file
*  [#6](https://github.com/rhdunn/espeak/issues/6): The eSpeak voices have a higher pitch on android than on other platforms
*  [#8](https://github.com/rhdunn/espeak/issues/8): eSpeak does not use the default speech rate on android
*  [#9](https://github.com/rhdunn/espeak/issues/9): eSpeak locale handling is broken on android with the default NDK
*  [#10](https://github.com/rhdunn/espeak/issues/10): Get the code ready to release on Google Play
*  [#11](https://github.com/rhdunn/espeak/issues/11): Detect when voice data needs updating
*  [#12](https://github.com/rhdunn/espeak/issues/12): espeakdata.zip contains the mbrola voice data
*  [#13](https://github.com/rhdunn/espeak/issues/13): The android apk file contains the C++ sources and object files
*  [#15](https://github.com/rhdunn/espeak/issues/15): Poor pronunciation of accented characters
*  [#21](https://github.com/rhdunn/espeak/issues/21): Changing the system language on Android 4.0 causes eSpeak TTS to crash
*  [#22](https://github.com/rhdunn/espeak/issues/22): The error dialog asks to send a bug report, but does not do anything
*  [#25](https://github.com/rhdunn/espeak/issues/25): Review the required permissions
*  [#28](https://github.com/rhdunn/espeak/issues/28): On Android 4.x the Bulgarian voice is listed twice
*  [#29](https://github.com/rhdunn/espeak/issues/29): Provide a better mapping of languages that map to multiple locales
*  [#30](https://github.com/rhdunn/espeak/issues/30): The language selection UI is showing incorrect names for several languages
*  [#31](https://github.com/rhdunn/espeak/issues/31): java.lang.SecurityException: Not allowed to bind to service intent
*  [#34](https://github.com/rhdunn/espeak/issues/34): Sometimes the 'bs', 'eo', 'hi', 'hy' and 'no' languages are not picked up
*  [#37](https://github.com/rhdunn/espeak/issues/37): sk and sl eSpeak voices are sometimes mixed on android
*  [#38](https://github.com/rhdunn/espeak/issues/38): Test that my espeak apk can be installed side by side with the eyes-free version
*  [#39](https://github.com/rhdunn/espeak/issues/39): Launching general TTS settings crashes on Honeycomb
*  [#41](https://github.com/rhdunn/espeak/issues/41): Add support for MIPS devices

Issues that are not eSpeak related or cannot be reproduced:

*  [#16](https://github.com/rhdunn/espeak/issues/16): Occasional crash when rapidly starting/stopping text synthesis
*  [#17](https://github.com/rhdunn/espeak/issues/17): The languages in the language-specific voice are not sorted
