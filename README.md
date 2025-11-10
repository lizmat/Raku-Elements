[![Actions Status](https://github.com/lizmat/Raku-Elements/actions/workflows/linux.yml/badge.svg)](https://github.com/lizmat/Raku-Elements/actions) [![Actions Status](https://github.com/lizmat/Raku-Elements/actions/workflows/macos.yml/badge.svg)](https://github.com/lizmat/Raku-Elements/actions) [![Actions Status](https://github.com/lizmat/Raku-Elements/actions/workflows/windows.yml/badge.svg)](https://github.com/lizmat/Raku-Elements/actions)

NAME
====

Raku::Elements - The Elements of the Raku Programming Language

SYNOPSIS
========

```raku
use Raku::Elements;

my $elements = Raku::Elements.new;
```

DESCRIPTION
===========

The `Raku::Elements` distribution attempts to provide a programmatical interface to an alternate description of the Raku Programming Language, inspired by the "Periodic Table of the Operators" by *Mark Lentczner*.

It basically provides an (incomplete) overview of the features of the Raku Programming Language, sorted into groups in a way similar to the "Periodic Table of Elements".

Please note that this is still very much a work in progress: a lot of explanatory texts still need to be added. Pull requests are **very** welcome!

ELEMENTS
========

[`Addenoid`](#Addenoid) [`Bindoid`](#Bindoid) [`Buildoid`](#Buildoid) [`Declaroid`](#Declaroid) [`Differentoid`](#Differentoid) [`Equalish`](#Equalish) [`Expansive`](#Expansive) [`Feedoid`](#Feedoid) [`Flippant`](#Flippant) [`Hyperoid`](#Hyperoid) [`IOoid`](#IOoid) [`Incremental`](#Incremental) [`Junctive`](#Junctive) [`Mathematicals`](#Mathematicals) [`Metaoid`](#Metaoid) [`Methodic`](#Methodic) [`Multiplicoid`](#Multiplicoid) [`Normaloid`](#Normaloid) [`Orderoid`](#Orderoid) [`Quantoid`](#Quantoid) [`Rangoid`](#Rangoid) [`Reductoid`](#Reductoid) [`Replicant`](#Replicant) [`Rolific`](#Rolific) [`Sequoid`](#Sequoid) [`Shortoid`](#Shortoid) [`Stuboid`](#Stuboid) [`Talkoid`](#Talkoid) [`Termic`](#Termic) [`Throwoid`](#Throwoid) [`Timeoid`](#Timeoid) [`Topicoid`](#Topicoid)

Addenoid
--------

The Addenoid group contains all infix operators that could be considered doing addition or substraction functions.

### `+` numeric add

  * infix

### `-` numeric subtract

  * alternates: `−`

  * infix

### `~` string concatenation

  * infix

### `+&` integer AND

  * infix

### `+|` integer OR

  * infix

### `+^` integer XOR

  * infix

### `~&` string AND

  * infix

### `~|` string OR

  * infix

### `~^` string XOR

  * infix

### `?&` boolean AND

  * infix

### `?|` boolean OR

  * infix

### `?^` boolean XOR

  * infix

Bindoid
-------

The Bindoid group contains all macro-ish infix operators that perform raw binding, possibly into a container (which would make it an assignment).

### `=` bind right value in left container

  * infix macro

### `:=` bind right value to left lexpad entry

  * infix macro

Buildoid
--------

The Buildoid group contains all elements that convert a given set of arguments into one of a Scalar, Pair, Positional or Associative object.

### `=>` Pair constructor, named argument specification

  * infix

### `,` List constructor

  * infix

### `[ ]` Array constructor

  * circumfix

### `{ }` Hash constructor

  * circumfix

### `:{ }` Object Hash constructor

  * circumfix

### `' '` literal string constructor

  * syntax

### `" "` literal string constructor with interpolation

  * syntax

### `< >` literal word list constructor

  * syntax

### `<< >>` literal word list constructor with interpolation

  * alternates: `« »`

  * syntax

### `$( )` turn argument(s) into an item

  * syntax

### `item` turn argument(s) into an item

  * sub method

### `@( )` turn argument(s) into a list

  * syntax

### `list` turn argument(s) into a list

  * sub method

### `%( )` turn argument(s) into a hash

  * syntax

### `hash` turn argument(s) into a hash

  * sub method

Declaroid
---------

The Declaroid group contains the syntax for indicating the scope of an element to be defined.

### `my` define something in MY:: scope

  * syntax

### `our` define something in OUR:: scope

  * syntax

### `anon` define something without storing it in a scope

  * syntax

Differentoid
------------

The Differentoid group contains the infix operators that return True if the compared elements are different in a way, and False if they are considered equal in that way.

### `before` generic less

  * infix

### `<` numerically less

  * infix

### `lt` alphabetically less

  * infix

### `<=` numerically less or equal

  * alternates: `≤`

  * infix

### `le` alphabetically less or equal

  * infix

### `!=` numeric inequality

  * alternates: `≠`

  * infix

### `ne` string inequality

  * infix

### `>=` numerically more or equal

  * infix

### `ge` alphabetically more or equal

  * infix

### `>` numerically more

  * infix

### `gt` alphabetically more

  * infix

### `after` generic more

  * infix

### `!(elem)` is not element in

  * alternates: `∉`

  * infix

### `!(cont)` does not contain element

  * alternates: `∌`

  * infix

### `!(<)` is not a strict quanthash subset

  * alternates: `⊄`

  * infix

### `!(<=)` is not a quanthash subset

  * alternates: `⊈`

  * infix

### `!(==)` quanthash inequality

  * alternates: `≢`

  * infix

### `!(>=)` is not a quanthash superset

  * alternates: `⊉`

  * infix

### `!(>)` is not a strict quanthash superset

  * alternates: `⊅`

  * infix

Equalish
--------

The Equalish group contains the infix operators that return True if the compared elements are considered equal in a way, and False if they are considered different in that way.

### `~~` smart match

  * infix

### `eqv` canonical equivalence

  * infix

### `eq` string equality

  * infix

### `==` numeric equality

  * infix

### `=~=` numeric almost equal

  * alternates: `≅`

  * infix

### `===` value identity

  * infix

### `=:=` value identity without decontainerization

  * infix

### `(elem)` is element in

  * alternates: `∈`

  * infix

### `(cont)` contains element

  * alternates: `∋`

  * infix

### `(<)` is strict quanthash subset

  * alternates: `⊂`

  * infix

### `(<=)` is quanthash subset

  * alternates: `⊆`

  * infix

### `(==)` quanthash equality

  * alternates: `≡`

  * infix

### `(>=)` is quanthash superset

  * alternates: `⊇`

  * infix

### `(>)` is strict quanthash superset

  * alternates: `⊃`

  * infix

Expansive
---------

The Expansive group contains the postfix operators that expand on numeric values.

### [`i` numeric multiplication with the imaginary unit (√-1)](https://docs.raku.org/type/Complex#postfix_i)

  * postfix

`4i` is the same as `0+4i`. Needs grouping for variables `($a)i` because otherwise the `i` will be considered part of the variable name.

### [`ⁿ` numeric literal integer exponentiation](https://docs.raku.org/routine/%2A%2A)

  * postfix

So `$a²` is the same as `$a ** 2`, etc. Any of `⁰¹²³⁴⁵⁶⁷⁸⁹⁺¯¯` may be used.

Feedoid
-------

The Feedoid group contains the operators that provide an alternate syntax for creating a sequence of operations, where the result of one such operation become the argument(s) for the next operation.

### [`==>` feed left to right](https://docs.raku.org/language/operators#infix_==%3E)

  * infix

`(1,2,3,4) ==> sum() ==> say()` as opposed to `say sum (1,2,3,4)` or `(1,2,3,4).sum.say`.

### [`<==` feed right to left](https://docs.raku.org/language/operators#infix_%3C==)

  * infix

`say() <== sum() <== (1,2,3,4)` as opposed to `say sum (1,2,3,4)` or `(1,2,3,4).sum.say`.

Flippant
--------

The Flippant group contains the operators that produce one or the other value, depending on some condition.

### `?? !!` ternary logic

  * syntax

### `ff` flip-flop inclusive

  * infix macro

### `^ff` flip-flop excluding start

  * infix macro

### `ff^` flip-flop excluding end

  * infix macro

### `^ff^` flip-flop exclusive

  * infix macro

### `fff` sed-like flip-flop inclusive

  * infix macro

### `^fff` sed-like flip-flop excluding start

  * infix macro

### `fff^` sed-like flip-flop excluding end

  * infix macro

### `^fff^` sed-like flip-flop exclusive

  * infix macro

Hyperoid
--------

The Hyperoid group contains the operators that take the name of an infix operator and repeatedly perform that operator on the provided argument list(s).

### `>>op<<` produce operator results for equal lists

  * alternates: `»op« `

  * infix syntax

### `>>op>>` produce operator results, left side leading

  * alternates: `»op»`

  * infix syntax

### `<<op<<` produce operator results, right side leading

  * alternates: `«op«`

  * infix syntax

### `<<op>>` produce operator results, longest side leading

  * alternates: `«op»`

  * infix syntax

### [`Zop` produce operator result, shortest side leading](Default for `op` is `,`)

  * infix syntax

### [`Xop` produce operator result for combinations](Default for `op` is `,`)

  * infix syntax

IOoid
-----

The IOoid group contains the functions that are available for input / output of data.

### `get` Read a line from `C<$*STDIN>` / `C<$*ARGFILES>`

  * sub method

### `getc` Read a character from `C<$*STDIN>` / `C<$*ARGFILES>`

  * sub method

### `read` Read bytes from an `IO::Handle`

  * method

### `write` Write bytes to an `IO::Handle`

  * method

### `slurp` Read entire contents of `IO::Path` / `IO::Handle`

  * sub method

### `spurt` Replace content of `IO::Path` / `IO::Handle` with argument

  * sub method

Incremental
-----------

The Incremental group contains the infix operators for incrementing / decrementing (usually) numeric values.

The atomic versions of `--` and `++` were implemented for 6.d. They can only be applied to atomic integers.

### `++` pre-increment by 1

  * prefix

### `⚛++` atomic pre-increment by 1

  * prefix

### `--` pre-decrement by 1

  * prefix

### `⚛--` atomic pre-decrement by 1

  * prefix

### `++` post-increment by 1

  * postfix

### `⚛++` atomic post-increment by 1

  * postfix

### `--` post-decrement by 1

  * postfix

### `⚛--` atomic post-decrement by 1

  * postfix

Junctive
--------

The Junctive group contains the infix operators and the functions that produce `Junction` objects.

### `&` junctive all

  * infix

### `|` junctive any

  * infix

### `^` junctive one

  * infix

### `all` junctive all

  * sub method

### `any` junctive any

  * sub method

### `one` junctive one

  * sub method

### `none` junctive none

  * sub method

Mathematicals
-------------

The Mathematicals group contains the mathematical terms that are provided by the core.

### `pi` The number π (3.1415...)

  * alternates: `π`

  * term

### `tau` The number τ (6.2831...)

  * alternates: `τ`

  * term

### `e` Euler's number (2.7182...)

  * alternates: `𝑒`

  * term

### `i` The imaginary unit (√-1)

  * term

### `Inf` Infinity

  * alternates: `∞`

  * term

Metaoid
-------

The Metaoid group contains the meta operators that take an infix operator and do something special with its result or its arguments.

### `op=` store result of infix operator on left side

  * infix syntax

### `Rop` produce result of infix operator with arguments reversed

  * infix syntax

### `!op` negate result of iffy infix operator on arguments

  * index syntax

Methodic
--------

The Methodic group contains the ways a method can be called on an object.

Dotted postfix operators must be followed by a method name or a subroutine name prefixed with `&` (possibly fully qualified), a postfix operator, a prefix operator within `:<>`, or one of the postcircumfixes `( )` `[ ]` `{ }` `< >` `« »`.

### `.method` method call

  * postfix

### `. method` dotty infix method call

  * infix

### `.^method` meta-method call

  * postfix

### `.?method` call method if any

  * postfix

### `.*method` call all methods if any

  * postfix

### `.+method` call all methods

  * postfix

### `!method` private method call

  * postfix

### `.=method` incovant mutating method call

  * postfix

Multiplicoid
------------

The Multiplicoid group contains all infix operators that are related to multiplication in some way.

### `div` integer divide

  * infix

### `mod` integer modulus

  * infix

### `gcd` greatest common divisor

  * infix

### `lcm` lowest common multiple

  * infix

### `*` multiply

  * alternates: `×`

  * infix

### `/` divide

  * alternates: `÷`

  * infix

### `**` exponentiation

  * infix

### `%` modulus

  * infix

### `%%` is divisible

  * infix

### `+<` integer shift left

  * infix

### `+>` integer shift right

  * infix

Normaloid
---------

The Normaloid group contains the operators that somehow normalize the given arguments into something else, either in time or in value.

### `+` numerify

  * prefix

### `+^` numeric complement

  * prefix

### `-` numeric negation

  * alternates: `−`

  * prefix

### `^` numeric from zero upto

  * prefix

### `~` stringify

  * prefix

### `?` boolify

  * prefix

### `so` low precedence boolify

  * prefix

### `!` boolean negation

  * alternates: `?^`

  * prefix

### `not` low precedence boolean negation

  * prefix

### `//` is defined

  * prefix

### [`|` flatten args, slip iterable](https://docs.raku.org/syntax/%7C)

  * prefix

The meaning of prefix `|` was expanded in 6.c to be beyond the use within signatures, to mean converting any iterable to a `Slip` (a special type of `list` that will always be iterated).

### [`⚛` atomic integer access](https://docs.raku.org/routine/⚛)

  * prefix

Ensures the latest update of a value in the target is produced in multi-threaded situations.

Orderoid
--------

The Orderoid group contains the infix operators that return an `Order` value.

### `cmp` equivalence order comparison

  * infix

### `<=>` numerical order comparison

  * infix

### `leg` string order comparison

  * infix

Quantoid
--------

The Quantoid group contains the functions that return a `QuantHash` (a `Set`, `SetHash`, `Bag`, `BagHash`, `Mix` or `MixHash` given any set or arguments.

### `∅` empty Set

  * term

### `(|)` quanthash union

  * alternates: `∪`

  * infix

### `(+)` quanthash addition

  * alternates: `⊎`

  * infix

### `(.)` quanthash multiplication

  * alternates: `⊍`

  * infix

### `(-)` quanthash difference

  * alternates: `∖`

  * infix

### `(^)` quanthash symmetric difference

  * alternates: `⊖`

  * infix

Rangoid
-------

The Rangoid group contains the infix operators that produce a `Range`.

### `..` range inclusive

  * infix

### `^..` range excluding start

  * infix

### `..^` range excluding end

  * infix

### `^..^` range exclusive

  * infix

### `minmax` range including min and max value

  * infix

Reductoid
---------

The Reductoid group contains the functions that reduce a given set of arguments into a single value (or produces the steps to produce that value).

### `min` reduce values to smallest value

  * infix sub method

### `max` reduce values to largest value

  * infix sub method

### `[op]` reduce using given infix operator

  * prefix syntax

### `[\op]` produce steps of reduction using given infix operator

  * prefix syntax

Replicant
---------

The Replicant group contains the infix operators that reproduce the left value repeatedly.

### `x` string repetition

  * infix

### `xx` item repetition

  * infix thunky

Rolific
-------

The Rolific group 

Sequoid
-------

The Sequoid group contains the infix operators that create a smart sequence (one that inspect the arguments and interpretes special, almost magic, meaning).

### `...` smart sequence inclusive

  * infix

### `^...` smart sequence excluding start

  * infix

### `...^` smart sequence excluding end

  * infix

### `^...^` smart sequence exclusive

  * infix

Shortoid
--------

The Shortoid group contains the infixish macros that exhibit short-cicuiting behaviour, where the right hand side will **not** be evaluated if a certain condition on the left hand side was met.

### `&&` high precedence logical AND

  * infix macro

### `and` low precedence logical AND

  * infix macro

### `||` high precedence logical OR

  * infix macro

### `or` low precedence logical OR

  * infix macro

### `^^` high precedence logical XOR

  * infix macro

### `xor` low precedence logical XOR

  * infix macro

### `//` high precedence is defined OR

  * infix macro

### `notandthen` Empty if first defined, else last

  * infix macro

Stuboid
-------

The Stuboid group contains the functionality that can be used to indicate that code will need to be added at a later time (e.g. in the development cycle of the code), or at compilation time by mixing in a role.

### `???` warn about stub code executed

  * term macro

### `...` fail with stub code executed error

  * term macro

### `!!!` die with stub code executed error

  * term macro

Talkoid
-------

The Talkoid group contains the functions that are generally used to display messages to a user.

### `print` stringify argument(s), write to `$*STDOUT`

  * sub method

### `say` create gist of argument(s), add newline, write to `$*STDOUT`

  * sub method

### `put` stringify argument(s), add newline, write to `$*STDOUT`

  * sub method

### `note` create gist of argument(s), add newline, write to `$*STDERR`

  * sub method

Termic
------

The Termic group 

Throwoid
--------

The Throwoid group contains the functions that somehow interrupt the normal flow of execution either very noticeably, or very much under the hood.

### `die` halt execution, or be caught by `CATCH`

  * sub

### `warn` show error message, or be caught by `CONTROL`

  * sub

### `fail` return from Routine with Failure, or be caught by `CATCH`

  * sub

### `return` return from Routine with given value, or be caught by `CONTROL`

  * sub method

### `next` proceed with next iteration, or be caught by `CONTROL`

  * sub

### `redo` restart current iteration, or be caught by `CONTROL`

  * sub

### `last` stop iterating, or be caught by `CONTROL`

  * sub

### `proceed` continue with next when/default, or be caught by `CONTROL`

  * sub

### `succeed` continue after last when/default, or be caught by `CONTROL`

  * sub

### `done` call "done" callback on taps, or be caught by `CONTROL`

  * sub

### `emit` emit given value to active supply, or be caught by `CONTROL`

  * sub method

### `take` produce a value in a `gather` sequence, or be caught by `CONTROL`

  * sub method

Timeoid
-------

The Timeoid group 

Topicoid
--------

The Topicoid group contains the functions that topicalize (set `$_`) in some situations.

### `given` topicalize argument for scope

  * syntax

### `when` if smartmatched topicalize argument for scope

  * syntax

### `andthen` topicalize left for right thunk

  * infix thunky

### `orelse` low precedence if defined OR, topicalizing left for right thunk

  * infix thunky

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

Any other lines until an empty line, contains the description of the element. It may contain RakuDoc markup codes.

If the first line is empty, then the rest of the file contains the description of the group (so you can recognize the description as the text after the first 2 empty lines). It may contain RakuDoc markup codes. If there are no 2 empty lines, then there is **no** description (yet) for the group.

COPYRIGHT AND LICENSE
=====================

Copyright 2025 Elizabeth Mattijsen

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

