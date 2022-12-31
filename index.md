---
layout: home
redirect_from:
  - /project/
  - /junk/
  - /blog/
---

<!--It is later than you think.-->

# Anshul Chauhan

I work at [Nelkinda](https://nelkinda.com/) as a _Software Craftsman_.
I help [Equal Experts](https://www.equalexperts.com/) build and maintain a tax
filing system for an island nation. I am pursuing  Bachelor of Science (BS)
Degree in Data Science and Applications from [IIT Madras](https://www.iitm.ac.in/).

**Contact**

[Twitter](https://twitter.com/anshulxyz){:target="_blank"} &mdash;
[GitHub](https://github.com/anshulxyz){:target="_blank"} &mdash;
[eMail](mailto:anshulchauhan@outlook.com)

**Featured Posts**

<ul>
  {% for post in site.posts %}
    {% if post.tags contains 'publish' %}
      <li><a href="{{ post.url }}">{{ post.title }}</a></li>
    {% endif %}
  {% endfor %}
</ul>

**Side Projects**

- A Chrome Extension to remove specific websites from the Google search
  results. [Demo](https://www.youtube.com/watch?v=IUFg9-YpTLs).
- **tauri-svelte-todo-app**, A ToDo Desktop app built with Tauri+Svelte+Rust.
  [Demo](https://twitter.com/anshulxyz/status/1587541091489787904?s=20&t=7WBoNJoLX5kWCS_QCF6xqA).
  [Repo](https://github.com/anshulxyz/tauri-svelte-todo-app).
- **todo-rs**, A TUI ToDo-app written in Rust.
  [Demo](https://www.youtube.com/watch?v=fdHLbGEJTFI){:target="_blank"}.
  [Repo](https://github.com/anshulxyz/todo-rs){:target="_blank"}.
- **BodhiBot**, A Discord bot written in Rust, for Buddhist
  scriptures. [Demo](https://www.youtube.com/watch?v=DYL19SGOmVw){:target="_blank"}.
  [Repo](https://github.com/anshulxyz/bodhi-bot-rs){:target="_blank"}.

**Selected Open Source Contributions**

- SeaQL/sea-query: [Update SQLite backend Boolean type from int to bool #400](https://github.com/SeaQL/sea-query/pull/400)
- SeaQL/sea-orm: [Update get_info method to respect date-time crate #910](https://github.com/SeaQL/sea-orm/pull/910)
- rubyforgood/human-essentials: [Fix table columns alignment for numerals and dates #1263](https://github.com/rubyforgood/human-essentials/pull/1263)

For all my open source contributions, [click here](https://github.com/search?q=author:anshulxyz+is:pr++-user:anshulxyz).

