---
layout: post
title: "How are random number generated?"
description: "In this article I explre how random numbers are generated in Python"
categories: code
author: Anshul Chauhan
meta: "Random Numbers"
katex: True
syntax: True
---

If I asked you to pick a random number between 1 and 100, what would you pick?

3? 7? 37?

- what is a random number?

Before I jumped into learning about this topic, I though to myself, "What is a
random number?", and I immediately thought of the first few minutes of
[this video](https://www.youtube.com/watch?v=d6iQrh2TK98) by Veritasium, where
he asks strangers to pick a random number between 1 and 100. And a lot of
people, for some weird reason (I haven't seen rest of the video), picked
**37**.

Wolfram defines a _Random Number_ as, "A random number is a number chosen as if
by chance from some specified distribution such that selection of a large set
of these numbers reproduces the underlying distribution. Almost always, such
numbers are also required to be independent, so that there are no correlations
between successive numbers."[^1]

But in the next very sentence it says "Computer-generated random numbers are
sometimes called pseudorandom numbers"! Huh?!

Even the Python's documentation about "`random`" calls it "Generate pseudo-random numbers".[^2]

Why is it called "pseudo"?

Computer are great at doing exactly what we tell it to do. But how do we make
a computer _guess_ a number?

A few things I want to understand through this blog post:
1. How does a computer generate a random number?
2. Why is this number called "pseudo-random"?
3. What is the use of random numbers?

I could just readon the Python3's documentation on their "random"[^2] module.
But that page has a lot of words that I don't understand (for now).

Let's the just dive right into the code and work our way back.

```python
# python 3.13
>>> import random
>>> random.randint(1, 100)
28
```

Let's go to the source-code[^3] of "random.py".

The source code has this in comments.

```python
"""
General notes on the underlying Mersenne Twister core generator:

* The period is 2**19937-1.
* It is one of the most extensively tested generators in existence.
* The random() method is implemented in C, executes in a single Python step,
  and is, therefore, threadsafe.
"""
```

- how do we define "randomness" in the context of programming
- what are the characteristics of a truly random number
- how does randomness differ in theory and practice
- why do we need a random number in programming
    - and in real life?
- how do computers generate random numbers
    - can computers produce truly random numbers

Is it possible to generate actually _random_ random numbers?

[^1]: [Wolfram MathWorld - Random Number](https://mathworld.wolfram.com/RandomNumber.html)
[^2]: [Python 3 - docs - random](https://docs.python.org/3/library/random.html)
[^3]: [Python 3 - source - random.py](https://github.com/python/cpython/blob/3.13/Lib/random.py)
