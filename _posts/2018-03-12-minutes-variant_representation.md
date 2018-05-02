---
title:  "VarRep Minutes 2018-03-12"
date: 2018-03-12
layout: default
category:
  - variant_representation_minutes
---

### Variant Representation (equiv/analog vmc examples)
##### Chairs: Larry Babb, Michael Baudis
##### Attendees “Name (Affiliation)”: Reece Hart, Piotr Pawliczek (ClinGen), Cristina Yenyxe Gonzalez (EMBL-EBI, ENA/EVA/EGA), Heidi Sophia (NIH), Andy Yates, Chris Bizon (NCBI/dbSNP), Steven Harrison, Eric Moyer (NCBI), Tristan Nelson, Tim Mercer (Garvan), Shawn Rynearson (U of U)

##### Minutes:


Reece: Some progress on going through comments on VMC.  Will continue to work. 0.2 is to resolve comments, tighten up language of IDs vs identifiers, include tpmt example.  Had listed inclusion of ideas of allele equivalence, but since that discussion has continued.

Larry:  Include those notes, but note that it will be expanded and solidified.

Michael: Created [Structural Variant Concepts doc](https://docs.google.com/document/d/19juHy7HUkAOACVHPVnWh033UwAjn0iwkoGA7THoZsgE/edit)  - theoretical write up of the problems and possibilities of structural variant representation.

Larry: [Action] Michael to do a walk through on a future call

Cristina: dbVar folks are interested in contributing, but currently have limited availability. Will continue to check.

Larry: [Var Rep Equivalence Use Cases](https://docs.google.com/document/d/1UTjAB-Nh2t7UCCTVl1VdoXTP8HK0Y4LmDEAvqUBMOOY/edit?usp=sharing). For collecting use cases by driver projects and others and determine what is in scope, future scope, out of scope.  Went over Examples 1-6, notes in the document.

Reece: Need to separate the concepts of equivalence or consistent: the deletion of a large region that includes the deletion of a gene is not the same as just the deletion of a gene, but the observations may be consistent. 

Michael: Need to determine where the line is between annotation and representation.

Example #4: Steven:  Important to note that depending upon the nomenclature used, two of the “same” variants will be labeled differently in ClinVar, so it would be hard to find closely related, or even the same variants.  Maybe the annotation group needs to handle cases that are “essentially the same variant”.

Reece: In this large deletion, the curators want to note the loss of an exon.  There may be several variants that are consistent with that deletion, but not exactly the same as that deletion (100 vs 101 kb deleted, both delete the exon). “Essentially the same” is not the same as actually equivalent. 

[ACTION]  Members to add more use cases.  Cristina offered to add some.

[ACTION] Michael to represent structural variants in an object oriented way including fuzzy ends, etc.  Point to Beacon repository.

[ACTION] Piotr, Cristina, Chris Bizon to prepare a short presentation for roundtable presentation by equivalence stakeholders.
