---
layout: home
redirect_from:
  - /project/
  - /junk/
  - /blog/
---

<!--It is later than you think.-->

# Anshul Chauhan

Software developer

Email: [anshulchauhan@outlook.com](mailto:anshulchauhan@outlook.com)

### Elsewhere

[github](https://github.com/anshulxyz){:target="_blank"} &mdash;
[twitter](https://twitter.com/anshulxyz){:target="_blank"} &mdash;
[youtube](https://www.youtube.com/channel/UCnft0UN8a6uvyYtEL0H2E-g)

### Projects

- **todo-rs**, A TUI ToDo-app written in Rust.
  [Demo](https://www.youtube.com/watch?v=fdHLbGEJTFI){:target="_blank"}.
  [Repo](https://github.com/anshulxyz/todo-rs){:target="_blank"}.
- **BodhiBot**, A Discord bot written in Rust, for Buddhist
  scriptures. [Demo](https://youtu.be/DYL19SGOmVw){:target="_blank"}.
  [Repo](https://github.com/anshulxyz/bodhi-bot-rs){:target="_blank"}.

### Writing

<ul>
  {% for post in site.posts %}
    <li>
      <a href="{{ post.url }}">{{ post.title }}</a>
    </li>
  {% endfor %}
</ul>
