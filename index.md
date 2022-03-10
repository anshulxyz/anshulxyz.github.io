---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: home
redirect_from:
  - /project/
  - /junk/
  - /blog/
---

# Anshul Chauhan

I work as a software craftsman


**Favourites**
{: .menu-title}

- [Albums]({% link albums.md %})
- [Animes]({% link animes.md %})
- [Books]({% link books.md %})
- [Movies]({% link movies.md %})
{: .menu}

**Elsewhere**
{: .menu-title}

- [GitHub](https://github.com/anshulxyz)
- [Twitter](https://twitter.com/anshulxyz)
{: .menu}


**Blogs**
{: .menu-title}

<ul>
  {% for post in site.posts %}
    {% if post.categories contains "blog" %}
      <li>
        <a href="{{ post.url }}">{{ post.title }}</a>
      </li>
    {% endif %}
  {% endfor %}
</ul>
{: .menu}