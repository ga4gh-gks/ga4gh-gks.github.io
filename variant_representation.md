---
title:  "Variant Representation"
layout: default
permalink: /variant_representation.html
category:
  - variant_representation
---

## GA4GH::GKS Variant Representation
The Variant Representation group aims to develop a computational data model and message schema specification for the representation of variants, in data resources and for API generation. The initial implementation will build on the work of the VMC, and will gradually expand that schema to include support for structural and complex variants, as well as variation/allele equivalence. 

## Leads

* Larry Babb
* Michael Baudis

## Meetings

Generally every Monday at 9am PST, 12pm EST, 5pm GMT. Check the [calendar for updates](https://calendar.google.com/calendar/b/1?cid=Z2Vub21pY3NhbmRoZWFsdGgub3JnX2trZTc4cnBuZms0dGszdmNyam8wODUxcHEwQGdyb3VwLmNhbGVuZGFyLmdvb2dsZS5jb20).

Current meeting minutes are published accessible through [here](https://docs.google.com/document/d/1Sulg3kECnorTEAbutINOsK-lFkKAcKpl6IHgPaPQEgA) for review and comments. 
* [Archive](/variant_representation_minutes.html) of previous meeting minutes

Conference calls are held remotely via Zoom Teleconferencing and can be joined using the following methods:

* PC, Mac, Linux, iOS or Android: [https://zoom.us/j/7082943722](https://zoom.us/j/7082943722)
* Telephone
  * US: 1 646 558 8656  
  * UK: (0) 20 3695 0088
  * International #s [https://zoom.us/zoomconference](https://zoom.us/zoomconference)
  * Meeting ID: 708 294 3722

## Email Lists

You can contact the variant representation group using [our Google Group](https://groups.google.com/a/ga4gh.org/forum/#!forum/variant-rep).

## Documents

| Document Name | Purpose |
|----------------|-----------|
| [Roadmap](https://docs.google.com/document/d/1oKitY4lUu4Rq6Xx5dwI1REf3GTlYX8vzh_D0WJWxbvQ ) | Details our future goals and timelines |
| [VMC Specification](https://docs.google.com/document/d/12E8WbQlvfZWk5NrxwLytmympPby6vsv60RxCeD5wc1E) | The VMC specification master document |
| [Equivalence Use Cases](https://docs.google.com/document/d/1UTjAB-Nh2t7UCCTVl1VdoXTP8HK0Y4LmDEAvqUBMOOY) | Set of worked use-cases describing variation equivalence |
| [Structural Variants Concepts](https://docs.google.com/document/d/19juHy7HUkAOACVHPVnWh033UwAjn0iwkoGA7THoZsgE) | Document defining the structure and format of strutural variants |
| [Structural Variants Types Spreadsheet](https://docs.google.com/spreadsheets/d/17M1U3Qfw18fkA30SoH1vJyOEK_fZ0z54UKbNPsdr9h0) | Existing models of structural variants |

---

## Related Posts

{% for item in site.categories.variant_representation %}
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
