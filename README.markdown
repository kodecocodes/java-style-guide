# The Official raywenderlich.com Java Style Guide

This style guide is different from other you may see, because the focus is
centered on readability for print and the web. We created this style guide to
keep the code in our tutorials consistent.

Our overarching goals are __conciseness__, __readability__ and __simplicity__.

You should also check out out [Swift](https://github.com/raywenderlich/swift-style-guide)
and [Objective-C](https://github.com/raywenderlich/objective-c-style-guide)
style guides too.

## Inspiration

This style-guide is somewhat of a mash-up between the existing Java language
style guides, and a tutorial-readability focused Swift style-guide. The language
guidance is drawn from the
[Android contributors style guide](https://source.android.com/source/code-style.html)
and the
[Google Java Style Guide](https://google-styleguide.googlecode.com/svn/trunk/javaguide.html).
Alterations to support additional readability in tutorials were inspired by the
[raywenderlich.com Swift style guide](https://github.com/raywenderlich/swift-style-guide).


## Table of Contents

- [Nomenclature](#nomenclature)
  + [Packages](#packages)
  + [Classes & Interfaces](#classes--interfaces)
  + [Methods](#methods)
  + [Fields](#fields)
  + [Variables & Parameters](#variables--parameters)
  + [Misc](#misc)
- [Declarations](#declarations)
  + [Fields & Variables](#fields--variables)
  + [Classes](#classes)
  + [Enum Classes](#enum-classes)
- [Spacing](#spacing)
  + [Indentation](#indentation)
  + [Line Length](#line-length)
  + [Vertical Spacing](#vertical-spacing)
- [Brace Style](#brace-style)
- [Switch Statements](#switch-statements)
- [Annotations](#annotations)
- [Language](#language)
- [Copyright Statement](#copyright-statement)
- [Smiley Face](#smiley-face)
- [Credit](#credits)


## Nomenclature

On the whole, naming should follow Java standards.

### Packages

Package names are all __lower-case__, multiple words concatenated together,
without
hypens or underscores:

__BAD__:

```java
com.RayWenderlich.funky_widget
```

__GOOD__:

```java
com.raywenderlich.funkywidget
```

### Classes & Interfaces

Written in __UpperCamelCase__. For example `RadialSlider`. 

### Methods

Written in __lowerCamelCase__. For example `setValue`.

### Fields

Written in __lowerCamelCase__.

Static fields should be written in __uppercase__, with an underscore separating
words:

```java
public static final int THE_ANSWER = 42;
```

### Variables & Parameters

Written in __lowerCamelCase__.

Single character values to be avoided except for temporary looping variables.

### Misc

In code, acronyms should be treated as words. For example:

__BAD:__

```java
XMLHTTPRequest
String URL
findPostByID
```
__GOOD:__

```java
XmlHttpRequest
String url
findPostById
```

## Declarations

### Fields & Variables

Prefer single declaration per line.

__BAD:__

```java
String username, twitterHandle;
```

__GOOD:__

```java
String username;
String twitterHandle;
```

### Classes

Exactly one class per source file, although inner classes are encouraged where
scoping appropriate.


### Enum Classes

Enum classes without methods may be formatted without line-breaks, as follows:

```java
private enum CompassDirection { EAST, NORTH, WEST, SOUTH }
```

## Spacing

Spacing is especially important in raywenderlich.com code, as code needs to be
easily readable as part of the tutorial. Java does not lend itself well to this.

### Indentation

Indentation is using spaces - never tabs.

#### Blocks

Indentation for blocks uses 2 spaces (not the default 4):

__BAD:__

```java
for (int i = 0; i<10; i++) {
    Log.i(TAG, "index=" + i);
}
```

__GOOD:__

```java
for (int i = 0; i<10; i++) {
  Log.i(TAG, "index=" + i);
}
```

#### Line Wraps

Indentation for line wraps should use 4 spaces (not the default 8):

__BAD:__

```java
CoolUiWidget widget =
        someIncrediblyLongExpression(that, reallyWouldNotFit, on, aSingle, line);
```

__GOOD:__

```java
CoolUiWidget widget =
    someIncrediblyLongExpression(that, reallyWouldNotFit, on, aSingle, line);
```

### Line Length

Lines should be no longer than 100 characters long.


### Vertical Spacing

There should be exactly one blank line between methods to aid in visual clarity 
and organization. Whitespace within methods should separate functionality, but 
having too many sections in a method often means you should refactor into
several methods.


## Brace Style

Only trailing closing-braces are awarded their own line. All others appear the
same line as preceding code:

__BAD:__

```java
class MyClass
{
  void doSomething()
  {
    if (someTest)
    {
      // ...
    }
    else
    {
      // ...
    }
  }
}
```

__GOOD:__

```java
class MyClass {
  void doSomething() {
    if (someTest) {
      // ...
    } else {
      // ...
    }
  }
}
```

Conditional statements are always required to be enclosed with braces,
irrespective of the number of lines required.

__BAD:__

```java
if (someTest)
  doSomething();
if (someTest) doSomethingElse();
```

__GOOD:__

```java
if (someTest) {
  doSomething();
}
if (someTest) { doSomethingElse(); }
```


## Switch Statements

Switch statements fall-through by default, but this can be unintuitive. If you
require this behavior, comment it.

Alway include the `default` case.

__BAD:__

```java
switch (anInput) {
  case 1:
    doSomethingForCaseOne();
  case 2:
    doSomethingForCaseOneOrTwo();
    break;
  case 3:
    doSomethingForCaseOneOrThree();
    break;
}
```

__GOOD:__

```java
switch (anInput) {
  case 1:
    doSomethingForCaseOne();
    // fall through
  case 2:
    doSomethingForCaseOneOrTwo();
    break;
  case 3:
    doSomethingForCaseOneOrThree();
    break;
  default:
    break;
}
```

## Annotations

Standard annotations should be used - in particular `@Override`. This should
appear the line before the function declaration.

__BAD:__

```java
protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
}
```

__GOOD:__

```java
@Override
protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
}
```


## Language

Use US English spelling.

__BAD:__

```java
String colour = "red";
```

__GOOD:__

```java
String color = "red";
```

## Copyright Statement

??

## Smiley Face

Smiley faces are a very prominent style feature of the raywenderlich.com site!
It is very important to have the correct smile signifying the immense amount of
happiness and excitement for the coding topic. The closing square bracket ] is
used because it represents the largest smile able to be captured using ASCII
art. A closing parenthesis ) creates a half-hearted smile, and thus is not
preferred.

Bad:

    :)

Good:

    :]

## Credits

This style guide is a collaborative effort from the most stylish
raywenderlich.com team members:

- [Sam Davies](github.com/sammyd)
- ...

