---
title:  "VarRep Minutes 2018-02-05"
date: 2018-02-05
layout: default
category:
  - variant_representation_minutes
---

### Variant Representation Equivalence Sub-Group Call
##### Chairs: Larry Babb, Michael Baudis
##### Attendees “Name (Affiliation)”: Chris Bizon (UNC, ClinGen), Eric Moyer (NCBI/dbSNP), Piotr Pawliczek, (BCM, ClinGen), Cristina Yenyxe Gonzalez (EMBL-EBI, EGA/ENA/EVA driver project), Peter Robinson(JAX Lab/Monarch), Andy Yates(GKS Lead), Tristan Nelson (Geisinger/ClinGen), Lei Lui (Boston Childrens Hosp), Shawn Rynearson (UCGD/U of U)

##### Minutes:

LB: Documentation & document structures modeled after/in sync with Variant Annotation group

LB: VMC Scope assumptions review for equivalence discussion
- (see [intro slides](https://docs.google.com/presentation/d/16z3dP1BDvCOWjwGxO10gAw6JKQ0Sn9Zbc9KBP5qOhzc/edit?usp=sharing))
- Assuming external objects for equivalence
- VMC, equivalence … as elements of larger / complete / higher level model
- Allele ⇔ variant
- equivalence => focus on alleles
- (reviewing sequence … genotypes hierarchy from VMC)

Equivalence idea based on ClinGen experience; “canonical” vs. “normal” form
- Canonical: ref. To sequence change, independent of representation (i.e. genome, transcript, translation …) => names for the same thing (w/ respect to particular reference sequence etc.)
- CB: Maybe strange name, but … “the thing all the descriptions point to”
- MB: cf. Kant, “Das Ding an sich”
- EM: problematic w/ dbsnp way to name things
- LB: Just for setting up the discussion, name etc. not at core of things…
- LB: canonical allele needs at least one representation, which then corresponds to all the other forms
Preferred representation
- EM: canonical allele -> sort sequences -> take top from order in same set
- PP: sticking to alleles which all have representations on the last reference genome. If the new reference genome come out, some “obsolete” alleles on the previous reference genome may be mapped to two different location on the new reference genome. “Obsolete” identifier will remain in the system (with note, that the allele was splitted), but some transcript alleles will be mapped to alleles on the new reference genome.
- EM: (some notes about alleles, rsids … canonical =~ position + change)
- CYG: EVA normalise diff. Representation to single one, but w/ rsid; close to dbsnp

LB: equivalences - do we talk about same across reference sequences or also about “about the same” but not sequence identical

EM: Slight shifts … may be important re: evolution of how they were derived (e.g. shift of location due to ancestry)

LB: “features” as guideposts for local definitions

EM: old way: BLAST each; new: pairwise alignments as guide (pls. detail …)

CYG: currently only “normalising” VCF; will change (pls. detail …)

LB: simple remapping between different editions => same/canonical?

MB: it depends …
