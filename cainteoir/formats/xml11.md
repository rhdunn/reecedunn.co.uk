---
layout: format-support
_copyright_: "Copyright (C) 2012-2013 Reece H. Dunn"
_license_: "CC-BY-SA 3.0"
description: XML 1.1 support.
keywords: xml
title: 1.1
parent: /cainteoir/formats/xml.html
type: spec
references:
  - xml11.ref
---

2.3,Characters,,0.1,0.1,No validation is performed on the characters used.
2.3,White Space,,0.1,0.1,
2.3,Name,,0.1,0.1,Only \[a-zA-Z0-9\\-\] supported.
2.4,CharData,,0.1,0.1,
2.5,Comment,,0.1,0.1,Malformed comments are permitted.
2.6,Processing Instruction,,0.1,0.1,No action is taken.
2.7,CDATA Section,,0.1,0.1,
2.8,Prolog,,0.9,0.9,
2.8,DOCTYPE DTD,,0.7,0.7,
2.10,@xml:space,,no,no,
2.11,End-of-Line Handling,,no,no,
2.12,@xml:lang,,na,na,Handled by specific document handlers.
3.1,Start Tag,,0.1,0.1,
3.1,End Tag,,0.1,0.1,
3.1,Empty-Element Tag,,0.1,0.1,
3.1,Attribute,,0.2,0.2,Both XML and HTML-style attributes are supported.
3.2,ELEMENT DTD,,na,na,DTD validation not supported.
3.3,ATTLIST DTD,,na,na,DTD validation not supported.
4.1,CharRef,,0.1,0.1,
4.1,EntityRef,,0.1,0.1,
4.2,PercentageRef DTD,,no,no,
4.3,ENTITY DTD,,0.7,0.7,
4.3.3,Character Encodings,,0.9,0.9,
4.6,Predefined Entities,,0.1,0.1,XML and HTML5 entities are supported.
4.7,NOTATION DTD,,no,no,
