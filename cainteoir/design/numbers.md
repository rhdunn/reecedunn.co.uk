---
layout: default
_copyright_: "Copyright (C) 2011-2013 Reece H. Dunn"
_license_: "CC-BY-SA 3.0"
title: Numbers
description: How numbers are spoken, including very large numbers.
keywords: text to speech, tts, cainteoir, numbers, short scale, long scale
parent: /cainteoir/design/index.html
references:
  - {id:    ref1,
     title: "Comparison of American and British English: Numbers",
     href:  "http://en.wikipedia.org/wiki/American_and_British_English_differences#Numbers"}
  - {id:    ref2,
     title: "Names of Large Numbers",
     href:  "http://en.wikipedia.org/wiki/Names_of_large_numbers"}
  - {id:    ref3,
     title: "Names for Large Numbers",
     href:  "http://www.unc.edu/~rowlett/units/large.html"}
  - {id:    ref4,
     title: "Big Numbers By N in English",
     href:  "http://home.kpn.nl/vanadovv/BignumbyN.html"}
  - {id:    ref5,
     title: "Big Numbers By N in Dutch",
     href:  "http://home.kpn.nl/vanadovv/Bignum.html"}
---

Numbers can be written in many different scripts, such as Latin, Roman,
Japanese, Malayalam, Braille and Ogham. Some of these scripts may have
special rules for processing them (e.g. how to interpret the tens, hundreds
and thousands).

The eSpeak text-to-speech engine is poor at handling numbers greater than
billion (it pronounces `1 trillion` as `1 thousand billion` and then
reverts to speaking the numbers individually). It can handle numbers with
commas in better (e.g. `1,000`), pronouncing `1 quadrillion` as
`1 million billion`, but pronounces `1 quintillion` incorrectly as
`1 million`!

The rsynth text-to-speech engine generates words as part of the number
conversion algorithm that feed into the grapheme-to-phoneme rules,
whereas eSpeak directly generates phonemes. The eSpeak approach is
harder to maintain because accent/dialect variations need to be applied
to the number rules in addition to their associated words and the
phoneme sequences are harder to read.

# Algorithm

The Cainteoir Text-to-Speech engine uses the following algorithm when
processing numbers:

## 1. Normalization

The idea here is to identify the number form being used via the script and
codepoints that make up the number. This identification results in a set
of number processing rules to be run through the number to convert it to
its ASCII form (e.g. converting `VI` to `6`).

After this step, all numbers will be in their ASCII form irrespective of
the way they were written in the source text. The rationale behind this
is that it makes the subsequent processing easier.

## 2. Grouping

The pronunciation rules for different languages use groups of digits,
where the length of the groups vary on the language. For Ethiopic,
groups of 2 digits are used; for Chinese, Japanese and Korean, groups
of 4 digits are used; for Western languages, groups of 3 digits are
used.

The number is split into blocks reading right-to-left to ensure that
each block has the correct number of digits. Also, each block is
associated with the rank (block number) of that block.

The rationale behind this is that it then allows the correct pronunciation
for numbers to be constructed by reading the processed blocks left-to-right.

## 3. Word Generation

Reading the number and rank of each block, moving left-to-right, the
words to pronounce each block are constructed from word rules associated
with the specified locale.

These rules handle regional differences (e.g. `twelve thousand and sixty three`
in British English and `twelve thousand sixty three` in American English<sup><a href="#ref1">1</a></sup>),
as well as language differences.

The different word lists used to represent each number triple varies
depending on the number scale used. For example, for `1000000000` (`10^9`):

1.  *Short Scale* used in US and modern British English, uses `one billion`<sup><a href="#ref2">2</a></sup>.
2.  *British Long Scale* used in traditional British English, uses `one thousand million`<sup><a href="#ref2">2</a></sup>.
3.  *European Long Scale* used in Continental Europe, uses `one milliard`<sup><a href="#ref2">2</a></sup>.
4.  *Greek Scale* as proposed by Russ Rowlett, uses `one gillion`<sup><a href="#ref3">3</a></sup>.

**NOTE:** These systems can represent very large numbers over `10^99` in size<sup><a href="#ref4">4</a>, <a href="#ref5">5</a></sup>.
