---
title:  "GA4GH:GKS News"
layout: default
permalink: /news.html
category:
  -
---

## News

{% for item in site.categories.news %}
<div class="excerpt" style="margin-bottom: 20px;">
{{ item.excerpt }}
<p>{{ item.date | date: "%Y-%m-%d" }}: <a href="{{ item.url | relative_url }}">more ...</a></p>
</div>
{% endfor %}
