---
layout: post
title: "Functional Programming <i>in Scala</i>"
subtitle: "in Scala"
categories: code
author: Anshul Chauhan
Description: "My notes on Functional Programming via Scala"
katex: True
syntax: True
tags: scala functional publish
---

- **Functional programming**: Functional languages treat functions as
  first-class values, this means that, like any other value, functions can be
  passed as a parameter and returns as a result. With an emphasis _pure
  functions_. That is, functions that have no _side effects_.
- **Pure function**: A function $$f$$ with the input type $$A$$ and output type
  $$B$$ is a computation that relates every value $$a$$ of type $$A$$ to
  exactly one value $$b$$ of type $$B$$ such that $$b$$ is determined solely by
  the value of $$a$$. Think of an injective(one-to-one) function in
  Mathematics. For example a function that returns the next integer. $$ (x \in \Z) $$

$$ f(x) = x + 1$$

The equivalent Scala code looks like:

{% highlight scala %}
def f(x: Int): Int = x+1
{% endhighlight %}

- **Side effects**: modification of the _state_ outside of the local scope.
- **Referential transparency**:  A piece of code is referentially transparent if we
  can safely replace that piece of code with the value it computes and
  vice-versa, anywhere where that piece is used, without changing the meaning
  or result of our program.
- **Higher order function**: a function that does at least one of the following two:
  - Take one or more functions as an argument
  - Returns a function as it's result[^1]
- **tail recursion**: A tail recursive function calls itself as its last
  action. Can be optimized by reusing the using the stack frame. Represents an
  iterative process. In Scala it can be annotated with `@tailrec` so that the
  compiler will succeed only if the function is indeed tail recursive.
  Refer [Tail Recursion Explained - Computerphile](https://www.youtube.com/watch?v=_JtPhF8MshA)

{% highlight scala %}
// function to get the nth Fibonacci number
def fib(n: Int): Int = {
  @tailrec
  def loop(n1: Int, n2: Int, i: Int): Int = {
    if (i == n) n1
    else loop(n2, n1+n2, i+1) // <- tail call
  }

  loop(0, 1, 0)
}
{% endhighlight %}

- **monomorphic function**: is a function that operates only on one datatype
- **polymorphic/generic function**: A generic function is a function that is
  declared with type parameters. When called, actual types are used instead of
  the type parameters.[^2]
- **anonymous function**: Inline functions that can be defined without a name. Also known as *lambda function*, or *function literal*.

{% highlight scala %}
// example of a generic function, and a Higher order Function since it takes
// a function as it's second argument
def findFirst[A](as: Array[A], p: A => Boolean): Int = {
  @tailrec
  def loop(n: Int): Int = {
    if (n >= as.length) -1
    else if (p(as(n))) n
    else loop(n+1)          // <- tail call
  }

  loop(0)
}

// the 'x => x == 5' is an anonymous function
findFirst[Int](Array(1,2,3,4,5), x => x == 5) //4

findFirst[String](Array("a", "b", "c"), x => x == "c") //2
{% endhighlight %}

Another example of anonymous functions

{% highlight scala %}
val square: Int => Int = x => x * x
// OR
val square = (x:Int) => x * x

square(2) // 4
square(3) // 9
{% endhighlight %}

- TODO: Write about call by value and call by name.

{% highlight scala %}
// call by value -> def f(x:Int)
// call by name -> def f(x:=>Int)
{% endhighlight %}

- Functions that are inside the class are called **methods**.
- Data Abstraction: The ability to choose different implementations of the data
  without affecting clients.

---
[^1]: [Clojure - Higher Order Function](https://clojure.org/guides/higher_order_functions#_higher_order_functions)
[^2]: [Generic functions (C++/CLI)](https://learn.microsoft.com/en-us/cpp/extensions/generic-functions-cpp-cli?view=msvc-170)
