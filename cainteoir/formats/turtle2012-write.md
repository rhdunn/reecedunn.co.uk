---
layout: format-support
_copyright_: "Copyright (C) 2012-2013 Reece H. Dunn"
_license_: "CC-BY-SA 3.0"
description: Turtle 2012 export support.
keywords: turtle
title: 2012/07/10 (Export)
parent: /cainteoir/formats/turtle.html
type: spec
references:
  - turtle2012.ref
---

2,Comment,,na,na,# ...
2.1,Simple Triples,,0.1,0.1,s p o .
2.2,Predicate Lists,,no,no,s p1 o1 ; p2 o2 .
2.3,Object Lists,,no,no,s p o1 , o2 .
2.4,Absolute IRIs,,0.1,0.1,&lt;...&gt;
2.4,@base,,no,no,@base &lt;...&gt; .
2.4,Relative IRIs,,no,no,&lt;#...&gt; = @base + IRI
2.4,Type IRIs,,no,no,a =&gt; rdf:type
2.4,@prefix,,0.1,0.1,@prefix name: &lt;...&gt; .
2.4,Prefixed Name,,0.1,0.1,prefix:name
2.5.1,Quoted Literal,,0.1,0.1,"..."
2.5.1,Quoted Literal,,no,no,'...'
2.5.1,Multi-Line Quoted Literal,,no,no,"""..."""
2.5.1,Multi-Line Quoted Literal,,no,no,'''...'''
2.5.1,Language Literal,,0.1,0.1,Literal@lang
2.5.1,Datatype Literal,,0.1,0.1,Literal^^IRI
2.5.2,xsd:integer,,no,no,-5 =&gt; "-5"^^xsd:integer
2.5.2,xsd:decimal,,no,no,-5.0 =&gt; "-5.0"^^xsd:decimal
2.5.2,xsd:double,,no,no,4.2E9 =&gt; "4.2E9"^^xsd:double
2.5.3,true,,no,no,true =&gt; "true"^^xsd:boolean
2.5.3,false,,no,no,false =&gt; "false"^^xsd:boolean
2.6,RDF Blank Nodes,,0.1,0.1,\_:name
2.7,Nesting Unlabled Blank Nodes,,no,no,\[ ... \]
2.8,Collections,,no,no,( ... ) =&gt; rdf:first/rdf:rest/rdf:nil
6.4,U+0000 - U+FFFF,,no,no,\\uHHHH
6.4,U+10000 - U+10FFFF,,no,no,\\UHHHHHHHH
6.4,U+0008,,no,no,\\b
6.4,U+0009,,no,no,\\t
6.4,U+000A,,no,no,\\n
6.4,U+000C,,no,no,\\f
6.4,U+000D,,no,no,\\r
6.4,U+0022,,0.1,0.1,\\"
6.4,U+0027,,no,no,\\'
6.4,U+005C,,no,no,\\\\
B,File Extension,,no,no,\*.ttl
B,MIME Type,,no,no,text/turtle
B,Character Encoding,,0.1,0.1,UTF-8
