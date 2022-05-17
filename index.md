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

Software craftsman. More [about me]({% link about.md %}). What I am doing
[now]({% link now.md %}).

## Projects

**BodhiBot**, A Discord bot for referencing Buddhist verses and texts. Written in **Rust**, using Serenity for handling Discord API and SeaORM as ORM for SQLite. [Demo](https://youtu.be/DYL19SGOmVw). [GitHub](https://github.com/anshulxyz/bodhi-bot-rs).
{:.project}

{: .menu-title}
## Writings

{% for post in site.posts %}

- [{{ post.title }}]({{ post.url }})
{: .menu}

{% endfor %}
