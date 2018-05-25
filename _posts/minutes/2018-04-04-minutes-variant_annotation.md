---
title:  "VarAnn Minutes 2018-04-04"
date: 2018-04-04
layout: default
category:
  - variant_annotation
tags:
  - minutes
---

### Variant Annotation
##### Chairs: Matt Brush, Javier Lopez
##### Attendees “Name (Affiliation)”: Malachi Griffith (VICC), Obi Griffith, Alex Wagner, Larry Babb, Michael Baudis, Melissa Cline, Kathy Tzeng (Optum),Raymond Dalgleish , Bob Freimuth (ClinGen), Sarah Hunt (EMBL-EBI), Zhenyu Zhang (GDC), Terence O’Neil, Brian Walsh


##### Minutes:

Matt: How spent recent time -  we’ve been looking at variant interpretation data from clingen, genomics england, etc.  Today we’re going to look at VICC.  Monarch and others are to come.  Document here: https://docs.google.com/document/d/1WbW2ts7qX3ONJNj22BlcW4KqfxcPdLsUcnlua4SSZCc/edit#heading=h.c1gizox4tzwb 

Malachi: Focused on cancer.  Primarily an effort to harmonize several existing cancer knowledge bases.  They have databases of the clinically significant variants.  Looking at hundreds to thousands of variants with well established clinical significance.  Mostly somatic variants.  Germline variants will be included later.  “Clinical significance” includes actionability,  diagnostic, and prognostic implications.

Example of Civic: https://civicdb.org/ 

1800 Variants from 350 genes. 5000 structured evidence records that describes one of the clinical significance categories. Showed example of how to work with civic database.  Levels of evidence are graded, you can view the summary of evidence and what the clinical relevance is.  Curation is done with granular tracking of people’s involvement.  They can include debate.
You can choose a single gene and look at all of the related variants which can be broken down into variant types for binning.

G2P aggregator: https://g2p-ohsu.ddns.net/g2p#*

Alex: Attempt to harmonize civic alongside several other knowledge bases at the VICC.  Is an alpha interface.  Can search for variants.  Gives graphics that show interpretations of the variants from the sources as well as evidence levels.  Can click on evidence levels or specific genes or diseases which filters the results.  Can then look at more details, such as response to a specific drug. Can drill down into the specific result and evidence.  Aggregator is harvesting data from 7 sources and trying to harmonize them in the aggregator itself.  Contact Alex at awagner24 [at] wustl [dot] edu.

Malachi: Looking at these resources, realized that we all had incomplete solutions, but this exercise shows the gaps in each resource.  Very little overlap between each.  Find where different sources of information result in different interpretations.
Examples: https://docs.google.com/document/d/1WbW2ts7qX3ONJNj22BlcW4KqfxcPdLsUcnlua4SSZCc/edit#heading=h.c1gizox4tzwb 
- VICC Example 1: Would like more structure in variant name.  Trouble deciding what canonical source to use for drug names.  There can be various evidence items that support or don’t support an assertion which would be show in the underlying evidence items, but there is a summary view that tries to show the overall evidence.
- VICC Example 2: Pathogenic example, similar to ClinGen examples.
- VICC Example 3: Fusion variant.  How do we represent fusions?
- VICC Example 4: Fusion with missense variant in it.  Becomes complex to model.  Need better way to represent it.  Sets of variants that you want to represent together because they are co-occurrent.  Matt: Better work for Var Rep team.  Michael: Link by identifiers?  VCF doesn’t address this, so the Var Rep team is interested in this.
- VICC Example 5:  Drilling down to underlying evidence record.  The description can be broken down into types of evidence and be more structured.  Evidence rating is an attempt to gauge the strength of the evidence.  Includes review status, publication, associated phenotypes.

Matt: ‘evidence item’ is the name given to structured objects representing a particular ‘study finding’ that reports the results of a specific study.  I see ‘evidence statement’ used elsewhere in the documentation.  Is there a difference?

Malachi: Evidence statement is just the written part.  Evidence record includes the broken down structured details.

Malachi: Would like to talk more about prognostic and diagnostic evidence. [ACTION]  Will talk about these on a future call and will add more examples to the doc.
