---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: home
redirect_from:
  - /project/
  - /junk/
  - /blog/
---

<!--It is later than you think.-->

# Anshul Chauhan

Backend software developer

anshulchauhan [at] outlook [dot] com

## Projects

**todo-rs**, A TUI ToDo-app written in Rust.<br/>
[Demo video](https://www.youtube.com/watch?v=fdHLbGEJTFI){:target="_blank"}.
[GitHub Repo](https://github.com/anshulxyz/todo-rs){:target="_blank"}.

**BodhiBot**, A Discord bot written in Rust, for referencing Buddhist
scriptures.<br/>
[Demo video](https://youtu.be/DYL19SGOmVw){:target="_blank"}.
[GitHub Repo](https://github.com/anshulxyz/bodhi-bot-rs){:target="_blank"}.

## Writing

<ul>
  {% for post in site.posts %}
    <li>
      <a href="{{ post.url }}">{{ post.title }}</a>
    </li>
  {% endfor %}
</ul>

## Elsewhere

[github](https://github.com/anshulxyz){:target="_blank"} &mdash;
[twitter](https://twitter.com/anshulxyz){:target="_blank"} &mdash;
[youtube](https://www.youtube.com/channel/UCnft0UN8a6uvyYtEL0H2E-g)
