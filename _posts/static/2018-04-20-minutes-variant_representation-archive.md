---
title:  "Variant Representation Minutes Archive"
date: 2018-04-20
layout: default
permalink: /variant_representation_minutes.html
category:
  - variant_representation
tags:
  - featured
---

## GA4GH::GKS {{ page.title }}

Current meeting minutes are published accessible through [here](https://docs.google.com/document/d/1Sulg3kECnorTEAbutINOsK-lFkKAcKpl6IHgPaPQEgA) for review and comments.

### Archive

{% for item in site.categories.variant_representation %}
  {% if item.tags contains 'minutes' %}
    {% assign currentyear = item.date | date: "%Y" %}
    {% if currentyear != currentdate %}
<h2 id="y{{ currentyear }}">{{ currentyear }}</h2>
      {% assign currentdate = currentyear %}
    {% endif %}
<div class="excerpt">
{{ item.excerpt }}
<p>{{ item.date | date: "%Y-%m-%d" }}: <a href="{{ item.url | relative_url }}">more ...</a></p>
</div>
  {% endif %}
{% endfor %}
