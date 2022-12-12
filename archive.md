---
title: "Archive"
layout: page
---

<ul>
  {% for post in site.posts %}
    <li>
      <a href="{{ post.url }}">{{ post.title }}</a>
      <span class="muted">{{ post.date | date_to_string }}</span>
    </li>
  {% endfor %}
</ul>
