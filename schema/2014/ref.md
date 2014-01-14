---
layout: ontology
_copyright_: "Copyright (C) 2014 Reece H. Dunn"
_license_: "CC-BY-SA 3.0"
description: RDF ontology for describing document reference data.
keywords: rdf, ontology, schema, toc, table of contents, list, figures, pages, tables, illustrations
title: Document Reference Schema
parent: /index.html
classes:
  - {'label':      'Entry',
     'added':      '2014-01-14',
     'comment':    'An entry in a listing.'}
  - {'label':      'Listing',
     'added':      '2014-01-14',
     'comment':    'A table or list of items.'}
properties:
  - {'label':         'entries',
     'added':         '2014-01-14',
     'comment':       'An RDF list of ref:Entry objects that constitute the listing contents.'}
  - {'label':         'level',
     'added':         '2014-01-14',
     'comment':       'The depth of the entry.',
     'domain':        '#Entry',
     'range':         'xsd:integer'}
  - {'label':         'listing',
     'added':         '2014-01-14',
     'comment':       'A table or list of items associated with the document.',
     'range':         '#Listing'}
  - {'label':         'page',
     'added':         '2014-01-14',
     'comment':       'The page number of the entry.',
     'domain':        '#Entry',
     'range':         'xsd:integer'}
  - {'label':         'target',
     'added':         '2014-01-14',
     'comment':       'The URI of the location this entry navigates to.',
     'domain':        '#Entry'}
  - {'label':         'type',
     'added':         '2014-01-14',
     'comment':       'A URI to the type of the listing or entry.'}
rdf: ['rdfxml']
---

# Overview

The [type](#type) associated with a [Listing](#Listing) describes what references
are being listed. The possible values include:

<table class="data">
<col width="50%"/><col width="50%"/>
<tr><th>URI</th><th>Description</th></tr>
<tr><td><a href="http://www.idpf.org/epub/vocab/structure/#landmarks">http://www.idpf.org/epub/vocab/structure/#landmarks</a></td><td>Quick Access Navigation</td></tr>
<tr><td><a href="http://www.idpf.org/epub/vocab/structure/#loa">http://www.idpf.org/epub/vocab/structure/#loa</a></td><td>List of Audio</td></tr>
<tr><td><a href="http://www.idpf.org/epub/vocab/structure/#loi">http://www.idpf.org/epub/vocab/structure/#loi</a></td><td>List of Illustrations</td></tr>
<tr><td><a href="http://www.idpf.org/epub/vocab/structure/#lot">http://www.idpf.org/epub/vocab/structure/#lot</a></td><td>List of Tables</td></tr>
<tr><td><a href="http://www.idpf.org/epub/vocab/structure/#lov">http://www.idpf.org/epub/vocab/structure/#lov</a></td><td>List of Videos</td></tr>
<tr><td><a href="http://www.idpf.org/epub/vocab/structure/#page-list">http://www.idpf.org/epub/vocab/structure/#page-list</a></td><td>Pages</td></tr>
<tr><td><a href="http://www.idpf.org/epub/vocab/structure/#toc">http://www.idpf.org/epub/vocab/structure/#toc</a></td><td>Table of Contents</td></tr>
</table>

The [type](#type) associated with an [Entry](#Entry) describes what the reference
being listed is when the associated [Listing](#Listing) is a list of landmarks.
The possible values include those from
[http://www.idpf.org/epub/vocab/structure/#](http://www.idpf.org/epub/vocab/structure/#).

For example:

	@prefix dc:   <http://purl.org/dc/elements/1.1/> .
	@prefix epv:  <http://www.idpf.org/epub/vocab/structure/#> .
	@prefix foaf: <http://xmlns.com/foaf/0.1/> .
	@prefix ref:  <http://reecedunn.co.uk/schema/2014/ref#> .

	<example.html> a foaf:Document ;
		ref:listing <example.html#toc> ;
		ref:listing <example.html#guide> .

	<example.html#toc> a ref:Listing ;
		ref:type epv:toc ;
		ref:entries ( _:nav1 _:nav2 _:nav3 ) ;
		dc:title "Table of Contents" .

	_:nav1 a ref:Entry ;
		ref:level 1 ;
		ref:page 3 ;
		ref:target <example.html#ch1> ;
		dc:title "Chapter 1" .

	_:nav2 a ref:Entry ;
		ref:level 2 ;
		ref:page 9 ;
		ref:target <example.html#ch1_1> ;
		dc:title "Chapter 1.1" .

	_:nav3 a ref:Entry ;
		ref:level 1 ;
		ref:page 15 ;
		ref:target <example.html#ch2> ;
		dc:title "Chapter 2" .

	<example.html#guide> a ref:Listing ;
		ref:type epv:landmarks ;
		ref:entries ( _:guide1 ) ;
		dc:title "Guide" .

	_:guide1 a ref:Entry .
		ref:level 1 ;
		ref:target <example.html#toc> ;
		epub:type epv:toc ;
		dc:title "Table of Contents" .
