[![Actions Status](https://github.com/lizmat/Raku-Elements/actions/workflows/linux.yml/badge.svg)](https://github.com/lizmat/Raku-Elements/actions) [![Actions Status](https://github.com/lizmat/Raku-Elements/actions/workflows/macos.yml/badge.svg)](https://github.com/lizmat/Raku-Elements/actions) [![Actions Status](https://github.com/lizmat/Raku-Elements/actions/workflows/windows.yml/badge.svg)](https://github.com/lizmat/Raku-Elements/actions)

NAME
====

Raku::Elements - The Elements of the Raku Programming Language

SYNOPSIS
========

```raku
use Raku::Elements;
```

DESCRIPTION
===========

The `Raku::Elements` distribution attempts to provide a programmatical interface to an alternate description of the Raku Programming Language, inspired by the "Periodic Table of the Operators" by *Mark Lentczner*.

It basically provides an (incomplete) overview of the features of the Raku Programming Language, sorted into groups in a way similar to the "Periodic Table of Elements".

Please note that this is still very much a work in progress: a lot of explanatory texts still need to be added. Pull requests are **very** welcome!

ELEMENTS
========

[`Addenoid`](#Addenoid) [`Bindoid`](#Bindoid) [`Buildoid`](#Buildoid) [`Complementary`](#Complementary) [`Declaroid`](#Declaroid) [`Differentoid`](#Differentoid) [`Equalish`](#Equalish) [`Expansive`](#Expansive) [`Feedoid`](#Feedoid) [`Flippant`](#Flippant) [`Hyperoid`](#Hyperoid) [`IOoid`](#IOoid) [`Incremental`](#Incremental) [`Junctive`](#Junctive) [`Mathematicals`](#Mathematicals) [`Metaoid`](#Metaoid) [`Methodic`](#Methodic) [`Multiplicoid`](#Multiplicoid) [`Orderoid`](#Orderoid) [`Quantoid`](#Quantoid) [`Rangoid`](#Rangoid) [`Reductoid`](#Reductoid) [`Replicant`](#Replicant) [`Rolific`](#Rolific) [`Sequoid`](#Sequoid) [`Shortoid`](#Shortoid) [`Stuboid`](#Stuboid) [`Talkoid`](#Talkoid) [`Termic`](#Termic) [`Throwoid`](#Throwoid) [`Timeoid`](#Timeoid) [`Topicoid`](#Topicoid)

Addenoid [↑](#ELEMENTS)
-----------------------

The Addenoid group contains all infix operators that could be considered doing addition or substraction functions.

### `+` numeric add

  * tags: infix

### `-` numeric subtract

  * alternates: `−`

  * tags: infix

### `~` string concatenation

  * tags: infix

### `+&` integer AND

  * tags: infix

### `+|` integer OR

  * tags: infix

### `+^` integer XOR

  * tags: infix

### `~&` string AND

  * tags: infix

### `~|` string OR

  * tags: infix

### `~^` string XOR

  * tags: infix

### `?&` boolean AND

  * tags: infix

### `?|` boolean OR

  * tags: infix

### `?^` boolean XOR

  * tags: infix

Bindoid [↑](#ELEMENTS)
----------------------

### `=` bind right value in left container

  * tags: infix macro

### `:=` bind right value to left lexpad entry

  * tags: infix macro

Buildoid [↑](#ELEMENTS)
-----------------------

### `=>` Pair constructor, named argument specification

  * tags: infix

### `,` List constructor

  * tags: infix

### `[ ]` Array constructor

  * tags: circumfix

### `{ }` Hash constructor

  * tags: circumfix

### `:{ }` Object Hash constructor

  * tags: circumfix

### `' '` literal string constructor

  * tags: syntax

### `" "` literal string constructor with interpolation

  * tags: syntax

### `< >` literal word list constructor

  * tags: syntax

### `<< >>` literal word list constructor with interpolation

  * alternates: `« »`

  * tags: syntax

### `$( )` turn argument(s) into an item

  * tags: syntax

### `item` turn argument(s) into an item

  * tags: sub method

### `@( )` turn argument(s) into a list

  * tags: syntax

### `list` turn argument(s) into a list

  * tags: sub method

### `%( )` turn argument(s) into a hash

  * tags: syntax

### `hash` turn argument(s) into a hash

  * tags: sub method

Complementary [↑](#ELEMENTS)
----------------------------

### `+` numerify

  * tags: prefix

### `+^` numeric complement

  * tags: prefix

### `-` numeric negation

  * alternates: `−`

  * tags: prefix

### `^` numeric from zero upto

  * tags: prefix

### `~` stringify

  * tags: prefix

### `?` boolify

  * tags: prefix

### `so` low precedence boolify

  * tags: prefix

### `!` boolean negation

  * alternates: `?^`

  * tags: prefix

### `not` low precedence boolean negation

  * tags: prefix

### `//` is defined

  * tags: prefix

### [`|` flatten args, slip iterable](https://docs.raku.org/syntax/%7C)

  * tags: prefix

The meaning of prefix `|` was expanded in 6.c to be beyond the use within signatures, to mean converting any iterable to a `Slip` (a special type of `list` that will always be iterated).

### `⚛` atomic integer access

  * tags: prefix

Declaroid [↑](#ELEMENTS)
------------------------

### `my` define something in MY:: scope

  * tags: syntax

### `our` define something in OUR:: scope

  * tags: syntax

### `anon` define something without storing it in a scope

  * tags: syntax

Differentoid [↑](#ELEMENTS)
---------------------------

### `before` generic less

  * tags: infix

### `<` numerically less

  * tags: infix

### `lt` alphabetically less

  * tags: infix

### `<=` numerically less or equal

  * alternates: `≤`

  * tags: infix

### `le` alphabetically less or equal

  * tags: infix

### `!=` numeric inequality

  * alternates: `≠`

  * tags: infix

### `ne` string inequality

  * tags: infix

### `>=` numerically more or equal

  * tags: infix

### `ge` alphabetically more or equal

  * tags: infix

### `>` numerically more

  * tags: infix

### `gt` alphabetically more

  * tags: infix

### `after` generic more

  * tags: infix

### `!(elem)` is not element in

  * alternates: `∉`

  * tags: infix

### `!(cont)` does not contain element

  * alternates: `∌`

  * tags: infix

### `!(<)` is not a strict quanthash subset

  * alternates: `⊄`

  * tags: infix

### `!(<=)` is not a quanthash subset

  * alternates: `⊈`

  * tags: infix

### `!(==)` quanthash inequality

  * alternates: `≢`

  * tags: infix

### `!(>=)` is not a quanthash superset

  * alternates: `⊉`

  * tags: infix

### `!(>)` is not a strict quanthash superset

  * alternates: `⊅`

  * tags: infix

Equalish [↑](#ELEMENTS)
-----------------------

### `~~` smart match

  * tags: infix

### `eqv` canonical equivalence

  * tags: infix

### `eq` string equality

  * tags: infix

### `==` numeric equality

  * tags: infix

### `=~=` numeric almost equal

  * alternates: `≅`

  * tags: infix

### `===` value identity

  * tags: infix

### `=:=` value identity without decontainerization

  * tags: infix

### `(elem)` is element in

  * alternates: `∈`

  * tags: infix

### `(cont)` contains element

  * alternates: `∋`

  * tags: infix

### `(<)` is strict quanthash subset

  * alternates: `⊂`

  * tags: infix

### `(<=)` is quanthash subset

  * alternates: `⊆`

  * tags: infix

### `(==)` quanthash equality

  * alternates: `≡`

  * tags: infix

### `(>=)` is quanthash superset

  * alternates: `⊇`

  * tags: infix

### `(>)` is strict quanthash superset

  * alternates: `⊃`

  * tags: infix

Expansive [↑](#ELEMENTS)
------------------------

### `i` the imaginary unit

  * tags: postfix

### [`ⁿ` integer literal exponentiation](https://docs.raku.org/routine/%2A%2A)

  * tags: postfix

So `$a²` is the same as `$a ** 2`, etc. Any of `⁰¹²³⁴⁵⁶⁷⁸⁹⁺¯¯` may be used.

Feedoid [↑](#ELEMENTS)
----------------------

### `==>` feed left to right

  * tags: infix

### `<==` feed right to left

  * tags: infix

Flippant [↑](#ELEMENTS)
-----------------------

### `?? !!` ternary logic

  * tags: syntax

### `ff` flip-flop inclusive

  * tags: infix macro

### `^ff` flip-flop excluding start

  * tags: infix macro

### `ff^` flip-flop excluding end

  * tags: infix macro

### `^ff^` flip-flop exclusive

  * tags: infix macro

### `fff` sed-like flip-flop inclusive

  * tags: infix macro

### `^fff` sed-like flip-flop excluding start

  * tags: infix macro

### `fff^` sed-like flip-flop excluding end

  * tags: infix macro

### `^fff^` sed-like flip-flop exclusive

  * tags: infix macro

Hyperoid [↑](#ELEMENTS)
-----------------------

### `>>op<<` produce operator results for equal lists

  * alternates: `»op« `

  * tags: infix syntax

### `>>op>>` produce operator results, left side leading

  * alternates: `»op»`

  * tags: infix syntax

### `<<op<<` produce operator results, right side leading

  * alternates: `«op«`

  * tags: infix syntax

### `<<op>>` produce operator results, longest side leading

  * alternates: `«op»`

  * tags: infix syntax

### [`Zop` produce operator result, shortest side leading](Default for `op` is `,`)

  * tags: infix syntax

### [`Xop` produce operator result for combinations](Default for `op` is `,`)

  * tags: infix syntax

IOoid [↑](#ELEMENTS)
--------------------

### `get` Read a line from `$*STDIN` / `$*ARGFILES`

  * tags: sub method

### `getc` Read a character from `$*STDIN` / `$*ARGFILES`

  * tags: sub method

### `read` Read bytes from IO::Handle

  * tags: method

### `write` Write bytes to IO::Handle

  * tags: method

### `slurp` Read entire contents of IO::Path / IO::Handle

  * tags: sub method

### `spurt` Replace content of IO::Path / IO::Handle with argument

  * tags: sub method

Incremental [↑](#ELEMENTS)
--------------------------

The atomic versions of -- and ++ were implemented for 6.d. They can only be applied to atomic integers.

### `++` pre-increment by 1

  * tags: prefix

### `⚛++` atomic pre-increment by 1

  * tags: prefix

### `--` pre-decrement by 1

  * tags: prefix

### `⚛--` atomic pre-decrement by 1

  * tags: prefix

### `++` post-increment by 1

  * tags: postfix

### `⚛++` atomic post-increment by 1

  * tags: postfix

### `--` post-decrement by 1

  * tags: postfix

### `⚛--` atomic post-decrement by 1

  * tags: postfix

Junctive [↑](#ELEMENTS)
-----------------------

### `&` junctive all

  * tags: infix

### `|` junctive any

  * tags: infix

### `^` junctive one

  * tags: infix

### `all` junctive all

  * tags: sub method

### `any` junctive any

  * tags: sub method

### `one` junctive one

  * tags: sub method

### `none` junctive none

  * tags: sub method

Mathematicals [↑](#ELEMENTS)
----------------------------

### `pi` The number π (3.1415...)

  * alternates: `π`

  * tags: term

### `tau` The number τ (6.2831...)

  * alternates: `τ`

  * tags: term

### `e` Euler's number (2.7182...)

  * alternates: `𝑒`

  * tags: term

### `i` The imaginary unit (sqrt(-1))

  * tags: term

### `Inf` Infinity

  * alternates: `∞`

  * tags: term

Metaoid [↑](#ELEMENTS)
----------------------

### `op=` store result of operator on left/right on left side

  * tags: infix syntax

### `Rop` produce result of operator with arguments reversed

  * tags: infix syntax

### `!op` negate result of iffy operator on arguments

  * tags: index syntax

Methodic [↑](#ELEMENTS)
-----------------------

Dotted postfix operators must be followed by a method name or a subroutine name prefixed with `&` (possibly fully qualified), a postfix operator, a prefix operator within `:<>`, or one of the postcircumfixes `( )` `[ ]` `{ }` `< >` `« »`.

### `.method` method call

  * tags: postfix

### `. method` dotty infix method call

  * tags: infix

### `.^method` meta-method call

  * tags: postfix

### `.?method` call method if any

  * tags: postfix

### `.*method` call all methods if any

  * tags: postfix

### `.+method` call all methods

  * tags: postfix

### `!method` private method call

  * tags: postfix

### `.=method` incovant mutating method call

  * tags: postfix

Multiplicoid [↑](#ELEMENTS)
---------------------------

### `div` integer divide

  * tags: infix

### `mod` integer modulus

  * tags: infix

### `gcd` greatest common divisor

  * tags: infix

### `lcm` lowest common multiple

  * tags: infix

### `*` multiply

  * alternates: `×`

  * tags: infix

### `/` divide

  * alternates: `÷`

  * tags: infix

### `**` exponentiation

  * tags: infix

### `%` modulus

  * tags: infix

### `%%` is divisible

  * tags: infix

### `+<` integer shift left

  * tags: infix

### `+>` integer shift right

  * tags: infix

Orderoid [↑](#ELEMENTS)
-----------------------

Return an `Order` enum

### `cmp` equivalence order comparison

  * tags: infix

### `<=>` numerical order comparison

  * tags: infix

### `leg` string order comparison

  * tags: infix

Quantoid [↑](#ELEMENTS)
-----------------------

### `∅` empty Set

  * tags: term

### `(|)` quanthash union

  * alternates: `∪`

  * tags: infix

### `(+)` quanthash addition

  * alternates: `⊎`

  * tags: infix

### `(.)` quanthash multiplication

  * alternates: `⊍`

  * tags: infix

### `(-)` quanthash difference

  * alternates: `∖`

  * tags: infix

### `(^)` quanthash symmetric difference

  * alternates: `⊖`

  * tags: infix

Rangoid [↑](#ELEMENTS)
----------------------

### `..` range inclusive

  * tags: infix

### `^..` range excluding start

  * tags: infix

### `..^` range excluding end

  * tags: infix

### `^..^` range exclusive

  * tags: infix

### `minmax` range including min and max value

  * tags: infix

Reductoid [↑](#ELEMENTS)
------------------------

### `minmax` reduce values to Range of min and max value

  * tags: infix sub method

### `min` reduce values to smallest value

  * tags: infix sub method

### `max` reduce values to largest value

  * tags: infix sub method

### `[op]` reduce using given infix operator

  * tags: prefix syntax

### `[\op]` produce steps of reduction using given infix operator

  * tags: prefix syntax

Replicant [↑](#ELEMENTS)
------------------------

### `x` string repetition

  * tags: infix

### `xx` item repetition

  * tags: infix

Rolific [↑](#ELEMENTS)
----------------------

### `does` mutating role mixin

  * tags: infix

### `but` cloning role mixin

  * tags: infix

Sequoid [↑](#ELEMENTS)
----------------------

### `...` smart sequence inclusive

  * tags: infix

### `^...` smart sequence excluding start

  * tags: infix

### `...^` smart sequence excluding end

  * tags: infix

### `^...^` smart sequence exclusive

  * tags: infix

Shortoid [↑](#ELEMENTS)
-----------------------

### `&&` high precedence logical AND

  * tags: infix macro

### `and` low precedence logical AND

  * tags: infix macro

### `||` high precedence logical OR

  * tags: infix macro

### `or` low precedence logical OR

  * tags: infix macro

### `^^` high precedence logical XOR

  * tags: infix macro

### `xor` low precedence logical XOR

  * tags: infix macro

### `//` high precedence is defined OR

  * tags: infix macro

### `notandthen` Empty if first defined, else last

  * tags: infix macro

Stuboid [↑](#ELEMENTS)
----------------------

### `???` warn about stub code executed

  * tags: term macro

### `...` fail with stub code executed error

  * tags: term macro

### `!!!` die with stub code executed error

  * tags: term macro

Talkoid [↑](#ELEMENTS)
----------------------

### `print` stringify argument(s), write to `$*STDOUT`

  * tags: sub method

### `say` create gist of argument(s), add newline, write to `$*STDOUT`

  * tags: sub method

### `put` stringify argument(s), add newline, write to `$*STDOUT`

  * tags: sub method

### `note` create gist of argument(s), add newline, write to `$*STDERR`

  * tags: sub method

Termic [↑](#ELEMENTS)
---------------------

### `self` invocant in method

  * tags: term

### `rand` pseudo-random Num in range 

  * tags: term

Throwoid [↑](#ELEMENTS)
-----------------------

### `die` halt execution, or be caught by CATCH

  * tags: sub

### `warn` show error message, or be caught by CONTROL

  * tags: sub

### `fail` return from Routine with Failure, or be caught by CATCH

  * tags: sub

### `return` return from Routine with given value, or be caught by CONTROL

  * tags: sub method

### `next` proceed with next iteration, or be caught by CONTROL

  * tags: sub

### `redo` restart current iteration, or be caught by CONTROL

  * tags: sub

### `last` stop iterating, or be caught by CONTROL

  * tags: sub

### `proceed` continue with next when/default, or be caught by CONTROL

  * tags: sub

### `succeed` continue after last when/default, or be caught by CONTROL

  * tags: sub

### `done` call "done" callback on taps, or be caught by CONTROL

  * tags: sub

### `emit` emit given value to active supply, or be caught by CONTROL

  * tags: sub method

Timeoid [↑](#ELEMENTS)
----------------------

### `now` Instant of current time

  * tags: term

### `time` POSIX time in seconds

  * tags: term

### `nano` POSIX time in nano seconds

  * tags: term

Topicoid [↑](#ELEMENTS)
-----------------------

### `given` topicalize argument for scope

  * tags: syntax

### `when` if smartmatched topicalize argument for scope

  * tags: syntax

### `andthen` topicalize left for right thunk

  * tags: infix thunky

### `orelse` low precedence if defined OR, topicalizing left for right thunk

  * tags: infix thunky

CLASSES
=======

Raku::Elements
--------------

The programmatical interface to the elements of the Raku Programming Language.

### elements

A `Map` with the elements of the Raku Programming Language. The key represents either the name of an `Raku::Element`, or one of its alternates. The value is a `List` of one or more `Raku::Element` objects that share the same name (but may have different tags).

### groups

A `Map` with `Raku::Group` object, keyed to their name.

Raku::Group
-----------

The information about an element group.

### name

The name of the element group.

### description

The description of the element group (if any)

### elements

A list of `Raku::Element` objects belonging to this group.

Raku::Element
-------------

### name

The name of the element. This may be non-alphabetic, specifically in the case of operators such as `+`.

### alternates

Alternate names of the element, for instance an Unicode version versus an ASCII version of an operator, such as `∈` as al alternate name for `(elem)`. Usually empty.

### tags

A list of tags that apply to this element, e.g. `infix` for an infix operator. Has at least one element.

### tagline

The tagline of the element: a one-line description.

### url

A URL for more information about this element.

### description

A more general description of the element. Optional.

AUTHOR
======

Elizabeth Mattijsen <liz@raku.rocks>

Source can be located at: https://github.com/lizmat/Raku-Elements . Comments and Pull Requests are welcome.

If you like this module, or what I’m doing more generally, committing to a [small sponsorship](https://github.com/sponsors/lizmat/) would mean a great deal to me!

RESOURCE FILES
==============

This distribution keeps all of the text files as resources, to be read when they are needed (as opposed to keeping them all in the binary).

The `resources` directory contains a `groups` directory that contains all of the information for each group in a separat file.

Group file format
-----------------

The format of the group file is very simple line based.

All entries are separated by an empty line. The first line contains the names of the element separated by the string `| ` (space, pipe, space). There must be at least one name. The first name becomes the `name` of the element, the others become `aliases`.

The second line contains theo tags as space separated words. There must be at least a single tag.

The third line contains the tagline of the element.

The fourth line (if not empty) contains the URL for more information,

Any other lines until an empty line, contains the description of the element.

If the first line is empty, then the rest of the file contains the description of the group (so you can recognize the description as the text after the first 2 empty lines). If there are no 2 empty lines, then there is no description for the group.

COPYRIGHT AND LICENSE
=====================

Copyright 2025 Elizabeth Mattijsen

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

