[![Actions Status](https://github.com/lizmat/Raku-Elements/actions/workflows/linux.yml/badge.svg)](https://github.com/lizmat/Raku-Elements/actions) [![Actions Status](https://github.com/lizmat/Raku-Elements/actions/workflows/macos.yml/badge.svg)](https://github.com/lizmat/Raku-Elements/actions) [![Actions Status](https://github.com/lizmat/Raku-Elements/actions/workflows/windows.yml/badge.svg)](https://github.com/lizmat/Raku-Elements/actions)

NAME
====

Raku::Elements - The Elements of the Raku Programming Language

SYNOPSIS
========

```raku
use Raku::Elements;

my $info = Raku::Elements.new;
```

DESCRIPTION
===========

The `Raku::Elements` distribution attempts to provide a programmatical interface to an alternate description of the Raku Programming Language, inspired by the "Periodic Table of the Operators" by *Mark Lentczner*.

It basically provides an (incomplete) overview of the features of the Raku Programming Language, sorted into groups in a way similar to the "Periodic Table of Elements".

Please note that this is still very much a work in progress: a lot of explanatory texts still need to be added. Pull requests are **very** welcome!

CLASSES
=======

Raku::Elements
--------------

```raku
my $info = Raku::Elements.new;
```

The programmatical interface to the elements of the Raku Programming Language. Can be instantiated by calling `.new`. Provides these methods:

### elements

A `Map` with the elements of the Raku Programming Language. The key represents either the name of an `Raku::Element`, or one of its alternates. The value is a `List` of one or more `Raku::Element` objects that share the same name (but may have different tags).

### groups

A `Map` with `Raku::Group` objects, keyed to their name.

### tags

A `Map` with `Raku::Tag` objects, keyed to their name.

Raku::Group
-----------

The information about an element group of the Raku Programming Language. It is usually created automatically when a `Raku::Elements` object is instantiated.

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

Raku::Tag
---------

The information about an element tag of the Raku Programming Language. It is usually created automatically when a `Raku::Elements` object is instantiated.

### name

The name of the tag.

### description

The description of the tag (if any)

### elements

A list of `Raku::Element` objects belonging that have this tag set.

ELEMENTS
========

This section of the documentation is generated from the information supplied by the `Raku::Elements` object. It is provided here as an example of what can be done with the information provided by this distribution.

Raku Element Tags
-----------------

[`circumfix`](#circumfix) [`infix`](#infix) [`macro`](#macro) [`method`](#method) [`postfix`](#postfix) [`prefix`](#prefix) [`sub`](#sub) [`syntax`](#syntax) [`term`](#term) [`thunky`](#thunky)

### circumfix

Operators that consist of an opening and a closing tag, with their arguments between them.

### infix

Operators that typically take two values, one to the left and one to the right of the operator.

### macro

Syntax structures that may change the semantics of the code given at compile time.

### method

A `Callable` with a name that takes an invocant as its first argument, and which is typically part of a `class`, `role` or `grammar`.

### postfix

An operator that is placed **after** the argument it operates on.

### prefix

An operator that is placed **before** the argument it operates on.

### sub

A `Callable` with a name that can be returned from.

### syntax

A syntax element of the Raku Programming Language that typically doesn't have its own (visible) runtime component.

### term

Elements of the Raku Programming Language that exists on their own and which are known to not accept any arguments.

### thunky

Having special syntax handling causing it to not immediately be executed (like a `Callable`) but without having an independent scope.

Raku Element Groups
-------------------

[`Addenoid`](#Addenoid) [`Bindoid`](#Bindoid) [`Buildoid`](#Buildoid) [`Declaroid`](#Declaroid) [`Differentoid`](#Differentoid) [`Equalish`](#Equalish) [`Expansive`](#Expansive) [`Feedoid`](#Feedoid) [`Flippant`](#Flippant) [`Hyperoid`](#Hyperoid) [`IOoid`](#IOoid) [`Incremental`](#Incremental) [`Junctive`](#Junctive) [`Mathematicals`](#Mathematicals) [`Metaoid`](#Metaoid) [`Methodic`](#Methodic) [`Mixoid`](#Mixoid) [`Multiplicoid`](#Multiplicoid) [`Normaloid`](#Normaloid) [`Orderoid`](#Orderoid) [`Quantoid`](#Quantoid) [`Rangoid`](#Rangoid) [`Reductoid`](#Reductoid) [`Replicant`](#Replicant) [`Sequoid`](#Sequoid) [`Shortoid`](#Shortoid) [`Stuboid`](#Stuboid) [`Talkoid`](#Talkoid) [`Termoid`](#Termoid) [`Throwoid`](#Throwoid) [`Topicoid`](#Topicoid)

Addenoid
--------

The Addenoid group contains all infix operators that could be considered doing addition or substraction functions.

### [`+` numeric add](https://docs.raku.org/language/operators#infix_+)

  * [infix](#infix)

### [`-` numeric subtract](https://docs.raku.org/language/operators#infix_-)

  * alternates: `−`

  * [infix](#infix)

### [`~` string concatenation](https://docs.raku.org/language/operators#infix_~)

  * [infix](#infix)

### [`+&` integer AND](https://docs.raku.org/language/operators#infix_+&)

  * [infix](#infix)

### [`+|` integer OR](https://docs.raku.org/language/operators#infix_+|)

  * [infix](#infix)

### [`+^` integer XOR](https://docs.raku.org/language/operators#infix_+^)

  * [infix](#infix)

### [`~&` string AND](https://docs.raku.org/language/operators#infix_~&)

  * [infix](#infix)

### [`~|` string OR](https://docs.raku.org/language/operators#infix_~|)

  * [infix](#infix)

### [`~^` string XOR](https://docs.raku.org/language/operators#infix_~^)

  * [infix](#infix)

### [`?&` boolean AND](https://docs.raku.org/language/operators#infix_?&)

  * [infix](#infix)

### [`?|` boolean OR](https://docs.raku.org/language/operators#infix_?|)

  * [infix](#infix)

### [`?^` boolean XOR](https://docs.raku.org/language/operators#infix_?^)

  * [infix](#infix)

Bindoid
-------

The Bindoid group contains all macro-ish infix operators that perform raw binding, possibly into a container (which would make it an assignment).

### [`=` bind right value in left container](https://docs.raku.org/language/operators#infix_=_(item_assignment))

  * [infix](#infix) [macro](#macro)

### [`:=` bind right value to left lexpad entry](https://docs.raku.org/language/operators#infix_:=)

  * [infix](#infix) [macro](#macro)

Buildoid
--------

The Buildoid group contains all elements that convert a given set of arguments into one of a `Scalar`, `Pair`, `Positional` or `Associative` object.

### [`=>` `Pair` constructor, named argument specification](https://docs.raku.org/language/operators#infix_=%3E)

  * [infix](#infix)

### [`,` `List` constructor](https://docs.raku.org/language/operators#infix_,)

  * [infix](#infix)

### [`[ ]` `Array` constructor](https://docs.raku.org/language/operators#circumfix_[_])

  * [circumfix](#circumfix)

### [`{ }` `Block` or `Hash` constructor](https://docs.raku.org/language/operators#term_{_})

  * [circumfix](#circumfix) [syntax](#syntax)

### [`:{ }` Object Hash constructor](https://docs.raku.org/language/hashmap#Non-string_keys_(object_hash))

  * [circumfix](#circumfix)

### [`' '` literal string constructor](https://docs.raku.org/language/101-basics#Double-quoted_strings_and_single-quoted_strings)

  * [syntax](#syntax)

### [`" "` literal string constructor with interpolation](https://docs.raku.org/language/101-basics#Double-quoted_strings_and_single-quoted_strings)

  * [syntax](#syntax)

### [`< >` literal word list constructor](https://docs.raku.org/language/operators#term_%3C_%3E)

  * [syntax](#syntax)

### [`<< >>` literal word list constructor with interpolation](https://docs.raku.org/language/quoting#Word_quoting_with_interpolation_and_quote_protection:_«_»)

  * alternates: `« »`

  * [syntax](#syntax)

### `$( )` turn argument(s) into an item

  * [syntax](#syntax)

### `item` turn argument(s) into an item

  * [sub](#sub) [method](#method)

### `@( )` turn argument(s) into a list

  * [syntax](#syntax)

### `list` turn argument(s) into a list

  * [sub](#sub) [method](#method)

### `%( )` turn argument(s) into a hash

  * [syntax](#syntax)

### `hash` turn argument(s) into a hash

  * [sub](#sub) [method](#method)

Declaroid
---------

The Declaroid group contains the syntax for indicating the scope of an element to be defined.

### `my` define something in MY:: scope

  * [syntax](#syntax)

### `our` define something in OUR:: scope

  * [syntax](#syntax)

### `anon` define something without storing it in a scope

  * [syntax](#syntax)

Differentoid
------------

The Differentoid group contains the infix operators that return True if the compared elements are different in a way, and False if they are considered equal in that way.

### `before` generic less

  * [infix](#infix)

### `<` numerically less

  * [infix](#infix)

### `lt` alphabetically less

  * [infix](#infix)

### `<=` numerically less or equal

  * alternates: `≤`

  * [infix](#infix)

### `le` alphabetically less or equal

  * [infix](#infix)

### `!=` numeric inequality

  * alternates: `≠`

  * [infix](#infix)

### `ne` string inequality

  * [infix](#infix)

### `>=` numerically more or equal

  * [infix](#infix)

### `ge` alphabetically more or equal

  * [infix](#infix)

### `>` numerically more

  * [infix](#infix)

### `gt` alphabetically more

  * [infix](#infix)

### `after` generic more

  * [infix](#infix)

### `!(elem)` is not element in

  * alternates: `∉`

  * [infix](#infix)

### `!(cont)` does not contain element

  * alternates: `∌`

  * [infix](#infix)

### `!(<)` is not a strict quanthash subset

  * alternates: `⊄`

  * [infix](#infix)

### `!(<=)` is not a quanthash subset

  * alternates: `⊈`

  * [infix](#infix)

### `!(==)` quanthash inequality

  * alternates: `≢`

  * [infix](#infix)

### `!(>=)` is not a quanthash superset

  * alternates: `⊉`

  * [infix](#infix)

### `!(>)` is not a strict quanthash superset

  * alternates: `⊅`

  * [infix](#infix)

Equalish
--------

The Equalish group contains the infix operators that return True if the compared elements are considered equal in a way, and False if they are considered different in that way.

### `~~` smart match

  * [infix](#infix)

### `eqv` canonical equivalence

  * [infix](#infix)

### `eq` string equality

  * [infix](#infix)

### `==` numeric equality

  * [infix](#infix)

### `=~=` numeric almost equal

  * alternates: `≅`

  * [infix](#infix)

### `===` value identity

  * [infix](#infix)

### `=:=` value identity without decontainerization

  * [infix](#infix)

### `(elem)` is element in

  * alternates: `∈`

  * [infix](#infix)

### `(cont)` contains element

  * alternates: `∋`

  * [infix](#infix)

### `(<)` is strict quanthash subset

  * alternates: `⊂`

  * [infix](#infix)

### `(<=)` is quanthash subset

  * alternates: `⊆`

  * [infix](#infix)

### `(==)` quanthash equality

  * alternates: `≡`

  * [infix](#infix)

### `(>=)` is quanthash superset

  * alternates: `⊇`

  * [infix](#infix)

### `(>)` is strict quanthash superset

  * alternates: `⊃`

  * [infix](#infix)

Expansive
---------

The Expansive group contains the postfix operators that expand on numeric values.

### [`i` numeric multiplication with the imaginary unit (√-1)](https://docs.raku.org/type/Complex#postfix_i)

  * [postfix](#postfix)

`4i` is the same as `0+4i`. Needs grouping for variables `($a)i` because otherwise the `i` will be considered part of the variable name.

### [`ⁿ` numeric literal integer exponentiation](https://docs.raku.org/routine/%2A%2A)

  * [postfix](#postfix)

So `$a²` is the same as `$a ** 2`, etc. Any of `⁰¹²³⁴⁵⁶⁷⁸⁹⁺¯¯` may be used.

Feedoid
-------

The Feedoid group contains the operators that provide an alternate syntax for creating a sequence of operations, where the result of one such operation become the argument(s) for the next operation.

### [`==>` feed left to right](https://docs.raku.org/language/operators#infix_==%3E)

  * [infix](#infix)

`(1,2,3,4) ==> sum() ==> say()` as opposed to `say sum (1,2,3,4)` or `(1,2,3,4).sum.say`.

### [`<==` feed right to left](https://docs.raku.org/language/operators#infix_%3C==)

  * [infix](#infix)

`say() <== sum() <== (1,2,3,4)` as opposed to `say sum (1,2,3,4)` or `(1,2,3,4).sum.say`.

Flippant
--------

The Flippant group contains the operators that produce one or the other value, depending on some condition.

### `?? !!` ternary logic

  * [syntax](#syntax)

### `ff` flip-flop inclusive

  * [infix](#infix) [macro](#macro)

### `^ff` flip-flop excluding start

  * [infix](#infix) [macro](#macro)

### `ff^` flip-flop excluding end

  * [infix](#infix) [macro](#macro)

### `^ff^` flip-flop exclusive

  * [infix](#infix) [macro](#macro)

### `fff` sed-like flip-flop inclusive

  * [infix](#infix) [macro](#macro)

### `^fff` sed-like flip-flop excluding start

  * [infix](#infix) [macro](#macro)

### `fff^` sed-like flip-flop excluding end

  * [infix](#infix) [macro](#macro)

### `^fff^` sed-like flip-flop exclusive

  * [infix](#infix) [macro](#macro)

Hyperoid
--------

The Hyperoid group contains the operators that take the name of an infix operator and repeatedly perform that operator on the provided argument list(s).

### `>>op<<` produce operator results for equal lists

  * alternates: `»op« `

  * [infix](#infix) [syntax](#syntax)

### `>>op>>` produce operator results, left side leading

  * alternates: `»op»`

  * [infix](#infix) [syntax](#syntax)

### `<<op<<` produce operator results, right side leading

  * alternates: `«op«`

  * [infix](#infix) [syntax](#syntax)

### `<<op>>` produce operator results, longest side leading

  * alternates: `«op»`

  * [infix](#infix) [syntax](#syntax)

### [`Zop` produce operator result, shortest side leading](Default for `op` is `,`)

  * [infix](#infix) [syntax](#syntax)

### [`Xop` produce operator result for combinations](Default for `op` is `,`)

  * [infix](#infix) [syntax](#syntax)

IOoid
-----

The IOoid group contains the functions that are available for input / output of data.

### `get` Read a line from `C<$*STDIN>` / `C<$*ARGFILES>`

  * [sub](#sub) [method](#method)

### `getc` Read a character from `C<$*STDIN>` / `C<$*ARGFILES>`

  * [sub](#sub) [method](#method)

### `read` Read bytes from an `IO::Handle`

  * [method](#method)

### `write` Write bytes to an `IO::Handle`

  * [method](#method)

### `slurp` Read entire contents of `IO::Path` / `IO::Handle`

  * [sub](#sub) [method](#method)

### `spurt` Replace content of `IO::Path` / `IO::Handle` with argument

  * [sub](#sub) [method](#method)

Incremental
-----------

The Incremental group contains the infix operators for incrementing / decrementing (usually) numeric values.

The atomic versions of `--` and `++` were implemented for 6.d. They can only be applied to atomic integers.

### `++` pre-increment by 1

  * [prefix](#prefix)

### `⚛++` atomic pre-increment by 1

  * [prefix](#prefix)

### `--` pre-decrement by 1

  * [prefix](#prefix)

### `⚛--` atomic pre-decrement by 1

  * [prefix](#prefix)

### `++` post-increment by 1

  * [postfix](#postfix)

### `⚛++` atomic post-increment by 1

  * [postfix](#postfix)

### `--` post-decrement by 1

  * [postfix](#postfix)

### `⚛--` atomic post-decrement by 1

  * [postfix](#postfix)

Junctive
--------

The Junctive group contains the infix operators and the functions that produce `Junction` objects.

### `&` junctive all

  * [infix](#infix)

### `|` junctive any

  * [infix](#infix)

### `^` junctive one

  * [infix](#infix)

### `all` junctive all

  * [sub](#sub) [method](#method)

### `any` junctive any

  * [sub](#sub) [method](#method)

### `one` junctive one

  * [sub](#sub) [method](#method)

### `none` junctive none

  * [sub](#sub) [method](#method)

Mathematicals
-------------

The Mathematicals group contains the mathematical terms that are provided by the core.

### `pi` The number π (3.1415...)

  * alternates: `π`

  * [term](#term)

### `tau` The number τ (6.2831...)

  * alternates: `τ`

  * [term](#term)

### `e` Euler's number (2.7182...)

  * alternates: `𝑒`

  * [term](#term)

### `i` The imaginary unit (√-1)

  * [term](#term)

### `Inf` Infinity

  * alternates: `∞`

  * [term](#term)

Metaoid
-------

The Metaoid group contains the meta operators that take an infix operator and do something special with its result or its arguments.

### `op=` store result of infix operator on left side

  * [infix](#infix) [syntax](#syntax)

### `Rop` produce result of infix operator with arguments reversed

  * [infix](#infix) [syntax](#syntax)

### `!op` negate result of iffy infix operator on arguments

  * [infix](#infix) [syntax](#syntax)

Methodic
--------

The Methodic group contains the ways a method can be called on an object.

Dotted postfix operators must be followed by a method name or a subroutine name prefixed with `&` (possibly fully qualified), a postfix operator, a prefix operator within `:<>`, or one of the postcircumfixes `( )` `[ ]` `{ }` `< >` `« »`.

### `.method` method call

  * [postfix](#postfix)

### `. method` dotty infix method call

  * [infix](#infix)

### `.^method` meta-method call

  * [postfix](#postfix)

### `.?method` call method if any

  * [postfix](#postfix)

### `.*method` call all methods if any

  * [postfix](#postfix)

### `.+method` call all methods

  * [postfix](#postfix)

### `!method` private method call

  * [postfix](#postfix)

### `.=method` incovant mutating method call

  * [postfix](#postfix)

Mixoid
------

The Mixoid group contains the functions that allow mixing in functionality into an existing class or instantiation.

### `does` mutating role mixin

  * [infix](#infix)

### `but` cloning role mixin

  * [infix](#infix)

Multiplicoid
------------

The Multiplicoid group contains all infix operators that are related to multiplication in some way.

### `div` integer divide

  * [infix](#infix)

### `mod` integer modulus

  * [infix](#infix)

### `gcd` greatest common divisor

  * [infix](#infix)

### `lcm` lowest common multiple

  * [infix](#infix)

### `*` multiply

  * alternates: `×`

  * [infix](#infix)

### `/` divide

  * alternates: `÷`

  * [infix](#infix)

### `**` exponentiation

  * [infix](#infix)

### `%` modulus

  * [infix](#infix)

### `%%` is divisible

  * [infix](#infix)

### `+<` integer shift left

  * [infix](#infix)

### `+>` integer shift right

  * [infix](#infix)

Normaloid
---------

The Normaloid group contains the operators that somehow normalize the given arguments into something else, either in time or in value.

### `+` numerify

  * [prefix](#prefix)

### `+^` numeric complement

  * [prefix](#prefix)

### `-` numeric negation

  * alternates: `−`

  * [prefix](#prefix)

### `^` numeric from zero upto

  * [prefix](#prefix)

### `~` stringify

  * [prefix](#prefix)

### `?` boolify

  * [prefix](#prefix)

### `so` low precedence boolify

  * [prefix](#prefix)

### `!` boolean negation

  * alternates: `?^`

  * [prefix](#prefix)

### `not` low precedence boolean negation

  * [prefix](#prefix)

### `//` is defined

  * [prefix](#prefix)

### [`|` flatten args, slip iterable](https://docs.raku.org/syntax/%7C)

  * [prefix](#prefix)

The meaning of prefix `|` was expanded in 6.c to be beyond the use within signatures, to mean converting any iterable to a `Slip` (a special type of `list` that will always be iterated).

### [`⚛` atomic integer access](https://docs.raku.org/routine/⚛)

  * [prefix](#prefix)

Ensures the latest update of a value in the target is produced in multi-threaded situations.

Orderoid
--------

The Orderoid group contains the infix operators that return an `Order` value.

### `cmp` equivalence order comparison

  * [infix](#infix)

### `<=>` numerical order comparison

  * [infix](#infix)

### `leg` string order comparison

  * [infix](#infix)

Quantoid
--------

The Quantoid group contains the functions that return a `QuantHash` (a `Set`, `SetHash`, `Bag`, `BagHash`, `Mix` or `MixHash` given any set or arguments.

### `∅` empty Set

  * [term](#term)

### `(|)` quanthash union

  * alternates: `∪`

  * [infix](#infix)

### `(+)` quanthash addition

  * alternates: `⊎`

  * [infix](#infix)

### `(.)` quanthash multiplication

  * alternates: `⊍`

  * [infix](#infix)

### `(-)` quanthash difference

  * alternates: `∖`

  * [infix](#infix)

### `(^)` quanthash symmetric difference

  * alternates: `⊖`

  * [infix](#infix)

Rangoid
-------

The Rangoid group contains the infix operators that produce a `Range`.

### `..` range inclusive

  * [infix](#infix)

### `^..` range excluding start

  * [infix](#infix)

### `..^` range excluding end

  * [infix](#infix)

### `^..^` range exclusive

  * [infix](#infix)

### `minmax` range including min and max value

  * [infix](#infix)

Reductoid
---------

The Reductoid group contains the functions that reduce a given set of arguments into a single value (or produces the steps to produce that value).

### `min` reduce values to smallest value

  * [infix](#infix) [sub](#sub) [method](#method)

### `max` reduce values to largest value

  * [infix](#infix) [sub](#sub) [method](#method)

### `[op]` reduce using given infix operator

  * [prefix](#prefix) [syntax](#syntax)

### `[\op]` produce steps of reduction using given infix operator

  * [prefix](#prefix) [syntax](#syntax)

Replicant
---------

The Replicant group contains the infix operators that reproduce the left value repeatedly.

### `x` string repetition

  * [infix](#infix)

### `xx` item repetition

  * [infix](#infix) [thunky](#thunky)

Sequoid
-------

The Sequoid group contains the infix operators that create a smart sequence (one that inspect the arguments and interpretes special, almost magic, meaning).

### `...` smart sequence inclusive

  * [infix](#infix)

### `^...` smart sequence excluding start

  * [infix](#infix)

### `...^` smart sequence excluding end

  * [infix](#infix)

### `^...^` smart sequence exclusive

  * [infix](#infix)

Shortoid
--------

The Shortoid group contains the infixish macros that exhibit short-cicuiting behaviour, where the right hand side will **not** be evaluated if a certain condition on the left hand side was met.

### `&&` high precedence logical AND

  * [infix](#infix) [macro](#macro)

### `and` low precedence logical AND

  * [infix](#infix) [macro](#macro)

### `||` high precedence logical OR

  * [infix](#infix) [macro](#macro)

### `or` low precedence logical OR

  * [infix](#infix) [macro](#macro)

### `^^` high precedence logical XOR

  * [infix](#infix) [macro](#macro)

### `xor` low precedence logical XOR

  * [infix](#infix) [macro](#macro)

### `//` high precedence is defined OR

  * [infix](#infix) [macro](#macro)

### `notandthen` Empty if first defined, else last

  * [infix](#infix) [macro](#macro)

Stuboid
-------

The Stuboid group contains the functionality that can be used to indicate that code will need to be added at a later time (e.g. in the development cycle of the code), or at compilation time by mixing in a role.

### `???` warn about stub code executed

  * [term](#term) [macro](#macro)

### `...` fail with stub code executed error

  * [term](#term) [macro](#macro)

### `!!!` die with stub code executed error

  * [term](#term) [macro](#macro)

Talkoid
-------

The Talkoid group contains the functions that are generally used to display messages to a user.

### `print` stringify argument(s), write to `$*STDOUT`

  * [sub](#sub) [method](#method)

### `say` create gist of argument(s), add newline, write to `$*STDOUT`

  * [sub](#sub) [method](#method)

### `put` stringify argument(s), add newline, write to `$*STDOUT`

  * [sub](#sub) [method](#method)

### `note` create gist of argument(s), add newline, write to `$*STDERR`

  * [sub](#sub) [method](#method)

Termoid
-------

The Termoid group contains the functions that act as a term, but do **not** produce a constant value.

### `self` invocant in method

  * [term](#term)

### `rand` pseudo-random Num in range 

  * [term](#term)

### `now` `Instant` of current time

  * [term](#term)

### `time` POSIX time in seconds

  * [term](#term)

### `nano` POSIX time in nano seconds

  * [term](#term)

Throwoid
--------

The Throwoid group contains the functions that somehow interrupt the normal flow of execution either very noticeably, or very much under the hood.

### `die` halt execution, or be caught by `CATCH`

  * [sub](#sub)

### `warn` show error message, or be caught by `CONTROL`

  * [sub](#sub)

### `fail` return from Routine with Failure, or be caught by `CATCH`

  * [sub](#sub)

### `return` return from Routine with given value, or be caught by `CONTROL`

  * [sub](#sub) [method](#method)

### `next` proceed with next iteration, or be caught by `CONTROL`

  * [sub](#sub)

### `redo` restart current iteration, or be caught by `CONTROL`

  * [sub](#sub)

### `last` stop iterating, or be caught by `CONTROL`

  * [sub](#sub)

### `proceed` continue with next when/default, or be caught by `CONTROL`

  * [sub](#sub)

### `succeed` continue after last when/default, or be caught by `CONTROL`

  * [sub](#sub)

### `done` call "done" callback on taps, or be caught by `CONTROL`

  * [sub](#sub)

### `emit` emit given value to active supply, or be caught by `CONTROL`

  * [sub](#sub) [method](#method)

### `take` produce a value in a `gather` sequence, or be caught by `CONTROL`

  * [sub](#sub) [method](#method)

Topicoid
--------

The Topicoid group contains the functions that topicalize (set `$_`) in some situations.

### `given` topicalize argument for scope

  * [syntax](#syntax)

### `when` if smartmatched topicalize argument for scope

  * [syntax](#syntax)

### `andthen` topicalize left for right thunk

  * [infix](#infix) [thunky](#thunky)

### `orelse` low precedence if defined OR, topicalizing left for right thunk

  * [infix](#infix) [thunky](#thunky)

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

AUTHOR
======

Elizabeth Mattijsen <liz@raku.rocks>

Source can be located at: https://github.com/lizmat/Raku-Elements . Comments and Pull Requests are welcome.

If you like this module, or what I’m doing more generally, committing to a [small sponsorship](https://github.com/sponsors/lizmat/) would mean a great deal to me!

COPYRIGHT AND LICENSE
=====================

Copyright 2025 Elizabeth Mattijsen

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

