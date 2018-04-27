---
title: "GA4GH::GKS Site Structure"
layout: default
date: 2018-04-23
category:
  - howto
---

## GA4GH::GKS Site Structure

A general introduction to editing sites with Markdown and Jekyll can be found [here](/howto/markdown_jekyll.html).

All pages should be created in Markdown, with a necessary "front matter" (to be processed into the website).

The main point is the difference between

* static pages (like [variant_representation.md](/variant_representation.html)), which can reside in the home directory but have to be linked somewhere to be found, and
* "posts", which are created in the `_posts` direktory, using
    * a date-prefixed naming schema
    * necessary "title" (will be the link label) and "category" (for filtering and selection) in the "front matter"

A typical front matter is shown here:

```
---
title: "Launch of GKS Site"
layout: default
date: 2018-04-20
category: news
---
```

This has to be at the beginning of the page; all else is content.

Current categories to be auto-linked to their main pages are

* `news`
* `howto`
* `variant_annotation`
* `variant_representation`
* `variant_annotation_minutes`
* `variant_representation_minutes`

These categories can also be used in combination. If you want a page to be listed in `variant_annotation` & `variant_representation`, you can add both categories:

```
---
title: "GKS Best Practices"
layout: default
date: 2018-04-23
category:
  - variant_annotation
  - variant_representation
---
```

The `variant_annotation_minutes` & `variant_representation_minutes` are not directly linked in the sidebar, but accessible through their parent pages (i.e. clicking "Variant Representation" then shows related pages, one of which is "VarRep Minutes Archive", which lists all the minutes).

Please be aware of the correct [YAML syntax](https://learn-the-web.algonquindesign.ca/topics/markdown-yaml-cheat-sheet/#yaml).
