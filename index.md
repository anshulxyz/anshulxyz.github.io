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

Software craftsman. More [about me]({% link about.md %}).

**Projects**
{: .menu-title}

<ul>
  {% for post in site.posts %}
    {% if post.categories contains "project" %}
      <li>
        <a href="{{ post.url }}">{{ post.title }}</a> &emsp;
      </li>
    {% endif %}
  {% endfor %}
</ul>
{: .menu}

**Writings**
{: .menu-title}

<ul>
  {% for post in site.posts %}
    {% if post.categories contains "blog" %}
      <li>
        <a href="{{ post.url }}">{{ post.title }}</a> &emsp;
      </li>
    {% endif %}
  {% endfor %}
</ul>
{: .menu}
