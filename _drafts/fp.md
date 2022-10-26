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
  Mathematics. For example a function that returns the next integer.

$$ f(x) = x + 1$$

- Side effects: modification of the _state_ outside of the local scope.
- Referential transparency:  A piece of code is referentially transparent if we
  can safely replace that piece of code with the value it computes and
  vice-versa, anywhere where that piece is used, without changing the meaning
  or result of our program.
- Higher order function: functions that take other functions as arguments/input
  and may return a function as their output.
- tail position: A call is said to be in _tail position_ if the caller does
  nothing other than return the value of the recursive call.

{% highlight scala %}
def factorial(n: Int): Int = {
  def go(n: Int, acc: Int): Int =
    if (n <= 0) acc
    else go(n-1, n*acc) // <- tail position
  go(n, 1)
}
{% endhighlight %}

> Scala detects this sort of _self-recursion_ and compiles it to the same sort of
> bytecode as would be emitted for a while loop, so long as the recursive call
> is in _tail position_.
