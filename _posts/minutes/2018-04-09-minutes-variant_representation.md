---
title:  "VarRep Minutes 2018-04-09"
date: 2018-04-09
layout: default
category:
  - variant_representation
tags:
  - minutes
---

### Variant Representation
##### Chairs: Larry Babb, Michael Baudis
##### Attendees “Name (Affiliation)”:Piotr Pawliczek (ClinGen), Andy Yates (EMBL-EBI), Cristina Yenyxe González (EMBL-EBI), Eric Moyer (NCBI/dbSNP), Zhenyu Zhang (UChicago/GDC), Brian Walsh(OHSU), Deepak Unni (LBNL), Karen Eilbeck U of Utah, Sequence Ontology, Shawn Rynearson (U of U), Robert Freimuth; Melissa Cline (UC Santa Cruz)



Actions Arising
Item: Rolled over: Extend sVar doc
Assigned to: (all)
Due: 2018-03-26


##### Minutes:
Larry: Meet with DGV (database of genomic variants) group re structural variants.  Hoping to have them present to us at a future meeting.  
Term proposals: be more careful about using the term “equivalence” broadly.  Is “analog” a better term? Fuzzy analogs/fuzzy endpoints.  Should “normalization” be required for the VMC spec?  Need to talk to Piotr and Eric M about their use cases with normalization.  It is more than just right shifting.
Colocated and overlapping regions of interest. Need to better define these terms.  Normalization around “regions of interest?”

Use cases 1-3 were about structural variance.  Store vs query data?  Determine overlapping and colocated regions.

Use case 4: When things are almost the same due to overlapping regions of interest.  Can we define something that indicates overlapping regions of interest
Use case 6: dealing with legacy names, alternative representation, aliases, old nomenclature.  Is this variant annotation or representation?

UC8: DBSnip identifiers are not meant to be identifiers for precise variants.  Not precise representations of a location.  dbSnip is not meant to be an identifier for a variant.  Not computationally sound overall

UC9: Original vs normalized representation

UC 21: Notion that when you’re normalizing variation, left or right shifting is insufficient in some cases.

Piotr: What is the scope of the VMC document?  What kind of information do we want to exchange in storing vs query data.

Larry: We want a minimalistic structure to pass representation between two systems.  We want to build it out to represent more complex variants.  Will the expansion build out VMC or should we build a separate spec that references the VMC?

Bob: The concept of equivalence came into the conversation because we wanted to include a unique identifier.  But if the two variants are similar but not exactly the same, you can’t use the same identifier.  Would caution against trying to become an allele repository, we don’t need to store all historical information about variants, we should keep the scope to developing a spec that is the minimal but sufficient information to fully describe the variants.  Whether we describe two allele are equivalent or analog would be a further step.

Larry: Use Eric’s use cases to determine where equivalent/analogous variants are important.  

Eric: Use case 13, if two variants impact the sequence of the protein in a disease where that is important, then knowing that the protein sequences are equivalent, then that is what is important.  If it impacts folding, then that is important.  Different equivalences are different in each use case.

Piotr: Hard to define the way to represent a protein variant.  Depends on the source genomic variant.  For a given amino acid change, there can be a few nucleic acid changes that can result in it.  But the actual change in the protein is not always exactly the same when you take into account more than one isoform.

Larry: Concept of canonicalization vs normalization (single reference sequence).  Start with normalization?

Melissa:  Maybe this is a case for Discovery instead of GKS?

Chris: Want a rich set of use cases to determine how variations can be considered equivalence. Current VMC spec does not talk about relationships between difference variants.  This is currently outside the VMC scope, but still important to understand.

Larry: Should VMC scope be expanded to include information on variant impacts on DNA-RNA-Amino acids re: impact on equivalence? Or should the equivalence discussion be a different spec/document?

Piotr: the VMC is about variation on the same reference sequence for calculating hashes.  When there’s variation on two different reference sequences, there will be two different hashes. Equivalence within the VMC will have to thus be defined using two different hashes.

Shawn: like in ClinVar, there is a list of HGVS equivalences, but this may require curation.

Larry: The curated list has different types of analogs.  There are differences in versions of the same sequence. NG and LRG versions should be precisely equivalent: would end up with the same VMC hash.

Brian Walsh: The VMC spec and implementation is actionable and it can be implemented right now.  It would be useful to have these discussions implemented, even modestly to do 38 vs 37. If these points are not part of the VMC spec, they should be kept very close to it.

Larry: Take HGVS equivalence list and turn each into a VMC representation, show how you might bundle them together and show associations and relationships with it. [ACTION] We should work on an implementation Larry asked Piotr to take allele registry at clingen and use the VMC representation.  

Piotr:   Described code: http://reg.test.genome.network/REST/vmc/CA123456

Simple service that takes alleles with ID from the allele registry and tries to calculate the VMC boundaries for all definitions on the genomic level. Digest ID is created from the FASTA file

Larry: This code does not state anything about equivalence.  It is just a list of alleles.

Brian: If there was an assertion in here that stated that these alleles are equivalent re HG 37 vs 38, that would be helpful. 

Karen: f we are going to add assertions,it should be in a separate object on top of the VMC. VMC should remain atomic.

Larry: [ACTION] We should take clingen canonical alleles that are analogs of each other and see how we can start creating VMC representations and types of analogs?

Karen: We need to name and define different relationships first.

Piotr: Start by defining scope of the representation. Let’s divide it into data model and protocol.

Larry: We have two things to deal with: How to normalize a variant and once it is normalized, how do you represent kinds of relationships between them/types of analogs.  Get more examples of these so we can define the issues.

Brian: small decisions like left vs right shifting is going to be minor in terms of coding.  However, defining variant relationships is a more substantial problem and should be sorted out first. We should model HG 37 vs 38 equivalence as a use case. 
