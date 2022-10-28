---
layout: post
title: "Notes on Functional Programming"
categories: code
author: Anshul Chauhan
Description: "My notes on Functional Programming through Scala"
katex: True
syntax: True
tags: scala functional
---

- Functional programming: we construct programs using only _pure functions_.
  That is, functions that have no _side effects_.
- Pure function: A function $$f$$ with the input type $$A$$ and output type
  $$B$$ is a computation that relates every value $$a$$ of type $$A$$ to
  exactly one value $$b$$ of type $$B$$ such that $$b$$ is determined solely by
  the value of $$a$$. Think of an injective(one-to-one) function in
  Mathematics. For example a function that returns the next integer. $$ (x \in \Z) $$

$$ f(x) = x + 1$$

- Side effects: modification of the _state_ outside of the local scope.
- Referential transparency:  A piece of code is referentially transparent if we
  can safely replace that piece of code with the value it computes and
  vice-versa, anywhere where that piece is used, without changing the meaning
  or result of our program.
- Higher order function: functions that do at least one of the following two:
  - Take one or more functions as an argument
  - Returns a function as it's result[^1]
- tail position: A call is said to be in _tail position_ if the caller does
  nothing other than return the value of the recursive call. Refer [Tail
  Recursion Explained -
  Computerphile](https://www.youtube.com/watch?v=_JtPhF8MshA)

Language: Scala
{:.muted}

{% highlight scala %}
// function to get the nth Fibonacci number
def fib(n: Int): Int = {
  @annotation.tailrec
  def loop(n1: Int, n2: Int, i: Int): Int = {
    if (i == n) n1
    else loop(n2, n1+n2, i+1) // <- tail recursion
  }

  loop(0, 1, 0)
}
{% endhighlight %}

> Scala detects this sort of _self-recursion_ and compiles it to the same sort of
> bytecode as would be emitted for a while loop, so long as the recursive call
> is in _tail position_.

- monomorphic function: is a function that operates only on one datatype
- polymorphic/generic function: A generic function is a function that is
  declared with type parameters. When called, actual types are used instead of
  the type parameters.[^2]
- anonymous function / function literal: Inline functions that can be defined without a name. Also known as *lambda function*.

{% highlight scala %}
// example of a generic function
def findFirst[A](as: Array[A], p: A => Boolean): Int = {
  @annotation.tailrec
  def loop(n: Int): Int = {
    if (n >= as.length) -1
    else if (p(as(n))) n
    else loop(n+1)
  }

  loop(0)
}

// the 'x => x == 5' is an anonymous function
findFirst[Int](Array(1,2,3,4,5), x => x == 5) //4

findFirst[String](Array("a", "b", "c"), x => x == "c") //2
{% endhighlight %}

---
[^1]: [Clojure - Higher Order Function](https://clojure.org/guides/higher_order_functions#_higher_order_functions)
[^2]: [Generic functions (C++/CLI)](https://learn.microsoft.com/en-us/cpp/extensions/generic-functions-cpp-cli?view=msvc-170)
