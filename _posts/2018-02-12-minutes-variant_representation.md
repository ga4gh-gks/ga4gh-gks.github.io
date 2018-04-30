---
title:  "VarRep Minutes 2018-02-12"
date: 2018-02-12
layout: default
category:
  - variant_representation_minutes
---

### Variant Representation
##### Chairs: Larry Babb, Michael Baudis
##### Attendees “Name (Affiliation)”: Reece Hart (Genome Medical), Cristina Yenyxe Gonzalez (EMBL-EBI, EGA/ENA/EVA driver project), Piotr Pawliczek (ClinGen/BCM), David Kreda (HMS/S4S), Eric Moyer (NCBI/dbSNP), Matthew Brush (OHSU/Monarch), Bob Freimuth (Mayo Clinic), Karen Eilbeck, University of Utah, Shawn Rynearson (UCGD/ U of U)

##### Minutes:

Larry reviewed last week’s meeting (see below) and link [here](https://docs.google.com/document/d/1exzE9hLaMeYsQ6Uu5OQOJbO_hJjyBWu--vqdboWHLYI/edit?usp=sharing).


Larry: Call for weekly meeting team volunteers for focused efforts to move the project forward.

**Equivalence** sub-group working team (will try to meet weekly, when possible)

Volunteers: Brian Walsh (walsbr@ohsu.edu), Karen Eilbeck (karen.eilbeck@hsc.utah.edu), Piotr Pawliczek (piotr.pawliczek@bcm.edu), Larry Babb (Larry.Babb@sunquestinfo.com), Bob Freimuth (freimuth.robert@mayo.edu), Cristina Yenyxe Gonzalez (cyenyxe@ebi.ac.uk), Eric Moyer (moyered@nih.gov) (when available).

**Reece discussed VMC Assumptions.**

Notes on why decisions were made were kept in the [“Design Decisions Appendix”](https://docs.google.com/document/d/12E8WbQlvfZWk5NrxwLytmympPby6vsv60RxCeD5wc1E/edit#heading=h.licu5hsyh3pf) at the back of the VMC spec document. Details found in the spec.

**Design goal: Minimal representation**

One core decision that comes up frequently is that of “minimal representation” or What are the minimal properties required to define an allele.  Wanted to define an allele with those concepts and nothing more. This becomes important in equivalence.

Rationale:
- Comparison & identity
- reusability/modularity
- Extensibility 

Allele defined by:
- Sequence (by reference)
- Location (interval for now)
- State

Refer to the state of an allele rather than the change from an allele: If at one position you have an A->C change vs if that same location has C->C.  While one shows a change, the other does not based on a change in the reference.  Better to talk about state than change here.

**IDs and Identifiers**
- Internal IDs - local choice, string
- External Identifiers - Structured object or string for inter-system exchange
- Digest can be used for both

**VMC Bundle** - Create a coherent collection of data: In order to define the genotype, you need to define the haplotype, in order to define the haplotype you need to define the alleles, in order to define the alleles, you need to define the locations. Create an internally consistent package of all of this information.  This can be changed if we want a REST-like interface.

Presentation on equivalence here: https://docs.google.com/presentation/d/17jdhX2ZcesuiEu_ZNniLBWsb9wwsez4SLrUNavY4mCc/edit#slide=id.g19b282107b_0_84

Useful for kinds of equivalence. The notion of equivalence needs a clean definition because if annotations are tied to “equivalent” without a clear definition, the annotations can drift. Proposed definition: “Will everything we say about one allele be true, always, for all alleles considered equivalent to that variant?”

**Projects artefacts:**

GitHub: Existing VMC Github project json schema.  Goal was to make it easy for tools who wanted to build off the schema to access it.  Python repo incorporates the json schema.

If new work is modifying the spec, it should go in the spec as a feature branch. If it’s discussion, etc, it should go elsewhere.  Start by keeping everything separate for now until we know what the result will be.

Michael talks about the creation of a structural variant team.

How do we scope it, precise vs imprecise, etc.  Call for participants.

Structural Var sub-group working team (first meeting 2/19 Mon 12p ET)

Volunteers: Michael Baudis (cancer)(michael.baudis@imls.uzh.ch), Tristan Nelson (germline)(thnelson@geisinger.edu), Larry Babb (larry.babb@sunquestinfo.com)

Concepts working off of the Variation Representation Structural Working Doc.  Team members should contribute to this document.

Roll call on equivalence vs structural interest:
- Brian Walsh: Focused on equivalence.  Trying to harmonize and standardize a superset of data.
- Shawn: After core VMC, more interest in equivalence
- Sarah: More work on equivalence
- Tristan: Structural
- Piotr: Interest in both, equivalence is higher priority
- Junjun (ICGC): General interest, no specific time to contribute
- David: Observer, but very interested in the creation of a definition of what is and is not a “structural variant” in terms of issues that HL7 is dealing with.
- Chris: Equivalence
- Karen: Equivalence
