---
title:  "VarAnn Minutes Archive"
date: 2029-11-11
layout: default
permalink: /variant_annotation_minutes.html
category:
  - variant_annotation
---

## GA4GH::GKS Variant Annotation Meeting Minutes

Current meeting minutes are published accessible through [here](https://docs.google.com/document/d/13sSChUB9rW7vl1ep-tZnaDzSWb_MyWIvSzEFVS32quE/edit#heading=h.t2adm0gua505) for review and comments. 

### Archive

{% for item in site.categories.variant_annotation_minutes %}
<div class="excerpt">
{{ item.excerpt }}
<p>{{ item.date | date: "%Y-%m-%d" }}: <a href="{{ item.url | relative_url }}">more ...</a></p>
</div>
{% endfor %}
