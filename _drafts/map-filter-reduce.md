---
layout: post
title: "Map, Filter & Reduce"
description: "Map, Filter & Reduce"
categories: junk
author: Anshul Chauhan
katex: True
syntax: True
---

## Map

`map` is defined as following in the [Scala API Doc](https://www.scala-lang.org/api/2.13.10/scala/collection/immutable/List.html#map[B](f:A=%3EB):List[B])

{% highlight scala %}
/** Builds a new list by applying a function to all elements of this list.

* @param B the element type of the returned list.
* @@param f the function to apply to each element.
* @return a new list resulting from applying the given function f to each
  element of this list and collecting the results.
*/
final def map[B](f: (A) => B): List[B]
{% endhighlight %}

**Requirement:** Increment the elements in the list by 1.

{% highlight scala %}
def incrementByOne(list: List[Int]): List[Int] = {
  var newList = List.empty[Int];

  list foreach { x => newList = newList :+ (x+1) }

  newList
}
{% endhighlight %}

Same thing can be done with `map`

{% highlight scala %}
def incrementByOne(list: List[Int]): List[Int] = list.map(_+1)
{% endhighlight %}

