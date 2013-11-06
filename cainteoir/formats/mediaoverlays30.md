---
layout: format-support
_copyright_: "Copyright (C) 2012-2013 Reece H. Dunn"
_license_: "CC-BY-SA 3.0"
description: ePub 3.0 Media Overlays support.
keywords: smil, mediaoverlays, media overlays, epub3
title: "3.0"
parent: /cainteoir/formats/mediaoverlays.html
type: spec
references:
  - mediaoverlays30.ref
---

2.4.1,smil,,0.12,0.12,
2.4.1,smil/@epub:prefix,,no,no,
2.4.2,head,,no,no,
2.4.3,metadata,,no,no,
2.4.4,body,,0.12,0.12,
2.4.4,body/@epub:type,,no,no,
2.4.4,body/@epub:textref,,no,no,
2.4.5,seq,,0.12,0.12,
2.4.5,seq/@epub:type,,no,no,
2.4.5,seq/@epub:textref,,no,no,
2.4.6,par,,no,no,
2.4.6,par/@epub:type,,no,no,
2.4.7,text,,no,no,
2.4.8,audio,,no,no,
3.2.3,Embedded Audio and Video,,no,no,text element references audio/video
3.2.4,Text-to-Speech,,~0.1,~0.1,use TTS if no audio is specified
3.3,Semantic Inflection,,no,no,see epub:* properties above
3.4,Associating Style Information,,no,no,CSS class for currently reading content
3.5.1,item/@media-type='application/smil+xml',,no,no,OPF manifest attribute
3.5.1,item/@media-overlay,,no,no,OPF manifest attribute
3.5.2,media:active-class,,~0.6,~0.6,http://www.idpf.org/epub/vocab/overlays/#active-class
3.5.2,media:duration,,~0.6,~0.6,http://www.idpf.org/epub/vocab/overlays/#duration
3.5.2,media:narrator,,~0.6,~0.6,http://www.idpf.org/epub/vocab/overlays/#narrator
4.1,Loading the Media Overlay,,no,no,
4.2.1,Timing and Synchronization,,no,no,
4.2.2,Rendering Audio,,no,no,
4.2.3,Rendering EPUB Content Document Elements,,no,no,
4.3.1,Navigation,,no,no,
4.3.2,Embedded Audio and Video,,no,no,HTML5 audio and video elements
4.3.3,Text-to-Speech,,~0.1,~0.1,
4.4.1,Skippability,,no,no,skipping sidebars and other secondary content
4.4.2,Escapability,,no,no,continue reading after nested structures like tables and lists
Appendix B,HHH:MM:SS.mmm,,0.12,0.12,hours minutes seconds milliseconds
Appendix B,HHH:MM:SS,,0.12,0.12,hours minutes seconds
Appendix B,MM:SS.mmm,,0.12,0.12,minutes seconds milliseconds
Appendix B,MM:SS,,0.12,0.12,minutes seconds
Appendix B,SS.mmm,,0.12,0.12,seconds milliseconds
Appendix B,SS,,0.12,0.12,seconds
Appendix B,###.##h,,0.12,0.12,seconds
Appendix B,##h,,0.12,0.12,seconds
Appendix B,##min,,0.12,0.12,seconds
Appendix B,##.###s,,0.12,0.12,seconds
Appendix B,##s,,0.12,0.12,seconds
Appendix B,####ms,,0.12,0.12,seconds
