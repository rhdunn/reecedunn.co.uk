---
layout: format-support
_copyright_: "Copyright (C) 2013 Reece H. Dunn"
_license_: "CC-BY-SA 3.0"
description: CSS Level 2.1 support.
keywords: css, css2
title: "2.1"
parent: /cainteoir/formats/css.html
type: css-spec
level: "2.1"
references:
  - css21.ref
---

4.1.1,syntax,Tokenization,,na,~0.12,no,
4.1.2,syntax,Keywords,,na,~0.12,no,
4.1.3,syntax,Characters and Case,,na,no,no,
4.1.4,syntax,Statements,,na,~0.12,no,
4.1.5,syntax,At-rules,,na,~0.12,no,
4.1.6,syntax,Blocks,,na,~0.12,no,
4.1.7,syntax,Rule Sets,,na,no,no,
4.1.7,syntax,Declaration Blocks,,na,no,no,
4.1.7,syntax,Selectors,,na,no,no,
4.1.8,syntax,Declarations and Properties,,na,no,no,
4.1.9,syntax,Comments,,na,~0.12,~0.12,
4.2,syntax,Parser Errors,,na,no,no,
4.3.1,syntax,Integers,,0.11,0.12,no,
4.3.1,syntax,Numbers,,0.11,no,no,
4.3.2,,Lengths,,no,no,no,
4.3.2,unit,em,,no,no,no,
4.3.2,unit,ex,,no,no,no,
4.3.2,unit,in,,0.11,no,0.11,
4.3.2,unit,cm,,0.11,no,0.11,
4.3.2,unit,mm,,0.11,no,0.11,
4.3.2,unit,pt,,0.11,no,0.11,
4.3.2,unit,pc,,0.11,no,0.11,
4.3.2,unit,px,,0.11,no,0.11,
4.3.3,,Percentages,,no,no,no,
4.3.4,function,url(),,no,no,no,
4.3.5,function,counter(),,no,no,no,
4.3.6,function,Colors,,no,no,no,
4.3.6,,#RGB,,na,no,no,
4.3.6,,#RRGGBB,,na,no,no,
4.3.6,function,rgb(),,no,no,no,
4.3.6,color,aqua,,na,no,no,#00ffff
4.3.6,color,black,,na,no,no,#000000
4.3.6,color,blue,,na,no,no,#0000ff
4.3.6,color,fuchsia,,na,no,no,#ff00ff
4.3.6,color,gray,,na,no,no,#808080
4.3.6,color,green,,na,no,no,#008000
4.3.6,color,lime,,na,no,no,#00ff00
4.3.6,color,maroon,,na,no,no,#800000
4.3.6,color,navy,,na,no,no,#000080
4.3.6,color,olive,,na,no,no,#808000
4.3.6,color,orange,,na,no,no,#ffa500
4.3.6,color,purple,,na,no,no,#800080
4.3.6,color,red,,na,no,no,#ff0000
4.3.6,color,silver,,na,no,no,#c0c0c0
4.3.6,color,teal,,na,no,no,#008080
4.3.6,color,white,,na,no,no,#ffffff
4.3.6,color,yellow,,na,no,no,#ffff00
4.3.7,syntax,Strings,,0.11,~0.12,no,
4.3.8,syntax,Unsupported Values,,na,no,no,
4.4,,Style Sheet Representation,,na,no,no,
4.4,at-rule,@charset,,na,no,no,
5.3,selector,Universal Selector,,no,no,no,\*
5.4,selector,Type Selectors,,no,no,no,E
5.5,selector,Descendant Selectors,,no,no,no,E F
5.6,selector,Child Selectors,,no,no,no,E &lt; F
5.7,selector,Adjacent Sibling Selectors,,no,no,no,E + F
5.8.1,selector,Attribute Selectors,,no,no,no,\[att\]
5.8.1,selector,Attribute Selectors,,no,no,no,\[att=val\]
5.8.1,selector,Attribute Selectors,,no,no,no,\[att~=val\]
5.8.1,selector,Attribute Selectors,,no,no,no,\[att|=val\]
5.8.3,selector,Class Selectors,,no,no,no,.classname
5.9,selector,ID Selectors,,no,no,no,#idname
5.11.1,selector,:first-child,,no,no,no,
5.11.2,selector,:link,,no,no,no,
5.11.2,selector,:visited,,no,no,no,
5.11.3,selector,:hover,,no,no,no,
5.11.3,selector,:active,,no,no,no,
5.11.3,selector,:focus,,no,no,no,
5.11.4,selector,:lang(tag),,no,no,no,
5.12.1,selector,:first-line,,no,no,no,
5.12.2,selector,:first-letter,,no,no,no,
5.12.3,selector,:before,,no,no,no,
5.12.3,selector,:after,,no,no,no,
6.1.1,,Specified Values,,no,no,no,
6.1.2,,Computed Values,,no,no,no,
6.1.3,,Used Values,,no,no,no,
6.1.4,,Actual Values,,no,no,no,
6.2,,Inheritance,,no,no,no,
6.2.1,,inherit value,,no,no,no,
6.2,at-rule,@import,,no,no,no,
6.4.1,,Cascading Order,,no,no,no,
6.4.2,,!important Rules,,no,no,no,
6.4.3,,Selector Specificity,,no,no,no,
7.2.1,at-rule,@media,,no,no,no,
8.3,property,margin-top,,0.11,no,no,
8.3,property,margin-bottom,,0.11,no,no,
8.3,property,margin-right,,0.11,no,no,
8.3,property,margin-left,,0.11,no,no,
8.3,property,margin,,no,no,no,
8.3.1,,Collapsing Margins,,no,no,no,
8.4,property,padding-top,,no,no,no,
8.4,property,padding-bottom,,no,no,no,
8.4,property,padding-right,,no,no,no,
8.4,property,padding-left,,no,no,no,
8.4,property,padding,,no,no,no,
8.5.1,property,border-top-width,,no,no,no,
8.5.1,property,border-bottom-width,,no,no,no,
8.5.1,property,border-right-width,,no,no,no,
8.5.1,property,border-left-width,,no,no,no,
8.5.1,property,border-width,,no,no,no,
8.5.2,property,border-top-color,,no,no,no,
8.5.2,property,border-bottom-color,,no,no,no,
8.5.2,property,border-right-color,,no,no,no,
8.5.2,property,border-left-color,,no,no,no,
8.5.2,property,border-color,,no,no,no,
8.5.3,property,border-top-style,,no,no,no,
8.5.3,property,border-bottom-style,,no,no,no,
8.5.3,property,border-right-style,,no,no,no,
8.5.3,property,border-left-style,,no,no,no,
8.5.3,property,border-style,,no,no,no,
8.5.4,property,border-top,,no,no,no,
8.5.4,property,border-bottom,,no,no,no,
8.5.4,property,border-right,,no,no,no,
8.5.4,property,border-left,,no,no,no,
8.5.4,property,border,,no,no,no,
9.2.4,property,display,,no,no,no,
9.2.4,,display:inline,,0.11,no,no,
9.2.4,,display:block,,0.11,no,no,
9.2.4,,display:list-item,,0.11,no,no,
9.2.4,,display:inline-block,,no,no,no,
9.2.4,,display:table,,0.11,no,no,
9.2.4,,display:inline-table,,no,no,no,
9.2.4,,display:table-row-group,,no,no,no,
9.2.4,,display:table-header-group,,no,no,no,
9.2.4,,display:table-footer-group,,no,no,no,
9.2.4,,display:table-row,,0.11,no,no,
9.2.4,,display:table-column-group,,no,no,no,
9.2.4,,display:table-column,,no,no,no,
9.2.4,,display:table-cell,,0.11,no,no,
9.2.4,,display:table-caption,,no,no,no,
9.2.4,,display:none,,0.11,no,no,
9.3.1,property,position,,no,no,no,
9.3.2,property,top,,no,no,no,
9.3.2,property,right,,no,no,no,
9.3.2,property,bottom,,no,no,no,
9.3.2,property,left,,no,no,no,
9.5.1,property,float,,no,no,no,
9.5.2,property,clear,,no,no,no,
9.9.1,property,z-index,,no,no,no,
9.10,property,direction,,no,no,no,
9.10,property,unicode-bidi,,no,no,no,
10.2,property,width,,no,no,no,
10.4,property,min-width,,no,no,no,
10.4,property,max-width,,no,no,no,
10.5,property,height,,no,no,no,
10.8.1,property,line-height,,no,no,no,
10.8.1,property,vertical-align,,0.11,no,no,
11.1.1,property,overflow,,no,no,no,
11.1.1,property,clip,,no,no,no,
11.2,property,visibility,,no,no,no,
12.2,property,content,,no,no,no,
12.3.1,property,quotes,,no,no,no,
12.4,property,counter-reset,,no,no,no,
12.4,property,counter-increment,,no,no,no,
12.5.1,property,list-style-type,,no,no,no,
12.5.1,counter,disc,,no,no,no,
12.5.1,counter,circle,,no,no,no,
12.5.1,counter,square,,no,no,no,
12.5.1,counter,decimal,,no,no,no,
12.5.1,counter,decimal-leading-zero,,no,no,no,
12.5.1,counter,lower-roman,,no,no,no,
12.5.1,counter,upper-roman,,no,no,no,
12.5.1,counter,lower-greek,,no,no,no,
12.5.1,counter,lower-latin,,no,no,no,
12.5.1,counter,upper-latin,,no,no,no,
12.5.1,counter,armenian,,no,no,no,
12.5.1,counter,georgian,,no,no,no,
12.5.1,counter,lower-alpha,,no,no,no,
12.5.1,counter,upper-alpha,,no,no,no,
12.5.1,,none,,no,no,no,
12.5.1,property,list-style-image,,no,no,no,
12.5.1,property,list-style-position,,no,no,no,
12.5.1,property,list-style,,no,no,no,
13.2,at-rule,@page,,no,no,no,
13.3.1,property,page-break-before,,no,no,no,
13.3.1,property,page-break-after,,no,no,no,
13.3.1,property,page-break-inside,,no,no,no,
13.3.2,property,orphans,,no,no,no,
13.3.2,property,widows,,no,no,no,
14.1,property,color,,no,no,no,
14.2.1,property,background-color,,no,no,no,
14.2.1,property,background-image,,no,no,no,
14.2.1,property,background-repeat,,no,no,no,
14.2.1,property,background-attachment,,no,no,no,
14.2.1,property,background-position,,no,no,no,
14.2.1,property,background,,no,no,no,
15.3,property,font-family,,0.11,no,no,
15.4,property,font-style,,0.11,no,no,
15.5,property,font-variant,,0.11,no,no,
15.6,property,font-weight,,0.12,no,no,
15.7,property,font-size,,0.11,no,no,
15.8,property,font,,no,no,no,
16.1,property,text-indent,,no,no,no,
16.2,property,text-align,,0.11,no,no,
16.3.1,property,text-decoration,,0.11,no,no,
16.4,property,letter-spacing,,no,no,no,
16.4,property,word-spacing,,no,no,no,
16.5,property,text-transform,,no,no,no,
16.6,property,white-space,,no,no,no,
17.4.1,property,caption-side,,no,no,no,
17.5.2,property,table-layout,,no,no,no,
17.6,property,border-collapse,,no,no,no,
17.6.1,property,border-spacing,,no,no,no,
17.6.1.1,property,empty-cells,,no,no,no,
18.1,property,cursor,,no,no,no,
18.4,property,outline,,no,no,no,
18.4,property,outline-width,,no,no,no,
18.4,property,outline-style,,no,no,no,
18.4,property,outline-color,,no,no,no,
A.2.1,unit,deg,,no,no,no,
A.2.1,unit,grad,,no,no,no,
A.2.1,unit,rad,,no,no,no,
A.2.2,unit,ms,,no,no,no,
A.2.2,unit,s,,no,no,no,
A.2.3,unit,Hz,,no,no,no,
A.2.3,unit,kHz,,no,no,no,
A.3,property,volume,,no,no,no,
A.4,property,speak,,no,no,no,
A.5,property,pause-before,,no,no,no,
A.5,property,pause-after,,no,no,no,
A.5,property,pause,,no,no,no,
A.6,property,cue-before,,no,no,no,
A.6,property,cue-after,,no,no,no,
A.6,property,cue,,no,no,no,
A.7,property,play-during,,no,no,no,
A.8,property,azimuth,,no,no,no,
A.8,property,elevation,,no,no,no,
A.9,property,speech-rate,,no,no,no,
A.9,property,voice-family,,no,no,no,
A.9,property,pitch,,no,no,no,
A.9,property,pitch-range,,no,no,no,
A.9,property,stress,,no,no,no,
A.9,property,richness,,no,no,no,
A.10,property,speak-punctuation,,no,no,no,
A.10,property,speak-numeral,,no,no,no,
A.11.1,property,speak-header,,no,no,no,