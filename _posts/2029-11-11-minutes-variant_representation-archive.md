---
title:  "VarRep Minutes Archive"
date: 2029-11-11
layout: default
permalink: /variant_representation_minutes.html
category:
  - variant_representation
---

## GA4GH::GKS Variant Representation Meeting Minutes

Current meeting minutes are published accessible through [here](https://docs.google.com/document/d/1Sulg3kECnorTEAbutINOsK-lFkKAcKpl6IHgPaPQEgA) for review and comments. 

### Archive

{% for item in site.categories.variant_representation_minutes %}
<div class="excerpt">
{{ item.excerpt }}
<p>{{ item.date | date: "%Y-%m-%d" }}: <a href="{{ item.url | relative_url }}">more ...</a></p>
</div>
{% endfor %}
