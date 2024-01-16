---
layout: page
redirect_from:
  - /blog/
---
# Archive
---

Subscribe [via RSS]({{ site.url }}/feed)

<div id="search"></div>

### Posts
<ul>
{% for post in site.posts %}
<li>
  <a href="{{ post.url }}">{{ post.title }}</a>
  <span class="muted" style="font-size: 0.85rem;">{{ post.date | date: "%Y %b %d" }}</span>
</li>
{% endfor %}
</ul>

<!--
### Notes
<ul>
{% assign notes = site.notes | sort: "title" %}
{% for note in notes %}
<li>
  <a href="{{ note.url }}">{{ note.title }}</a>
</li>
{% endfor %}
</ul>
-->

<link href="/pagefind/pagefind-ui.css" rel="stylesheet">
<script src="/pagefind/pagefind-ui.js"></script>

<script>
    window.addEventListener('DOMContentLoaded', (event) => {
        new PagefindUI({ element: "#search", showSubResults: true });
    });
</script>
