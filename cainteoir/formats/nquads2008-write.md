---
layout: format-support
_copyright_: "Copyright (C) 2012-2013 Reece H. Dunn"
_license_: "CC-BY-SA 3.0"
description: N-Quads 2008 export support.
keywords: nquads
title: 2008/07 (Export)
parent: /cainteoir/formats/nquads.html
type: spec
references:
  - nquads2008.ref
---

3,File Extension,,no,no,\*.nq
3,MIME Type,,no,no,text/x-nquads
3,Character Encoding,,no,no,7-bit US-ASCII
3.1,Comment,,na,na,# ...
3.1,Triple Form,,0.1,0.1,s p o .
3.1,Quad Form,,no,no,s p o c .
3.1,Subject,,0.1,0.1,s = URI or BNode
3.1,Predicate,,0.1,0.1,p = URI
3.1,Object,,0.1,0.1,o = URI or BNode or Literal
3.1,Context,,no,no,c = URI or BNode or Literal
3.1,Literal,,0.1,0.1,Simple Literal or Language Literal or Datatype Literal
3.1,URI,,0.1,0.1,&lt;uri&gt;
3.1,BNode,,0.1,0.1,\_:name
3.1,Simple Literal,,0.1,0.1,"..."
3.1,Language Literal,,0.1,0.1,"..."@lang
3.1,Datatype Literal,,0.1,0.1,"..."^^&lt;uri&gt;
3.2,U+0009,,no,no,\\t
3.2,U+000A,,no,no,\\n
3.2,U+000D,,no,no,\\r
3.2,U+0022,,0.1,0.1,\\"
3.2,U+005C,,no,no,\\\\
3.2,U+0000 - U+001F,,no,no,\\uHHHH
3.2,U+007F - U+FFFF,,no,no,the ascii character
3.2,U+0000 - U+FFFF,,no,no,\\uHHHH
3.2,U+10000 - U+10FFFF,,no,no,\\UHHHHHHHH
