---
title:  "VarRep Minutes 2018-02-26"
date: 2018-02-26
layout: default
category:
  - variant_representation_minutes
---

### Variant Representation
##### Chairs: Larry Babb, Michael Baudis
##### Attendees “Name (Affiliation)”: Karen Eilbeck SO and U of Utah, Eric Moyer (NCBI/dbSNP), Cristina Yenyxe Gonzalez (EMBL-EBI, ENA/EVA/EGA), Shawn Rynearson U of U


##### Minutes:

Eric Moyer: Access to the SPDI draft paper may be granted after a week or two when the author has had more time to work on it.  Will update.

All: Add name and info to [GKS Member Info](https://docs.google.com/spreadsheets/d/15c9Mf0isMfMdNBJLSChTIy0FtzieHJx6tfj5bbNndq0/edit?usp=sharing) [ACTION]

Larry: Use landscape analysis to see how dbVAR organizes their structural variants, variant types, how they are modeled, etc. Use to determine what our goal is in the VMC Spec and set scope. [slides here](https://docs.google.com/presentation/d/1LyX-ktG13287RjG4d-SYxvxhANghnbRLtbRjbm4qEak/edit?usp=sharing).  Need to decide if VMC or the annotation team would include alternate representations.

dbVAR: https://www.ncbi.nlm.nih.gov/dbvar/content/overview/ 

Christina: will contact dbVAR team to see if they want to be part of the conversation [ACTION]

Larry: dbVAR has three main objects: studies, variant regions, and variant calls. The variants in clinvar may be considered “reference” variants.  Does dbVAR have this notion? 

Variant call types are grouped by variant region types.

Bob: The dbVAR variant type/region list is a great starting point for a glossary. However, some of the terms overlap or can be used as parts of other definitions. Need to be aware of that when making our own definitions so we don’t model the same type of thing in two different ways.

Karen: The ontology does provide the structure between items including some overlapping terms like duplication and insertion.

Larry: [ACTION] Take the variant call type list from dbVAR and abstract them down to a list that gives the kind of coverage needed in the VMC spec. Michael will make a google sheet to start this and Karen to be involved.

??: The reason dbVAR included variant regions was to allow for structural variant equivalence. 

Larry: went over questions on slide 8: to be considered before next meeting.  More questions should be added by the group.  Michael will create a document to collect these questions and answers. [ACTION]  Afterwards, need to determine what is in scope.

Larry: Next steps: Next week’s working meeting will be a mix of equivalence and structural, mainly equivalence.

Annotation question: It is currently not possible to annotate an allele with an additional representation (e.g. because the sequence won't be available later). It might be a good feature request for the annotation team. It could also end up under the domain of the equivalence team.

AI: 2 documents:
Current representations (e.g. dbVar, VCF …) & their application here

Ab novo “wishlist/scoping” - what needs to be represented as “structural” (versus functional, effect, already covered by VMC spec…) 
