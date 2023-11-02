---
title: "Archive"
layout: page
---

### Posts
<ul>
{% for post in site.posts %}
<li>
  <a href="{{ post.url }}">{{ post.title }}</a>
  <span class="muted" style="font-size: 0.85rem;">{{ post.date | date: "%Y %b" }}</span>
</li>
{% endfor %}
</ul>

### Notes
<ul>
{% assign notes = site.notes | sort: "updated" | reverse %}
{% for note in notes %}
<li>
  <a href="{{ note.url }}">{{ note.title }}</a>
</li>
{% endfor %}
</ul>
