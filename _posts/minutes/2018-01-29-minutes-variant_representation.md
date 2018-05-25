---
title:  "VarRep Minutes 2018-01-29"
date: 2018-01-29
layout: default
category:
  - variant_representation
tags:
  - minutes
---

### Variant Representation 
##### Chairs: Larry Babb, Michael Baudis
##### Attendees “Name (Affiliation)”: Reece Hart (Genome Medical) , Malachi Griffith (WASHU, CIViC, VICC driver project), Alex Wagner  (WASHU, CIViC, VICC driver project),Tristan Nelson (ClinGen), Eric Moyer (NCBI), Heidi Sofia (NHGRI/NIH), Shawn Rynearson (UCGD/U of U), Cristina Yenyxe Gonzalez (EMBL-EBI, EGA/ENA/EVA driver project), Karen Eilbeck (U of Utah, Sequence Ontology), Rishi Nag (GA4GH), Melissa Konopko (GA4GH), Michael Baudis (Uni Zurich, SIB, ELIXIR Beacon, arraymap.org/progenetix.org), Rachel Liao (Broad Institute/BRCA Challenge/GA4GH), Piotr Pawliczek/Ronak Patel (Baylor College of Medicine, ClinGen)


##### Minutes:

Reece:  Will continue to work on unresolved current issues on the spec and will deliver updates as he has them.

Larry discussed roadmap: https://docs.google.com/document/d/1oKitY4lUu4Rq6Xx5dwI1REf3GTlYX8vzh_D0WJWxbvQ/edit?usp=sharing

Emphasized that we need active participation from driver projects to move the spec forward.

Break meetings into two types.  Week 1: high level variant representation meetings. Week 2: Deep dive technical meetings.  Will lay out an agenda/topic ahead of time so people can know what they will be about.  Technical meetings will be minuted by participants.

Driver project roll call and interest:

Malachi (VICC):  Created CIViC resource for clinical cancer variant archives.  Want to harmonize disparate efforts that are trying to describe a large number and variety of cancer variants and their clinical relevance.  Want to know when all of the public resources are talking about the same or different variants.  Build a prototype aggregator that brings together information from across CIViC, the Memorial Sloan Kettering oncoKB, Cornell’s precision medicine knowledge base, etc.  Hard to normalize the info within in a computationally minable way.  Familiar with the spec, has not been implemented yet.  Seems good for simple variants.  Would want a spec that includes annotation, but the main use is for a coordinate based variation analysis.

Piotr (ClinGen): Interest in variant representation and normalization.  Currently use HGVS.  Waiting for a future VMC spec release before implementation, but have some ideas to resolve some issues in the spec.

Michael (ELIXIR Beacon):  So far, Beacon has stuck with basic, single base variants with distributed querying mechanisms to this point.  0.4 of the Beacon spec was released and can now query most of the VCF 4.2 spec.  Anything in the alternate bases field of VCF can be queried or represented.  Needs other use cases besides test implementation (beacon.arraymap.org). Standards compliant currently means VCF/GA4GH; tracking of GKS-VaRep for expected standards delivery.  Probably first line adoption of upcoming VaRep standards through adaptor for with clear way for the API to handle the different standards.

Javier (GeL): Wants a harmonized representation interested in modeling structural variants and equivalence classes.

Cristina (EGA/ENA/EVA): Archive for variation data, interested in normalization.  Accessioning non-human variants, so equivalency is very relevant.  VCF has limited use in structural variants and would be useful to have something for that.

Heidi Sophia (TopMed): All discussed topics sound relevant to this project.

Shawn: Making a digest ID created a codebase that will accept a VCF file and will update the info field with the digest IDs including sequence ID, alele ID, etc.  Will create a sequence ID from a  FASTA file.  Creating an API interface to go on a website, can select a primary build, upload a VCF file, it will annotate it and return it.  Still has issues with structural variants. Updates will be made to the GitHub and it will be a public resource once it is finalized.

Reece: Might be worth revisiting assumptions around VMC to see if the goals align with needs.  Sounds like there’s a lot of interest in genomic variation, where VMC focuses on sequence variation.

Larry: Equivalence and Structural variation groups: where should we focus our time?  
Sequence: In VMC: no size limit or technology, just precise and limited end points.  Does not count as structural variation
Structural: Has fuzzy end points, can cross chromosomes, are large.  [Action] Need a list of terms of structural variants

Michael: Revisiting the VMC model which focuses on the computability of the variants.  Is there a way to model complex variants that are still computable?  Can sequence, equivalence, and structural models all be done within the same spec?  Needs to be further examined.  Need to examine needs and challenges.

Reece: Several kinds of structural variants.  Variants with a single position like a large duplication event can probably be handled.  A translocation is challenging because there are effectively two locations that need to be addressed.  The model would need to be extended to include something like this.  If we wanted e.g. exon level deletions, we could make a new kind of “location” with exon coordinates, have a way to serialize that, then we could talk about “deletion of exon 9” without exact coordinates, and talk about that as an object that could be digested.  

Piotr:  Issues with large duplication events because even if you find two patients with the same start and end points, the sequence will probably be slightly different.

Michael: This is a crossover between a variant effect and a positional effect.  If you treat a large deletion as an object then the coordinates do not have to be exact.  On the query side you would ask, “do you have a variant that affects these exons or this gene?” On the representation side, it’s trickier.  Can you have alternate ways to represent the original variant?

Reece: Distinguish two use cases: 1) How would you use the model to record observations.  For esoteric variants, you may only ever see that once, but it still needs to be recorded accurately. 2) Reporting variants in databases.  The primary utility is for reporting common variants with their pathogenicities.  For structural variants you may not know the sequence, but you may precisely know the break points.

Larry: Variant equivalence/canonicalization for non structural variants is the initial scope.  A basic example is when the same change is called on different versions of the same reference sequence where the only difference is the locations resulting from upstream changes to the different reference sequence versions. Equivalence should presumably provide a computational way to represent these as a single “canonical” form of this variant. 

