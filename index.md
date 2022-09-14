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

I'm **@anshulxyz** on [Twitter](https://twitter.com/anshulxyz){:target="_blank"} and [GitHub](https://github.com/anshulxyz){:target="_blank"}. You can also [email me](mailto:anshulchauhan@outlook.com)

<!--[youtube](https://www.youtube.com/channel/UCnft0UN8a6uvyYtEL0H2E-g)-->

## Projects

- **todo-rs**, A TUI ToDo-app written in Rust.
  [Demo](https://www.youtube.com/watch?v=fdHLbGEJTFI){:target="_blank"}.
  [Repo](https://github.com/anshulxyz/todo-rs){:target="_blank"}.
- **BodhiBot**, A Discord bot written in Rust, for Buddhist
  scriptures. [Demo](https://youtu.be/DYL19SGOmVw){:target="_blank"}.
  [Repo](https://github.com/anshulxyz/bodhi-bot-rs){:target="_blank"}.

## Blog

<ul>
  {% for post in site.posts %}
    <li>
      <a href="{{ post.url }}">{{ post.title }}</a>
    </li>
  {% endfor %}
</ul>

## Open Source Contributions

- SeaQL/sea-query: [Update SQLite backend Boolean type from int to bool #400](https://github.com/SeaQL/sea-query/pull/400)
- SeaQL/sea-orm: [Update get_info method to respect date-time crate #910](https://github.com/SeaQL/sea-orm/pull/910)
