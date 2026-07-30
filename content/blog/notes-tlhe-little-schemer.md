---
title: "Note: The Little Schemer"
description: Major learnings I got from the book The Little Schemer
date: 2026-03-03
tags: scheme, fp
---

## Intro

"The Little Schemer" is a book written by Daniel P. Friedman and Matthias
Felleisen. It discusses recursion and continuous passing style. It uses Scheme
programming language (from Lisp family) to discuss these topics. It builds up
complexity of the functions from the first principles.

I decided to read this book for two reasons:

1. Is considered one of the classics of the field.
2. I wanted an entry point to learn a Lisp family language.

The format the book is written in unique. It's like a workbook. On the left half
of the page, there's a question, and on the right half is the answer. This gets
you to engage with the material. As you can't just leisurely skim the book while
doomscrolling. You can't jump a few pages without missing the plot.

I am writing this _note_ for my future self. So that if one day I decide to read
"The Seasoned Schemer", or re-read "The Litle Schemer", this note might serve
as a recap.

## Recursion

Book has some axioms. It gets you to think in terms of the "base case", when
writing a recursive function. For example, here is the function to remove the
first match from a list.

```scheme
(define rember
  (lambda (a lat)
    (cond
     [(null? lat) (list)] ;; base case
     [(eq? (car lat) a) (cdr lat)]
     [else (cons (car lat) (rember a (cdr lat)))])))
```

But what if I want to remove all the matches?

```scheme
(define multirember
  (lambda (a lat)
    (cond
     [(null? lat) (list)] ;; base case
     [(eq? a (car lat))
      (multirember a (cdr lat))]
     [else (cons (car lat)
                 (multirember a (cdr lat)))])))
```

But what if you also want to consider nested lists?

```scheme
(define rember*
  (lambda (a l)
    (cond
     [(null? l) (list)] ;; base case
     [(atom? (car l))
      (cond
       [(eq? a (car l))
        (rember* a (cdr l))]
       [else (cons (car l)
                   (rember* a (cdr l)))])]
     [else (cons (rember* a (car l))
                 (rember* a (cdr l)))])))
```

See how things are getting progressively more complex? Author gets you to start
from something very simple and builds on top of it as you go on.

I really loved that the author gets us to build basic functions from other basic
building block. For example, they get us to implement multiplication through
repeated addition. And addition itself is built on top of a function who's job
is to increment a number by 1. (Refer [Peano arihtmetic](https://en.wikipedia.org/wiki/Peano_axioms))

## Currying

Imagine that a function, instead of returning a value, returns another function.
And converting a function that takes multiple arguments into a series of
function that take one argument.

Example

```scheme
(define add
  (lambda (x y)
    (+ x y)))

(add 3 5) ;; 8

;; Curry
(define curried-add
  (lambda (x)
    (lambda (y)
      (+ x y))))

((curried-add 3) 7) ;; 10
```

NOTE: I first came across "Currying" while I was learning Scala for a backend
project. And I have never seen it being used anywhere in production. If you
have used this in production, I would like to know why and how.

## Continuous Passing Style

1. CPS
  3.1 What?
  3.2 How?
  3.3 Why?
		3.3.1 Because the recursive call is made at the end, the CPS functions are by design tail-recursive
		3.3.1 We can return a value anytime in the run without having to wind-down all of the nested calls.

 - Show a sample code of the standard factorial, and then the CPS one
