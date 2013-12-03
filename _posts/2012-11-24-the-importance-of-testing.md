---
layout: post
_copyright_: "Copyright (C) 2012-2013 Reece H. Dunn"
_license_: "CC-BY-SA 3.0"
title: "The Importance of Testing"
description: An analysis of the benefits of having a good test infrastructure.
keywords: testing, tests, dogfooding, unit test, integration test, fuzz test, programming, tdd, test driven development, bdd, behavioural driven development
author: { name: Reece H. Dunn , foaf: /about#me }
category: programming
parent: /index.html
alias:
  - "/cainteoir/tts/2012/11/24/the-importance-of-testing.html"
---

Having a good test infrastructure in place is very important to ensuring that
the product you are developing works as intended. This applies throughout the
entire product lifecycle and covers the process of dealing with any defects
encountered.

Programatic tests have the following key benefits:

1.  They provide evidence that the code behaves as expected. This is not
    saying they are foolproof: the tests can be broken or missing checks
    for specific code paths.

2.  They serve as extra documentation. The tests are not a replacement for
    documentation, but instead help verify the documented behaviour over
    the lifetime of the project.

3.  They prevent the behaviour of the code from regressing. This is
    provided that you do not change the tests to use the new behaviour,
    unless the new behaviour is intentional (e.g. implementing a method
    that was previously generating a not implemented error that was
    tested for).

4.  They give confidence to perform refactoring or code rewrites.

5.  They help prevent integration issues when code is combined from
    different teams. For example if an external component/plugin is
    being produced, a verifier can be run on that module to ensure
    it behaves correctly.

When designing tests, it is a good idea to think of the error cases as
well as the success cases. In general, this can cover:

1.  The semantics of the type. That is, what is the thing being tested?
    Is it a telephone number? An internet address?

2.  The visual representation of the type. This is applicable to how
    the type is presented to the user. That is, it is presented as a
    text input field? A numeric field?

3.  The class of the type. This is the generic type of the value being
    stored. Is it a string? An integer? A complex number?

4.  The in-memory type. This is what the program sees the type as. Is
    it a C-style string? An STL string? A Windows COM BSTR? These all
    have different memory layouts.

5.  The serialization type. This is how the type is persisted to disk.
    Is it as JSON? XML? RDF/XML? Turtle? Binary? Is endianness important?
    Is character encoding?

All of these have their own sets of valid and invalid values, including
the range of valid values. These provide excellent sources of test cases.

Test Driven Development (TDD) and Behavioural Driven Development (BDD) are
good developemnt practices to get use to. They slow down initial development,
but help ensure that the code has good test coverage, allowing you to detect
issues early in the development cycle. They also help with designing the APIs
as you get to use them in the tests. This helps understanding if the APIs work
earlier on and ensures they are testable.

It is also good practice to add a test case for every defect found in the
system (either internally during testing or externally by a customer). This
helps ensure that those bugs are not reintroduced later on.

Dogfooding is where you actively use the product you are developing. This is
useful as it gives you a wider test coverage early on. It can also help with
usability testing as you will know which areas annoy you.

Fuzz testing is used in security testing of file and data processors (on disk
or over a network) where they are passed valid data that has been modified in
a random way, usually making it invalid. This is aimed at breaking the
processor by feeding it garbage. If the processor does break, the fuzz tester
should report the file the processor broke on so the processor can be fixed.
This is important as these breakages can lead to security exploits used by
malware.

A useful technique when testing file and data processors is to create a
program where you can pass the data as a file and have the program print
the information extracted from the data in an easy to consume text format.
If the application being developed does this, you can use that directly.
It is easy to add new test cases using this approach without modifying
the code. For example, I use this technique to test processing the
different file formats in the Cainteoir Text-to-Speech engine. NOTE:
This helps with fuzz testing as it provides access to the data processor.

When performing manual tests, the goal is not to run test scripts. That is
what automated tests are for. Manual tests are more adhoc and exploratory,
trying the product in ways not covered by the automated tests.
