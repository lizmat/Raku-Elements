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

GROUPS
======

Addenoid
--------

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

Bindoid
-------

### `=` bind right value in left container

  * tags: infix macro

### `:=` bind right value to left lexpad entry

  * tags: infix macro

Buildoid
--------

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

Complementary
-------------

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

### `|` flatten args, slip iterable

  * tags: prefix

### `⚛` atomic integer access

  * tags: prefix

Declaroid
---------

### `my` define something in MY:: scope

  * tags: syntax

### `our` define something in OUR:: scope

  * tags: syntax

### `anon` define something without storing it in a scope

  * tags: syntax

Differentoid
------------

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

Equalish
--------

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

Expansive
---------

### `i` the imaginary unit

  * tags: postfix

### `ⁿ` integer literal exponentiation

  * tags: postfix

So `$a²` is the same as `$a ** 2`, etc. Any of `⁰¹²³⁴⁵⁶⁷⁸⁹⁺¯¯` may be used.

Feedoid
-------

### `==>` feed left to right

  * tags: infix

### `<==` feed right to left

  * tags: infix

Flippant
--------

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

Hyperoid
--------

### `>>op<<` produce operator results for equal lists

  * alternates: ``op« »

  * tags: infix syntax

### `>>op>>` produce operator results, left side leading

  * alternates: ``op»»

  * tags: infix syntax

### `<<op<<` produce operator results, right side leading

  * alternates: `«op«`

  * tags: infix syntax

### `<<op>>` produce operator results, longest side leading

  * alternates: `«op»`

  * tags: infix syntax

### `Zop` produce operator result, shortest side leading

  * tags: infix syntax

Default for `op` is `,`

### `Xop` produce operator result for combinations

  * tags: infix syntax

Default for `op` is `,`

IOoid
-----

### `get` Read a line from $*STDIN / $*ARGFILES

  * tags: sub method

### `getc` Read a character from $*STDIN / $*ARGFILES

  * tags: sub method

### `read` Read bytes from IO::Handle

  * tags: method

### `write` Write bytes to IO::Handle

  * tags: method

### `slurp` Read entire contents of IO::Path / IO::Handle

  * tags: sub method

### `spurt` Replace content of IO::Path / IO::Handle with argument

  * tags: sub method

Incremental
-----------

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

Junctive
--------

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

Mathematicals
-------------

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

Metaoid
-------

### `op=` store result of operator on left/right on left side

  * tags: infix syntax

### `Rop` produce result of operator with arguments reversed

  * tags: infix syntax

### `!op` negate result of iffy operator on arguments

  * tags: index syntax

Methodic
--------

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

Multiplicoid
------------

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

Orderoid
--------

### `cmp` equivalence order comparison

  * tags: infix

### `<=>` numerical order comparison

  * tags: infix

### `leg` string order comparison

  * tags: infix

Quantoid
--------

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

Rangoid
-------

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

Reductoid
---------

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

Replicant
---------

### `x` string repetition

  * tags: infix

### `xx` item repetition

  * tags: infix

Rolific
-------

### `does` mutating role mixin

  * tags: infix

### `but` cloning role mixin

  * tags: infix

Sequoid
-------

### `...` smart sequence inclusive

  * tags: infix

### `^...` smart sequence excluding start

  * tags: infix

### `...^` smart sequence excluding end

  * tags: infix

### `^...^` smart sequence exclusive

  * tags: infix

Shortoid
--------

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

Stuboid
-------

### `???` warn about stub code executed

  * tags: term macro

### `...` fail with stub code executed error

  * tags: term macro

### `!!!` die with stub code executed error

  * tags: term macro

Talkoid
-------

### `print` stringify argument(s), write to $*STDOUT

  * tags: sub method

### `say` create gist of argument(s), add newline, write to $*STDOUT

  * tags: sub method

### `put` stringify argument(s), add newline, write to $*STDOUT

  * tags: sub method

### `note` create gist of argument(s), add newline, write to $*STDERR

  * tags: sub method

Termic
------

### `self` invocant in method

  * tags: term

### `rand` pseudo-random Num in range 

  * tags: term

Throwoid
--------

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

Timeoid
-------

### `now` Instant of current time

  * tags: term

### `time` POSIX time in seconds

  * tags: term

### `nano` POSIX time in nano seconds

  * tags: term

Topicoid
--------

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

Raku::Element
-------------

### name

The name of the element. This may be non-alphabetic, specifically in the case of operators such as `+`.

### alternates

Alternate names of the element, for instance an Unicode version versus an ASCII version of an operator, such as `∈` as al alternate name for `(elem)`. Usually empty.

### tagline

The tagline of the element: a one-line description.

### description

A more general description of the element. Optional.

### tags

A list of tags that apply to this element, e.g. `infix` for an infix operator. Has at least one element.

AUTHOR
======

Elizabeth Mattijsen <liz@raku.rocks>

Source can be located at: https://github.com/lizmat/Raku-Elements . Comments and Pull Requests are welcome.

If you like this module, or what I’m doing more generally, committing to a [small sponsorship](https://github.com/sponsors/lizmat/) would mean a great deal to me!

COPYRIGHT AND LICENSE
=====================

Copyright 2025 Elizabeth Mattijsen

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

