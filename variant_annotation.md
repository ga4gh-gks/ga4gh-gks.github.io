---
title:  "Variant Annotation"
layout: default
permalink: /variant_annotation.html
category:
  - variant_annotation
tags:
  - contact
---

## GA4GH::GKS Variant Annotation

The Variant Annotation group aims to develop a common data model to represent annotations made on genomic variants, and the evidence and provenance that underlie these annotations. The model will support a wide variety of variant annotations, including causal association to disease/phenotype and interpretations of clinical relevance and actionability, and will support existing clinical lab standards such as the ACMG/AMP variant interpretation guidelines.

### Leads

* Matt Brush
* Javier Lopez

### Meetings

Generally every Wednesday at 8am PST, 11am EST, 4pm GMT. Check the [calendar for updates](https://calendar.google.com/calendar/b/1?cid=Z2Vub21pY3NhbmRoZWFsdGgub3JnX2trZTc4cnBuZms0dGszdmNyam8wODUxcHEwQGdyb3VwLmNhbGVuZGFyLmdvb2dsZS5jb20).

Current meeting minutes are published accessible through [here](https://docs.google.com/document/d/13sSChUB9rW7vl1ep-tZnaDzSWb_MyWIvSzEFVS32quE) for review and comments.
* [Archive](/variant_annotation_minutes.html) of previous meeting minutes

Conference calls are held remotely via Zoom Teleconferencing and can be joined using the following methods:

* PC, Mac, Linux, iOS or Android: [https://zoom.us/j/7082943722](https://zoom.us/j/7082943722)
* Telephone
  * US: 1 646 558 8656
  * UK: (0) 20 3695 0088
  * International #s [https://zoom.us/zoomconference](https://zoom.us/zoomconference)
  * Meeting ID: 708 294 3722

### Email Lists

You can contact the variant annotation group using [our Google Group](https://groups.google.com/a/ga4gh.org/d/forum/ga4gh-variant-annotation).

### Documents

| Document Name | Purpose |
|----------------|-----------|
| [Informal models](https://docs.google.com/spreadsheets/d/1zQU-Yv7gB7IHKIOVsTh-74BwdtgB9KQpKcWkSHZOa-Q/edit#gid=89319287) | Shared spreadsheet defines core model attributes |
| [Modeling Requirements](https://docs.google.com/document/d/1J4AqGDEqyK8KAzfiowgHYKJNvzHuwHSHgkN9dleLemY/edit ) | Sinthesises requirements collected in the [examples catalog](https://docs.google.com/document/d/1WbW2ts7qX3ONJNj22BlcW4KqfxcPdLsUcnlua4SSZCc/edit#heading=h.2vdmnz5qmyln ) |
| [Examples catalog](https://docs.google.com/document/d/1WbW2ts7qX3ONJNj22BlcW4KqfxcPdLsUcnlua4SSZCc/edit#heading=h.2vdmnz5qmyln ) | A collection of variant annotation examples which implicitly define DPs requirements |
| [Roadmap](https://docs.google.com/document/d/1Hu1t_JPtm1T12M5iJVPsZxDvE-OJp-munyWh-S7vu68/edit ) | Details our future goals and timelines |
| [Landscape Analysis](https://docs.google.com/spreadsheets/d/1BV0BuvdkobVAi3YLCzqUUqBGT-wM2jPfLvVQAF5IQcc/edit#gid=1171477640) | Known resources, data models, curation frameworks, applications and enums pertaining to variation annotation |
| [Variant Annotation Definition and Categories](https://docs.google.com/document/d/1csUrC4kX6G1V1GIz07btQQ3oL_cdDPJShuauL_uCjEw/edit) | Defining what is variant annotation with respect to this workstream |
| [Driver Project Data Overview](https://docs.google.com/document/d/1qRlDRXaKoeW8vWZ6meQBNutXsTIBqtQrf7B0IJ4JDNg/edit#heading=h.pd5a1roctmgj) | Summary data to model as defined by our engaged driver projects |
| [Driver Project Data Evaluation](https://docs.google.com/document/d/1BbRfPyYH3aHGEK1QhoVRGQJtY9FkVF0GHdaSzez1Reo/edit#heading=h.gy3xodyz89u6) | Evalutation of examples of driver project variant annotation |
| [Concept Glossary](https://docs.google.com/document/d/1zrOXzD08XletSHwrJHofkPufANkAy7marAkPyFX9AVY/edit) | Defining a set of concepts or terms clearly and to use them consistently |

---

### Related Posts

{% for item in site.categories.variant_annotation %}
  {% unless item.tags contains 'minutes' %}
    {% assign currentyear = item.date | date: "%Y" %}
    {% if currentyear != currentdate %}
<h2 id="y{{ currentyear }}">{{ currentyear }}</h2>
      {% assign currentdate = currentyear %}
    {% endif %}
<div class="excerpt">
{{ item.excerpt }}
<p>{{ item.date | date: "%Y-%m-%d" }}: <a href="{{ item.url | relative_url }}">more ...</a></p>
</div>
  {% endunless %}
{% endfor %}

