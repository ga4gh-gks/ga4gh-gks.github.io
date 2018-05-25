---
title:  "VarAnn Minutes 2018-04-11"
date: 2018-04-11
layout: default
category:
  - variant_annotation
tags:
  - minutes
---

### Variant Annotation
##### Chairs: Matt Brush, Javier Lopez
##### Attendees “Name (Affiliation)”: Melissa Cline (UC Santa Cruz), Malachi Griffith (VICC), Gabe Rudy (Golden Helix), Steve Hart, Bob Freimuth, Alex Wagner, David Tamborero (VICC), Zhenyu Zhang (UChicago/GDC), Kyle Hernandez (UChicago/GDC), Michael Watkins, Raymond Dalgleigh, Sarah Hunt (EMBL-EBI)

##### Minutes:

Malachi: Started with Example 6 from VICC and finished their examples:
https://docs.google.com/document/d/1WbW2ts7qX3ONJNj22BlcW4KqfxcPdLsUcnlua4SSZCc/edit#heading=h.jskloaftsbom
A lot of annotations from VICC are about predicting response to a drug, if a tumour has a particular mutation, it may respond better to a certain drug. Also important in adverse responses.  Prognostic and diagnostic annotation are also key

Example 6: Prognostic: same structure of JSON response as previous examples with different entries.

Matt: Is there a standard type of vocabulary for describing clinical significance?

Malachi: Not really. AMP guidelines and the MBLD are working towards this.  Both are using Civic.  There are some terms that are in agreement across these groups, some have disagreements.  So, no standard set.  Would be good to come to a consensus.

Example 7: Similar.  A lot of structural variants.

Alex: Example 9&10:VICC Aggregator: The API gives response data in a JSON format, see link.  Historically the structure of these associations come from the GA4GH G2P group and their underlying schema for representing genotype to phenotype relationships.  It has been expanded to fit the use.  There are some confusing terms used within the schema such as “environmental context” meaning “drug treatment”.

Matt:  [ACTION]  Have someone present on G2P schema.  Get Monarch to participate to explain their findings as an implementation.

Alex: Adam at Mt Sinai should be involved.

Example 10 is a more complicated query.  If you were doing exact string matching on these resources, these more complex interpretations may get missed.  The complex queries allow you to find the matches.

Matt: Went through Monarch examples 1-3:

Started with Driver project data overview of monarch: See links for notes

https://docs.google.com/document/d/1qRlDRXaKoeW8vWZ6meQBNutXsTIBqtQrf7B0IJ4JDNg/edit#heading=h.pd5a1roctmgj

Examples: https://docs.google.com/document/d/1WbW2ts7qX3ONJNj22BlcW4KqfxcPdLsUcnlua4SSZCc/edit#heading=h.o5q1hndmmw00

RDF is not particularly human readable.  Created diagramatic representations of the RDF.  Also have phenopacket format
Working to deal with conflicting assertions within the sepio model.

Javier: In example 3, there was an annotation sufficiency rating.  What is it?

Matt:  It’s an indicator of how uniquely and richly annotated a particular disease is.
