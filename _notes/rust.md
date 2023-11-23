---
title: "Notes on Rust"
syntax: true
layout: note
---

### General

Every arm of an `if` expression has to return the same type of value.
{% highlight rust %}
// error E0308
if (x > 10) {
  1
} else {
  "abc"
}
{% endhighlight %}


### Move Semantics

Mutable references have one big restriction: if you have a mutable reference
to a value, you can have no other references to that value.

{% highlight rust %}
  // FAILS
  let mut s = String::from("hello");

  let r1 = &mut s;
  let r2 = &mut s;

  println!("{}, {}", r1, r2);
{% endhighlight %}
