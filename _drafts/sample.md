---
layout: post
title: "A Sample Title"
description: "A sample Description"
categories: junk
author:
  - Bart Simpson
  - Nelson Mandela Muntz
meta: "Springfield"
katex: True
syntax: True
---

**Lorem** _ipsum_ ~~dolor~~ sit amet, consectetur adipiscing elit. Fusce bibendum neque eget nunc mattis eu sollicitudin enim tincidunt. Vestibulum lacus tortor, ultricies id dignissim ac, bibendum in velit.

This is a link to collection note post called [[news]]

Samples marginal note. Samples marginal note. $$a + b = c$$
{:.aside}

Muted text
{:.muted}

## Some great heading (h2)

Proin convallis mi ac felis pharetra aliquam. Curabitur dignissim accumsan rutrum. In arcu magna, aliquet vel pretium et, molestie et arcu.

But this [is a link to google](https://google.com)

Mauris lobortis nulla et felis ullamcorper bibendum. Phasellus et hendrerit mauris. Proin eget nibh a massa [vestibulum](https://google.com) pretium. Suspendisse eu nisl a ante aliquet bibendum quis a nunc. Praesent varius interdum vehicula. Aenean risus libero, placerat at vestibulum eget, ultricies eu enim. Praesent nulla tortor, malesuada adipiscing adipiscing sollicitudin, adipiscing eget est.

## Another great heading (h2)

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce bibendum neque eget nunc mattis eu sollicitudin enim tincidunt. Vestibulum lacus tortor, ultricies id dignissim ac, bibendum in velit.

### Some great subheading (h3)

Proin convallis mi ac felis pharetra aliquam. Curabitur dignissim accumsan rutrum. In arcu magna, aliquet vel pretium et, molestie et arcu. Mauris lobortis nulla et felis ullamcorper bibendum.

Phasellus et hendrerit mauris. Proin eget nibh a massa vestibulum pretium. Suspendisse eu nisl a ante aliquet bibendum quis a nunc.

### Some great subheading (h3)

Praesent varius interdum vehicula. Aenean risus libero, placerat at vestibulum eget, ultricies eu enim. Praesent nulla tortor, malesuada adipiscing adipiscing sollicitudin, adipiscing eget est.

> This quote will _change_ your life. Don't <em>misuse</em> it.

> Blockquote but red. This quote will _change_ your life. Don't <em>misuse</em> it.
{:.red}

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce bibendum neque eget nunc mattis eu sollicitudin enim tincidunt.

### Some great subheading (h3)

Vestibulum lacus tortor, ultricies id dignissim ac, bibendum in velit. Proin convallis mi ac felis pharetra aliquam. Curabitur dignissim accumsan rutrum.

This is test of `inline`{:.language-yaml .highlight} highlighting

{% highlight python %}
@decorator
def hello(name: str) -> str:
  """this is a docstring"""
  length = len(name)
  print("statement")
  return "hello" + name
# this is a comment
{% endhighlight %}


```python
@decorator
def hello(name: str) -> str:
  """this is a docstring"""
  length = len(name)
  print("statement")
  return "hello" + name
# this is a comment
```

```rust
fn main() {
    // sorting an array of integers
    let mut a = [1,3,2];
    a.sort();
    assert_eq!(a, [1,2,3]);
    println!("{:?}", a);

    // sorting an array of floats
    let mut b = [1.2, 3.3, 2.2]
    b.sort();
}
```

{% highlight ruby linenos %}
# ruby code with numbered lines
def foo
  puts 'foo'
end
{% endhighlight %}


In arcu magna, aliquet vel pretium et, molestie et arcu. Mauris lobortis nulla et felis ullamcorper bibendum. Phasellus et hendrerit mauris.

#### You might want a sub-subheading (h4)

In arcu magna, aliquet vel pretium et, molestie et arcu. Mauris lobortis nulla et felis ullamcorper bibendum. Phasellus et hendrerit mauris.

In arcu magna, aliquet vel pretium et, molestie et arcu. Mauris lobortis nulla et felis ullamcorper bibendum. Phasellus et hendrerit mauris.

#### But it's probably overkill (h4)

In arcu magna, aliquet vel pretium et, molestie et arcu. Mauris lobortis nulla et felis ullamcorper bibendum. Phasellus et hendrerit mauris.

##### Could be a smaller sub-heading, `pacman` (h5)

In arcu magna, aliquet vel pretium et, molestie et arcu. Mauris lobortis nulla et felis ullamcorper bibendum. Phasellus et hendrerit mauris.

Some text[^1].

Some other text[^2].

The identifier in the square brackets does not have to be numeric[^my_footnote].

###### Small yet significant sub-heading (h6)

In arcu magna, aliquet vel pretium et, molestie et arcu. Mauris lobortis nulla et felis ullamcorper bibendum. Phasellus et hendrerit mauris.

### Oh hai, an unordered list!!

In arcu magna, aliquet vel pretium et, molestie et arcu. Mauris lobortis nulla et felis ullamcorper bibendum. Phasellus et hendrerit mauris.

- First item, yo
- Second item, dawg
- Third item, what what?!
- Fourth item, fo sheezy my neezy
  - nested list

### Oh hai, an ordered list!!

In arcu magna, aliquet vel pretium et, molestie et arcu. Mauris lobortis nulla et felis ullamcorper bibendum. Phasellus et hendrerit mauris.

1. First item, yo
2. Second item, dawg
3. Third item, what what?!
4. Fourth item, fo sheezy my neezy

### Math


inline: $$f(x) \mathbb{N} = \int_{-\infty}^\infty \hat f(\xi)\,e^{2 \pi i \xi x} \,d\xi$$

display mode (centered):

$$f(x) = \int_{-\infty}^\infty \hat f(\xi)\,e^{2 \pi i \xi x} \,d\xi$$

math equation with `aligned`

$$
\begin{aligned}
a&=b+c \\
d+e&=f
\end{aligned}
$$



## Headings are cool! (h2)

Proin eget nibh a massa vestibulum pretium. Suspendisse eu nisl a ante aliquet bibendum quis a nunc. Praesent varius interdum vehicula. Aenean risus libero, placerat at vestibulum eget, ultricies eu enim. Praesent nulla tortor, malesuada adipiscing adipiscing sollicitudin, adipiscing eget est.

Praesent nulla tortor, malesuada adipiscing adipiscing sollicitudin, adipiscing eget est.

Proin eget nibh a massa vestibulum pretium. Suspendisse eu nisl a ante aliquet bibendum quis a nunc.

### Tables

| Title 1               | Title 2               | Title 3               | Title 4               |
| --------------------- | --------------------- | --------------------- | --------------------- |
| lorem                 | lorem ipsum           | lorem ipsum dolor     | lorem ipsum dolor sit |
| lorem ipsum dolor sit | lorem ipsum dolor sit | lorem ipsum dolor sit | lorem ipsum dolor sit |
| lorem ipsum dolor sit | lorem ipsum dolor sit | lorem ipsum dolor sit | lorem ipsum dolor sit |
| lorem ipsum dolor sit | lorem ipsum dolor sit | lorem ipsum dolor sit | lorem ipsum dolor sit |

| Title 1                    | Title 2                                | Title 3                    | Title 4                                |
| -------------------------- | -------------------------------------- | -------------------------- | -------------------------------------- |
| lorem                      | lorem ipsum                            | lorem ipsum dolor          | lorem ipsum dolor sit                  |
| lorem ipsum dolor sit amet | lorem ipsum dolor sit amet consectetur | lorem ipsum dolor sit amet | lorem ipsum dolor sit                  |
| lorem ipsum dolor          | lorem ipsum                            | lorem                      | lorem ipsum                            |
| lorem ipsum dolor          | lorem ipsum dolor sit                  | lorem ipsum dolor sit amet | lorem ipsum dolor sit amet consectetur |

<hr/>

[^1]: Some footnote.
[^2]: Other footnote.
[^my_footnote]: This also works fine.
