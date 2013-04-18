---
layout: post
title: "Refactoring: Part 1"
description: Refactoring code bases to maintain healthy projects and implementing new features.
keywords: refactoring, refactor, testing, tests, programming
author: { name: Reece H. Dunn , foaf: /about#me }
category: programming
breadcrumbs:
  - /index.html
---

Refactoring code is where the code is modified such that the behaviour of the
code does not change (modulo bugs). This differs from rewriting code where the
behaviour of the code changes.

This is an important distinction and forms the cornerstone of the benefits
refactoring offers. But why refactor code in the first place?

As a codebase evolves, it grows in complexity. New features and functionality
along with bug fixes all add to this complexity. The initial design may not
be suited to supporting the new requirements, or interfacing with a new
library or component can prove a hinderance over time. Partially migrated
code adds to the drag in implementing new requirements and fixing bugs.

In time, all of this builds up and catches up with you to the point where
it becomes increasingly difficult to maintain the project. It can make
the project take longer to build, by building unused functions, classes
and files. It can also make understanding the project for newcomers harder
to grasp.

This is where refactoring comes in: by constantly cleaning up the codebase
it becomes easier to maintain, understand and add new functionality.

# Rule 1: Each Change Must Be Self-Contained

The idea here is that each commit to the version control system that is
associated with refactoring must perform a single refactoring step and
not contain any other changes.

This makes it easier for a reviewer to check the code. More importantly,
if a bug is introduced it makes it easier to identify the problem by
performing a bisection (iterating between good and bad revisions to
identify the faulty commit).

If during a change you make a mistake that you cannot recover from or
you discover the approach is not working, the change can easily be
discarded without losing too much work.

# Rule 2: Refactor Toward a Goal

Refactoring operations are by their nature isomorphic. That is: for each
refactoring that can be performed there is an inverse refactoring that
undoes the change. If code is refactored at random -- choosing each
operation locally, without looking at the bigger picture -- the resulting
codebase can end up harder to maintain than the original code.

Refactoring should always be performed with an understanding of the bigger
picture, what the ending design should look like (even if it is a rough
idea).

The Cainteoir Engine has undergone several large-scale refactorings such as
using the shared mine-info database for identifying file types
([issue 11](https://github.com/rhdunn/cainteoir-engine/issues/11)) and moving
from an event-based to reader-based document processing model
([issue 9](https://github.com/rhdunn/cainteoir-engine/issues/9)). All of these
have been performed with a goal in mind on how the new code should look, even
if the end result is slightly different than originally planned.

# Rule 3: Refactor Under Test

It is important to have the code you are refactoring tested. This will help
pick up regressions early, giving you confidence that the code still works as
expected. With self-contained changes, it also makes it easy to identify where
the issue is thus speeding up the fix.

If the tests cannot be fixed so they all pass, it is then easy to discard the
current refactoring and start over.

For code that does not have any existing tests, refactoing steps should be
applied to first add tests covering the code. Once the code is sufficiently
tested, it can then be refactored.

Note that the tests should be refactored along with the code as the interfaces
and functions change. This does not mean that failing tests or tests that are
difficult to change should be removed, unless the tests no longer apply (e.g.
if the code under test has been removed).

# Rule 4: Refactor Early and Often

It is important to start refactoring early in a project's development and to
continually refactor over the project's lifetime. This is to ensure that the
code remains free of cruft and dead weight, keeping it in optimal condition.

If you do not do this, the code risks deteriorating to the point where it
becomes hard to maintain. Once a codebase is in this state it will take longer
to get it to its optimal condition.

# Rule 5: When Removing Code, Remove All Of It

This does not mean to remove all the code in a project. It means if removing
a function, class, interface or dialog, all associated code should be removed.

Consider a dialog. There are various components that make up the dialog -- the
layout, the implementation and associated strings. All of these should be
removed when removing the dialog at the point at which the dialog is removed.

If an interface is only implemented by a single class, removing that class
should also remove the interface.

Doing this at the same time makes it easier to remove all parts at once. Later
on, it becomes harder to track down the dead code and adds more stuff that
needs to be maintained.
