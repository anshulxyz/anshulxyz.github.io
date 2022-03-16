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
- [Movies]({% link movies.md %})
{: .menu}

**Elsewhere**
{: .menu-title}

- [GitHub](https://github.com/anshulxyz)
- [Twitter](https://twitter.com/anshulxyz)
- [YouTube](https://www.youtube.com/channel/UCnft0UN8a6uvyYtEL0H2E-g)
{: .menu}


**Blogs**
{: .menu-title}

<ul>
  {% for post in site.posts %}
    {% if post.categories contains "blog" %}
      <li>
        <a href="{{ post.url }}">{{ post.title }}</a> &emsp; <span class="date">
            {{ post.date | date: "%B" }}
            {{ post.date | date: "%d" | plus:'0' }}, 
            {{ post.date | date: "%Y" }}
          </span>
      </li>
    {% endif %}
  {% endfor %}
</ul>
{: .menu}
