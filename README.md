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
say "Groups: $info.groups.elems()";
say "Tags: $info.tags.elems()";
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

[`boolean`](#boolean) [`circumfix`](#circumfix) [`hash`](#hash) [`infix`](#infix) [`integer`](#integer) [`interrupt`](#interrupt) [`junction`](#junction) [`list`](#list) [`macro`](#macro) [`method`](#method) [`numeric`](#numeric) [`order`](#order) [`pair`](#pair) [`postfix`](#postfix) [`prefix`](#prefix) [`quanthash`](#quanthash) [`range`](#range) [`sequence`](#sequence) [`statement`](#statement) [`string`](#string) [`sub`](#sub) [`syntax`](#syntax) [`term`](#term) [`thunky`](#thunky) [`topic`](#topic)

### boolean

Produces a `Bool` value: either `True` or `False`.

### circumfix

Operators that consist of an opening and a closing tag, with their arguments between them.

### hash

Produces a `Hash` object.

### infix

Operators that typically take two values, one to the left and one to the right of the operator.

### integer

Produces an `Int` value.

### interrupt

Interrupts the normal flow of execution.

### junction

Produces a `Junction` object.

### list

Produces a `List` or `Array` object.

### macro

Syntax structures that may change the semantics of the code given at compile time.

### method

A `Callable` with a name that takes an invocant as its first argument, and which is typically part of a `class`, `role` or `grammar`.

### numeric

Produces a `Numeric` value.

### order

Produces an `Order` value, as in `Less`, `Same` or `More`.

### pair

Produces a `Pair` object.

### postfix

An operator that is placed **after** the argument it operates on.

### prefix

An operator that is placed **before** the argument it operates on.

### quanthash

May produce a `QuantHash` object (which is one of: `Set`, `SetHash`, `Bag`, `BagHash`, `Mix`, `MixHash`), or uses `QuantHash` semantics to return a `Bool`.

### range

Produces a `Range` object.

### sequence

Produces a lazy `Seq` (sequence) object.

### statement

A syntax structure at the start of a statement.

### string

Produces a `Str` object.

### sub

A `Callable` with a name that can be returned from.

### syntax

A syntax element of the Raku Programming Language that typically doesn't have its own (visible) runtime component.

### term

Elements of the Raku Programming Language that exists on their own and which are known to not accept any arguments.

### thunky

Having special syntax handling causing it to not immediately be executed (like a `Callable`) but without having an independent scope.

### topic

Either sets the topic variable (`$_`), or uses the topic variable as a default argument.

Raku Element Groups
-------------------

[`Addenoid`](#Addenoid) [`Bindoid`](#Bindoid) [`Buildoid`](#Buildoid) [`Condoid`](#Condoid) [`Declaroid`](#Declaroid) [`Differentoid`](#Differentoid) [`Equalish`](#Equalish) [`Expansive`](#Expansive) [`Feedoid`](#Feedoid) [`Flippant`](#Flippant) [`Hyperoid`](#Hyperoid) [`IOoid`](#IOoid) [`Incremental`](#Incremental) [`Junctive`](#Junctive) [`Mathematicals`](#Mathematicals) [`Metaoid`](#Metaoid) [`Methodic`](#Methodic) [`Mixoid`](#Mixoid) [`Multiplicoid`](#Multiplicoid) [`Normaloid`](#Normaloid) [`Orderoid`](#Orderoid) [`Quantoid`](#Quantoid) [`Rangoid`](#Rangoid) [`Reductoid`](#Reductoid) [`Replicant`](#Replicant) [`Sequoid`](#Sequoid) [`Shortoid`](#Shortoid) [`Stuboid`](#Stuboid) [`Talkoid`](#Talkoid) [`Termoid`](#Termoid) [`Throwoid`](#Throwoid) [`Topicoid`](#Topicoid)

Addenoid
--------

The Addenoid group contains all infix operators that could be considered doing addition or substraction functions.

### [`+` numeric add](https://docs.raku.org/language/operators#infix_+)

  * [infix](#infix) [numeric](#numeric)

Coerces both sides to a `Numeric` value, and then adds them.

### [`-` numeric subtract](https://docs.raku.org/language/operators#infix_-)

  * alternates: `−`

  * [infix](#infix) [numeric](#numeric)

Coerces both sides to a `Numeric` value, and then substracts the right side from the left side.

### [`~` string concatenation](https://docs.raku.org/language/operators#infix_~)

  * [infix](#infix) [string](#string)

Coerces both sides to a `Str`, and then concatenates them.

### [`+&` integer AND](https://docs.raku.org/language/operators#infix_+&)

  * [infix](#infix) [integer](#integer)

Coerces both sides to an `Int` value, and then does a bitwise AND.

### [`+|` integer OR](https://docs.raku.org/language/operators#infix_+|)

  * [infix](#infix) [integer](#integer)

Coerces both sides to an `Int` value, and then does a bitwise OR.

### [`+^` integer XOR](https://docs.raku.org/language/operators#infix_+^)

  * [infix](#infix) [integer](#integer)

Coerces both sides to an `Int` value, and then does a bitwise XOR.

### [`~&` string AND](https://docs.raku.org/language/operators#infix_~&)

  * [infix](#infix) [string](#string)

Coerces both sides to a `Buffer` value, and then does a bitwise AND and converts the result back to a `Str`.

### [`~|` string OR](https://docs.raku.org/language/operators#infix_~|)

  * [infix](#infix) [string](#string)

Coerces both sides to a `Buffer` value, and then does a bitwise OR and converts the result back to a `Str`.

### [`~^` string XOR](https://docs.raku.org/language/operators#infix_~^)

  * [infix](#infix) [string](#string)

Coerces both sides to a `Buffer` value, and then does a bitwise XOR and converts the result back to a `Str`.

### [`?&` boolean AND](https://docs.raku.org/language/operators#infix_?&)

  * [infix](#infix) [boolean](#boolean)

Coerces both sides to a `Bool` value, and then does a logical AND.

### [`?|` boolean OR](https://docs.raku.org/language/operators#infix_?|)

  * [infix](#infix) [boolean](#boolean)

Coerces both sides to a `Bool` value, and then does a logical OR.

### [`?^` boolean XOR](https://docs.raku.org/language/operators#infix_?^)

  * [infix](#infix) [boolean](#boolean)

Coerces both sides to a `Bool` value, and then does a logical XOR.

Bindoid
-------

The Bindoid group contains all macro-ish infix operators that perform raw binding, possibly into a container (which would make it an assignment).

### [`=` assign value(s)](https://docs.raku.org/language/operators#infix_=_(item_assignment))

  * [infix](#infix) [macro](#macro)

Performs an assignment. The left side is supposed to be either a `Scalar`, a `Positional` with `Scalar` containers (typically an `Array` such as `my @foo`), or an `Associative` with `Scalar` containers (typically a `Hash` such as `my %bar`).

```raku
my $a   = 42;
my @foo = 1,2,3,4,5;
my %bar = a => 42, b => 666, c => 137;
```

### [`:=` bind right value to left lexpad entry](https://docs.raku.org/language/operators#infix_:=)

  * alternates: `≔`

  * [infix](#infix) [macro](#macro)

Performs a binding operation on the lexpad entry on the left. This is generally done to indicate that it is an immutable value, or if you want to alias one container to another.

```raku
my $b := 42;  # immutable
my $c  = 666;
my $d := $c;  # alias
$d = 137;
say $c;  # 137
```

Buildoid
--------

The Buildoid group contains all elements that convert a given set of arguments into one of a `Scalar`, `Pair`, `Positional` or `Associative` object.

### [`=>` `Pair` constructor, named argument specification](https://docs.raku.org/language/operators#infix_=%3E)

  * [infix](#infix) [syntax](#syntax) [pair](#pair)

Indicates a named argument inside a `Capture` (for instance, as argument to a subroutine call). Otherwise it functions as a `Pair` constructor, with the left side being the key.

```raku
frobnicate(a => 42);  # named argument
my $p = foo => 42;    # Pair
```

### [`,` `List` constructor](https://docs.raku.org/language/operators#infix_,)

  * [infix](#infix) [list](#list)

Places all of its arguments in a `List`. Note that parentheses are **not** needed for a list to be created. The only exception is the empty `List`, which can be constructed by `()`.

### [`[ ]` `Array` constructor](https://docs.raku.org/language/operators#circumfix_[_])

  * [circumfix](#circumfix) [list](#list)

Creates an `Array` out of the given arguments, typically used when assigning to a hash.

```raku
my %foo;
%foo<bar> = [1,2,3,4];
```

### [`{ }` `Block` or `Hash` constructor](https://docs.raku.org/language/operators#term_{_})

  * [circumfix](#circumfix) [syntax](#syntax) [hash](#hash)

Either creates a `Block` object (if it looks like there is Raku code between the brackets), or a `Hash` built from its arguments (which is usually done when assigning to another `Hash` or `Array`)..

```raku
my &hello = { say "hello world" }                 # code, so Block
hello;  # hello world
my @menu = { salad => 4.50 }, { steak => 22.50 }  # args, so Hash
say @menu[0]<salad>;  # 4.5
```

### [`:{ }` Object Hash constructor](https://docs.raku.org/language/hashmap#Non-string_keys_(object_hash))

  * [circumfix](#circumfix) [hash](#hash)

### [`' '` literal string constructor](https://docs.raku.org/language/101-basics#Double-quoted_strings_and_single-quoted_strings)

  * [syntax](#syntax) [string](#string)

### [`" "` literal string constructor with interpolation](https://docs.raku.org/language/101-basics#Double-quoted_strings_and_single-quoted_strings)

  * [syntax](#syntax) [string](#string)

### [`< >` literal word list constructor](https://docs.raku.org/language/operators#term_%3C_%3E)

  * [syntax](#syntax) [list](#list) [string](#string)

### [`<< >>` literal word list constructor with interpolation](https://docs.raku.org/language/quoting#Word_quoting_with_interpolation_and_quote_protection:_«_»)

  * alternates: `« »`

  * [syntax](#syntax) [list](#list) [string](#string)

### `$( )` turn argument(s) into an item

  * [syntax](#syntax)

### [`item` turn argument(s) into an item](https://docs.raku.org/type/Mu#routine_item)

  * [sub](#sub) [method](#method)

### `@( )` turn argument(s) into a list

  * [syntax](#syntax) [list](#list)

### [`list` turn argument(s) into a list](https://docs.raku.org/type/List#routine_list)

  * [sub](#sub) [method](#method) [list](#list)

### `%( )` turn argument(s) into a hash

  * [syntax](#syntax) [hash](#hash)

### [`hash` turn argument(s) into a hash](https://docs.raku.org/type/Any#method_hash)

  * [sub](#sub) [method](#method) [hash](#hash)

Condoid
-------

The Condoid group contains the statement syntaxes to indicate conditional execution of code.

### [`?? !!` ternary logic](https://docs.raku.org/language/operators#infix_??_!!)

  * [syntax](#syntax)

Depending on the condition (before the `??`) produces the value of the expression between `??` and `!!` (if true) or the expression after `!!` if the condition was **not** true.

### [`if` execute block if condition is true](https://docs.raku.org/language/control#if)

  * [syntax](#syntax) [statement](#statement)

First of one or more blocks of conditional execution. Will execute the block if the condition was true.

### [`elsif` execute block if condition is true and previous false](https://docs.raku.org/language/control#else/elsif)

  * [syntax](#syntax) [statement](#statement)

Followup of `if` or another `elsif`, checked if the first (or previous) condition evaluated to false. Executes the associated block if true.

### [`else` execute block if none of previous blocks were executed](https://docs.raku.org/language/control#else/elsif)

  * [syntax](#syntax) [statement](#statement)

Final followup of `if`, `elsif`, `with` or `orwith`. Executes the associated block if none of the previous blocks were executed.

### [`unless` execute block if condition is false](https://docs.raku.org/language/control#unless)

  * [syntax](#syntax) [statement](#statement)

A single block of conditional execution, to be executed if the given condition evaluates to false.

### [`with` execute block if value is defined, and set topic](https://docs.raku.org/language/control#with_orwith_without)

  * [syntax](#syntax) [statement](#statement) [topic](#topic)

Start of one or more blocks of conditional execution. Depending on whether the expression evaluates to a defined value, the block will be executed with the topic (`$_`) set to the value inside the block.

### [`orwith` execute block if value is defined and previous not, and set topic](https://docs.raku.org/language/control#with_orwith_without)

  * [syntax](#syntax) [statement](#statement)

Followup of `with` or another `orwith`, checked if the first (or previous) expressions did not produce a defined value. Depending on whether the expression evaluates to a defined value, the block will be executed with the topic (`$_`) set to the value inside the block.

### [`without` execute block if value is not defined, and set topic](https://docs.raku.org/language/control#with_orwith_without)

  * [syntax](#syntax) [statement](#statement)

A single block of conditional execution, to be executed if the given expression evaluates to undefined value. Sets the topic (`$_`) with the value inside the block.

### [`once` execute given block / thunk only once](https://docs.raku.org/language/control#once)

  * [syntax](#syntax) [statement](#statement) [thunky](#thunky)

Execute the given block once int the given scope. The code:

```raku
once say "foo";
```

is equivalent to:

```raku
state $flag;
say "foo" unless $flag++;
```

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

  * [infix](#infix) [boolean](#boolean)

### `<` numerically less

  * [infix](#infix) [numeric](#numeric) [boolean](#boolean)

### `lt` alphabetically less

  * [infix](#infix) [string](#string) [boolean](#boolean)

### `<=` numerically less or equal

  * alternates: `≤`

  * [infix](#infix) [numeric](#numeric) [boolean](#boolean)

### `le` alphabetically less or equal

  * [infix](#infix) [string](#string) [boolean](#boolean)

### `!=` numeric inequality

  * alternates: `≠`

  * [infix](#infix) [numeric](#numeric) [boolean](#boolean)

### `ne` string inequality

  * [infix](#infix) [string](#string) [boolean](#boolean)

### `>=` numerically more or equal

  * [infix](#infix) [numeric](#numeric) [boolean](#boolean)

### `ge` alphabetically more or equal

  * [infix](#infix) [string](#string) [boolean](#boolean)

### `>` numerically more

  * [infix](#infix) [numeric](#numeric) [boolean](#boolean)

### `gt` alphabetically more

  * [infix](#infix) [string](#string) [boolean](#boolean)

### `after` generic more

  * [infix](#infix) [boolean](#boolean)

### `!(elem)` is not element in

  * alternates: `∉`

  * [infix](#infix) [boolean](#boolean)

### `!(cont)` does not contain element

  * alternates: `∌`

  * [infix](#infix) [boolean](#boolean)

### `!(<)` is not a strict quanthash subset

  * alternates: `⊄`

  * [infix](#infix) [boolean](#boolean)

### `!(<=)` is not a quanthash subset

  * alternates: `⊈`

  * [infix](#infix) [boolean](#boolean)

### `!(==)` quanthash inequality

  * alternates: `≢`

  * [infix](#infix) [boolean](#boolean)

### `!(>=)` is not a quanthash superset

  * alternates: `⊉`

  * [infix](#infix) [boolean](#boolean)

### `!(>)` is not a strict quanthash superset

  * alternates: `⊅`

  * [infix](#infix) [boolean](#boolean)

Equalish
--------

The Equalish group contains the infix operators that return `True` if the compared elements are considered equal in a way, and `False` if they are considered different in that way.

### [`~~` smart match](https://docs.raku.org/language/operators#infix_~~)

  * [infix](#infix)

Performs a smart-match on the given arguments. Technically, this is calling the `.ACCEPTS` method on the right side, giving it the left side as the positional argument. Which usually results in a `Bool` value.

### [`eqv` canonical equivalence](https://docs.raku.org/language/operators#infix_eqv)

  * [infix](#infix) [boolean](#boolean)

Performs a deep equivalence check logically dependent on the `.raku` representation.

### [`eq` string equality](https://docs.raku.org/language/operators#infix_eq)

  * [infix](#infix) [string](#string) [boolean](#boolean)

Coerces both sides to a string and returns `True` if the resulting strings are equal. Else `False`.

### [`==` numeric equality](https://docs.raku.org/language/operators#infix_)

  * alternates: `⩵`

  * [infix](#infix) [numeric](#numeric) [boolean](#boolean)

Coerces both sides to a `Numeric` value, and then returns `True` if they are the same. Else `False`.

### [`=~=` numeric almost equal](https://docs.raku.org/language/operators#infix_=~=)

  * alternates: `≅`

  * [infix](#infix) [numeric](#numeric) [boolean](#boolean)

Coerces both sides to a `Numeric` value, and then returns `True` if they are the same within `$*TOLERANCE` (defaults to `1e-15`). Else `False`.

### [`===` value identity](https://docs.raku.org/language/operators#infix_===)

  * alternates: `⩶`

  * [infix](#infix) [boolean](#boolean)

Decontainerizes both sides, and then returns `True` if both sides are the same object. Else `False`.

### [`=:=` value identity without decontainerization](https://docs.raku.org/language/operators#infix_=:=)

  * [infix](#infix) [boolean](#boolean)

Returns `True` if both sides are the same object **without** decontainerization. Else `False`.

### [`(elem)` is element in](https://docs.raku.org/language/operators#infix_(elem),_infix_∈)

  * alternates: `∈`

  * [infix](#infix) [boolean](#boolean) [quanthash](#quanthash)

Returns `True` if all values on the left side are part of the right side, using `QuantHash` semantics. Else `False`.

### [`(cont)` contains element](https://docs.raku.org/language/operators#infix_(cont),_infix_∋)

  * alternates: `∋`

  * [infix](#infix) [boolean](#boolean) [quanthash](#quanthash)

Returns `True` if all values on the right side are part of the left side, using `QuantHash` semantics. Else `False`.

### [`(<)` is strict subset](https://docs.raku.org/language/operators#infix_(%3C),_infix_⊂)

  * alternates: `⊂`

  * [infix](#infix) [boolean](#boolean) [quanthash](#quanthash)

Returns `True` if all values on the left side are part of the right side and the right side has more values, using `QuantHash` semantics. Else `False`.

### [`(<=)` is subset](https://docs.raku.org/language/operators#infix_(%3C=),_infix_⊆)

  * alternates: `⊆`

  * [infix](#infix) [boolean](#boolean) [quanthash](#quanthash)

Returns `True` if all values on the left side are part of the right side, using `QuantHash` semantics. Else `False`.

### [`(==)` quanthash equality](https://docs.raku.org/language/operators#infix_(==),_infix_≡)

  * alternates: `≡`

  * [infix](#infix) [boolean](#boolean) [quanthash](#quanthash)

Returns `True` if both sides contain the same valuies, using `QuantHash` semantics. Else `False`.

### [`(>=)` is superset](https://docs.raku.org/language/operators#infix_(%3E=),_infix_⊇)

  * alternates: `⊇`

  * [infix](#infix) [boolean](#boolean) [quanthash](#quanthash)

Returns `True` if all values on the right side are part of the left side, using `QuantHash` semantics. Else `False`.

### [`(>)` is strict superset](https://docs.raku.org/language/operators#infix_(%3E),_infix_⊃)

  * alternates: `⊃`

  * [infix](#infix) [boolean](#boolean) [quanthash](#quanthash)

Returns `True` if all values on the right side are part of the left side and the left side has more values, using `QuantHash` semantics. Else `False`.

Expansive
---------

The Expansive group contains the postfix operators that expand on numeric values.

### [`i` numeric multiplication with the imaginary unit (√-1)](https://docs.raku.org/type/Complex#postfix_i)

  * [postfix](#postfix) [numeric](#numeric)

`4i` is the same as `0+4i`. Needs grouping for variables `($a)i` because otherwise the `i` will be considered part of the variable name.

### [`ⁿ` numeric literal integer exponentiation](https://docs.raku.org/routine/%2A%2A)

  * [postfix](#postfix) [numeric](#numeric)

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

The Flippant group contains the operators that produce `True` or `False` depending on multiple conditions.

### [`ff` flip-flop inclusive](https://docs.raku.org/language/operators#infix_ff)

  * [infix](#infix) [macro](#macro) [boolean](#boolean)

### [`^ff` flip-flop excluding start](https://docs.raku.org/language/operators#infix_^ff)

  * [infix](#infix) [macro](#macro) [boolean](#boolean)

### [`ff^` flip-flop excluding end](https://docs.raku.org/language/operators#infix_ff^)

  * [infix](#infix) [macro](#macro) [boolean](#boolean)

### [`^ff^` flip-flop exclusive](https://docs.raku.org/language/operators#infix_^ff^)

  * [infix](#infix) [macro](#macro) [boolean](#boolean)

### [`fff` sed-like flip-flop inclusive](https://docs.raku.org/language/operators#infix_fff)

  * [infix](#infix) [macro](#macro) [boolean](#boolean)

### [`^fff` sed-like flip-flop excluding start](https://docs.raku.org/language/operators#infix_^fff)

  * [infix](#infix) [macro](#macro) [boolean](#boolean)

### [`fff^` sed-like flip-flop excluding end](https://docs.raku.org/language/operators#infix_fff^)

  * [infix](#infix) [macro](#macro) [boolean](#boolean)

### [`^fff^` sed-like flip-flop exclusive](https://docs.raku.org/language/operators#infix_^fff^)

  * [infix](#infix) [macro](#macro) [boolean](#boolean)

Hyperoid
--------

The Hyperoid group contains the operators that take the name of an infix operator and repeatedly perform that operator on the provided argument list(s).

### [`>>op<<` produce operator results for equal lists](https://docs.raku.org/language/operators#Hyper_operators)

  * alternates: `»op« `

  * [infix](#infix) [syntax](#syntax)

Repeat the operation on each of the associated elements of two `Iterable`s with the same number of elements. Throws an exception if they are not equal.

### [`>>op>>` produce operator results, left side leading](https://docs.raku.org/language/operators#Hyper_operators)

  * alternates: `»op»`

  * [infix](#infix) [syntax](#syntax)

Repeat the operation on each of the associated elements of two `Iterable`s for each element on the left side. Missing values on the right side will be repeated.

### [`<<op<<` produce operator results, right side leading](https://docs.raku.org/language/operators#Hyper_operators)

  * alternates: `«op«`

  * [infix](#infix) [syntax](#syntax)

Repeat the operation on each of the associated elements of two `Iterable`s for each element on the right side. Missing values on the left side will be repeated.

### [`<<op>>` produce operator results, longest side leading](https://docs.raku.org/language/operators#Hyper_operators)

  * alternates: `«op»`

  * [infix](#infix) [syntax](#syntax)

Repeat the operation on each of the associated elements of two `Iterable`s for each element on the side with the most elements. Missing values on the other side will be repeated.

### [`Zop` produce operator result, shortest side leading](Default for `op` is `,`)

  * [infix](#infix) [syntax](#syntax)

### [`Xop` produce operator result for combinations](Default for `op` is `,`)

  * [infix](#infix) [syntax](#syntax)

IOoid
-----

The IOoid group contains the functions that are available for input / output of data.

### `get` Read a line from `C<$*STDIN>` / `C<$*ARGFILES>`

  * [sub](#sub) [method](#method) [string](#string)

### `getc` Read a character from `C<$*STDIN>` / `C<$*ARGFILES>`

  * [sub](#sub) [method](#method) [string](#string)

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

  * [prefix](#prefix) [numeric](#numeric)

### `--` pre-decrement by 1

  * [prefix](#prefix)

### `⚛--` atomic pre-decrement by 1

  * [prefix](#prefix) [numeric](#numeric)

### `++` post-increment by 1

  * [postfix](#postfix)

### `⚛++` atomic post-increment by 1

  * [postfix](#postfix) [numeric](#numeric)

### `--` post-decrement by 1

  * [postfix](#postfix)

### `⚛--` atomic post-decrement by 1

  * [postfix](#postfix) [numeric](#numeric)

Junctive
--------

The Junctive group contains the infix operators and the functions that produce `Junction` objects.

### `&` junctive all

  * [infix](#infix) [junction](#junction)

### `|` junctive any

  * [infix](#infix) [junction](#junction)

### `^` junctive one

  * [infix](#infix) [junction](#junction)

### `all` junctive all

  * [sub](#sub) [method](#method) [junction](#junction)

### `any` junctive any

  * [sub](#sub) [method](#method) [junction](#junction)

### `one` junctive one

  * [sub](#sub) [method](#method) [junction](#junction)

### `none` junctive none

  * [sub](#sub) [method](#method) [junction](#junction)

Mathematicals
-------------

The Mathematicals group contains the mathematical terms that are provided by the core.

### `pi` The number π (3.1415...)

  * alternates: `π`

  * [term](#term) [numeric](#numeric)

### `tau` The number τ (6.2831...)

  * alternates: `τ`

  * [term](#term) [numeric](#numeric)

### `e` Euler's number (2.7182...)

  * alternates: `𝑒`

  * [term](#term) [numeric](#numeric)

### `i` The imaginary unit (√-1)

  * [term](#term) [numeric](#numeric)

### `Inf` Infinity

  * alternates: `∞`

  * [term](#term) [numeric](#numeric)

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

  * [infix](#infix) [integer](#integer)

### `mod` integer modulus

  * [infix](#infix) [integer](#integer)

### `gcd` greatest common divisor

  * [infix](#infix) [integer](#integer)

### `lcm` lowest common multiple

  * [infix](#infix) [integer](#integer)

### `*` multiply

  * alternates: `×`

  * [infix](#infix) [numeric](#numeric)

### `/` divide

  * alternates: `÷`

  * [infix](#infix) [numeric](#numeric)

### `**` exponentiation

  * [infix](#infix) [numeric](#numeric)

### `%` modulus

  * [infix](#infix) [numeric](#numeric)

### `%%` is divisible

  * [infix](#infix) [boolean](#boolean)

### `+<` integer shift left

  * [infix](#infix) [integer](#integer)

### `+>` integer shift right

  * [infix](#infix) [integer](#integer)

Normaloid
---------

The Normaloid group contains the operators that somehow normalize the given arguments into something else, either in time or in value.

### `+` numerify

  * [prefix](#prefix) [numeric](#numeric)

### `+^` numeric complement

  * [prefix](#prefix) [numeric](#numeric)

### `-` numeric negation

  * alternates: `−`

  * [prefix](#prefix) [numeric](#numeric)

### `^` numeric from zero upto

  * [prefix](#prefix) [numeric](#numeric)

### `~` stringify

  * [prefix](#prefix) [string](#string)

### `?` boolify

  * [prefix](#prefix) [boolean](#boolean)

### `so` low precedence boolify

  * [prefix](#prefix) [boolean](#boolean)

### `!` boolean negation

  * alternates: `?^`

  * [prefix](#prefix) [boolean](#boolean)

### `not` low precedence boolean negation

  * [prefix](#prefix) [boolean](#boolean)

### `//` is defined

  * [prefix](#prefix) [boolean](#boolean)

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

  * [infix](#infix) [order](#order)

### `<=>` numerical order comparison

  * [infix](#infix) [order](#order)

### `leg` string order comparison

  * [infix](#infix) [order](#order)

Quantoid
--------

The Quantoid group contains the functions that return a `QuantHash` (a `Set`, `SetHash`, `Bag`, `BagHash`, `Mix` or `MixHash` given any set or arguments.

### `∅` empty Set

  * [term](#term) [quanthash](#quanthash)

### `(|)` quanthash union

  * alternates: `∪`

  * [infix](#infix) [quanthash](#quanthash)

### `(+)` quanthash addition

  * alternates: `⊎`

  * [infix](#infix) [quanthash](#quanthash)

### `(.)` quanthash multiplication

  * alternates: `⊍`

  * [infix](#infix) [quanthash](#quanthash)

### `(-)` quanthash difference

  * alternates: `∖`

  * [infix](#infix) [quanthash](#quanthash)

### `(^)` quanthash symmetric difference

  * alternates: `⊖`

  * [infix](#infix) [quanthash](#quanthash)

Rangoid
-------

The Rangoid group contains the infix operators that produce a `Range`.

### `..` range inclusive

  * [infix](#infix) [range](#range)

### `^..` range excluding start

  * [infix](#infix) [range](#range)

### `..^` range excluding end

  * [infix](#infix) [range](#range)

### `^..^` range exclusive

  * [infix](#infix) [range](#range)

### `minmax` range including min and max value

  * [infix](#infix) [range](#range)

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

  * [infix](#infix) [string](#string)

### `xx` item repetition

  * [infix](#infix) [thunky](#thunky)

Sequoid
-------

The Sequoid group contains the infix operators that create a smart sequence (one that inspect the arguments and interpretes special, almost magic, meaning).

### `...` smart sequence inclusive

  * [infix](#infix) [sequence](#sequence)

### `^...` smart sequence excluding start

  * [infix](#infix) [sequence](#sequence)

### `...^` smart sequence excluding end

  * [infix](#infix) [sequence](#sequence)

### `^...^` smart sequence exclusive

  * [infix](#infix) [sequence](#sequence)

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

  * [infix](#infix) [macro](#macro) [topic](#topic)

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

  * [sub](#sub) [method](#method) [string](#string)

### `say` create gist of argument(s), add newline, write to `$*STDOUT`

  * [sub](#sub) [method](#method) [string](#string)

### `put` stringify argument(s), add newline, write to `$*STDOUT`

  * [sub](#sub) [method](#method) [string](#string)

### `note` create gist of argument(s), add newline, write to `$*STDERR`

  * [sub](#sub) [method](#method) [string](#string)

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

  * [sub](#sub) [interrupt](#interrupt)

### `warn` show error message, or be caught by `CONTROL`

  * [sub](#sub)

### `fail` return from Routine with Failure, or be caught by `CATCH`

  * [sub](#sub) [interrupt](#interrupt)

### `return` return from Routine with given value, or be caught by `CONTROL`

  * [sub](#sub) [method](#method) [interrupt](#interrupt)

### `next` proceed with next iteration, or be caught by `CONTROL`

  * [sub](#sub) [interrupt](#interrupt)

### `redo` restart current iteration, or be caught by `CONTROL`

  * [sub](#sub) [interrupt](#interrupt)

### `last` stop iterating, or be caught by `CONTROL`

  * [sub](#sub) [interrupt](#interrupt)

### `proceed` continue with next when/default, or be caught by `CONTROL`

  * [sub](#sub) [interrupt](#interrupt)

### `succeed` continue after last when/default, or be caught by `CONTROL`

  * [sub](#sub) [interrupt](#interrupt)

### `done` call "done" callback on taps, or be caught by `CONTROL`

  * [sub](#sub) [interrupt](#interrupt)

### `emit` emit given value to active supply, or be caught by `CONTROL`

  * [sub](#sub) [method](#method)

### `take` produce a value in a `gather` sequence, or be caught by `CONTROL`

  * [sub](#sub) [method](#method)

Topicoid
--------

The Topicoid group contains the functions that topicalize (set `$_`) in some situations.

### `given` topicalize argument for scope

  * [syntax](#syntax) [topic](#topic)

### `when` if smartmatched topicalize argument for scope

  * [syntax](#syntax)

### `andthen topic` topicalize left for right thunk

  * [infix](#infix) [thunky](#thunky)

### `orelse topic` low precedence if defined OR, topicalizing left for right thunk

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

Tag file format
---------------

The whole text of a tag file becomes the `.description` of the tag with the name of the file.

AUTHOR
======

Elizabeth Mattijsen <liz@raku.rocks>

Source can be located at: https://github.com/lizmat/Raku-Elements . Comments and Pull Requests are welcome.

If you like this module, or what I’m doing more generally, committing to a [small sponsorship](https://github.com/sponsors/lizmat/) would mean a great deal to me!

COPYRIGHT AND LICENSE
=====================

Copyright 2025 Elizabeth Mattijsen

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

