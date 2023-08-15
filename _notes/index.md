---
title: "Notes"
layout: page
---

{% for note in site.notes %}
{% if note.publish %}
<li>
  <a href="{{ note.url }}">{{ note.title }}</a>
  <span class="muted" style="font-size: 1rem;">{{ note.date | date_to_string }}</span>
</li>
{% endif %}
{% endfor %}
