---
layout: project
_copyright_: "Copyright (C) 2010-2013 Reece H. Dunn"
_license_: "CC-BY-SA 3.0"
description: Listen to and record ePub and HTML ebooks.
long-description: Listen to your documents or record them for use on the move using any of the eSpeak text-to-speech voices with the Cainteoir Text-to-Speech Open Source software using a Gnome-based graphical interface on Linux and other POSIX systems.
keywords: text to speech, tts, espeak, cainteoir, ebook, epub, ogg
title: Cainteoir Text-to-Speech
parent: /index.html
install: "https://launchpad.net/~msclrhd-gmail/+archive/cainteoir"
issues: "https://github.com/rhdunn/cainteoir-gtk/issues"
license: gpl3+
programming-language:
  - C++11
os:
  - Linux
homepage: "http://rhdunn.github.com/cainteoir/"
repositories:
  - { name: GitHub ,
      id: github ,
      location: "git://github.com/rhdunn/cainteoir-gtk.git" ,
      browse: "https://github.com/rhdunn/cainteoir-gtk" }
developers:
  - { name: "Reece H. Dunn" , url: "/about#me" , maintainer: true }
categories:
  - { name: "Speech Synthesis" , url: "http://dbpedia.org/resource/Category:Speech_synthesis" }
screenshot: { src: "/cainteoir/images/cainteoir-gtk-reading.png" , alt: "The Gnome/GTK interface to Cainteoir Text-to-Speech reading The Raven by Edgar Allen Poe." }
applications:
  - { name: cainteoir-gtk , description: "The GNOME 3/GTK+ GUI interface to Cainteoir Text-to-Speech." }
rdf: ['rdfxml']
feeds: ['rss2']
---

With Cainteoir Text-to-Speech you can ...

*  Listen to documents in many different formats, including _ePub_ and _HTML_.

   {: .more} [Read More](formats/document)

*  Record the documents to _WAV_ or _Ogg/Vorbis_ audio files.

# See Also

*  [Engine](engine)  -- The core text-to-speech functionality.
*  [Design](design)  -- The design of the Cainteoir Text-to-Speech engine.
