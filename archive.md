---
title: "Archive"
layout: page
---

<ul>
{% for post in site.posts %}
<li>
  <a href="{{ post.url }}">{{ post.title }}</a>
  <span class="muted" style="font-size: 0.85rem;">{{ post.date | date: "%Y %b" }}</span>
</li>
{% endfor %}
</ul>
