---
title: "Notes"
layout: page
---

{% for note in site.notes %}
  {% if note.publish %}
  <li><a href="{{ note.url }}">{{ note.title }}</a></li>
  {% endif %}
{% endfor %}
