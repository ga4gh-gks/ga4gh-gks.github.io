---
title:  "VarRep Minutes 2018-04-23"
date: 2018-04-23
layout: default
category:
  - variant_representation_minutes
---

### Variant Representation (equiv/analog vmc examples)
##### Chairs: Larry Babb, Michael Baudis
##### Attendees “Name (Affiliation)”: Piotr Pawliczek (ClinGen), Chris Bizon, Cristina Yenyxe González (EMBL-EBI), Tristan Nelson, Reece Hart, Zhenyu Zhang (GDC / UChicago), Deepak Unni, Shawn Rynearson and Karen Eilbeck (U of U)


##### Minutes:

- Michael: Set up a [gitub organisation](https://github.com/ga4gh-gks), have a dev site and a place where future repositories could be put.  Will be filled out. - **ACTION** All should suggest what can be put here.
- Larry: All links to Google docs will be placed here.
- Michael:  How much of this should be open and visible?
- Larry: There is currently a google drive where this is currently organized.
- Michael: **ACTION** Melissa to make a list of important + public docs
- 
- Larry: Recap of past meetings.  https://docs.google.com/document/d/1UTjAB-Nh2t7UCCTVl1VdoXTP8HK0Y4LmDEAvqUBMOOY/edit
- [Slides here](https://drive.google.com/file/d/1Qw-_rC2tLNiKJc6WwjCl0H4T_tq6DCdi/view)

- Proposed talking about aligning build 37 sequence…***
- Importance of strandedness and directionality, HL7 went with Watson and Crick instead of +/-.
- If you look at deletions on the Watson vs Crick strand, right shifting changes things.***
- Reece:  Variant normalization is good for preventing annotation from leaking across into representation.
- Projecting a variant from a - strand to the + strand needs to be normalized again.  A duplication 5’ on the genome gets renormalized as ***. 
- 
- Karen: Why go back to Watson and Crick?  Everything in bioinformatics uses +/-.
- Larry: Let’s stick with +/-, will feedback to Bob re HL7.
- 
- Larry to Reece: VMC Bundles, they are just a mechanism to package things in a message, correct?
- Reece: Yes.  The intention was to create an internally consistent set of data.  If you want to talk about genotypes, you need to talk about haplotypes, then alleles.  What information do you want to send to make sure that the receiver has a complete picture.
- Larry: So, technically, you could send a bundle without location information?
- Reece: We should do what serves the broadest number of cases and worry about optimization later.  Sending partial packets is an optimization.
- Larry:  Why is there no information model for sequences?
- Reece: It is intentional and a slightly messy area.  There was a decision that we didn’t want to be another source of sequences.  We’re going to rely on a universe of sequences, so we need a way to name those.  Then wanting to come up with digests for variations, and make sure that those digests are based on underlying data, we needed a way to have an intrinsic identifier without a sequence.
- Piotr: The same sequence can have different identifiers and alignments, so how can you have an information model based on the sequence?
- Reece: Great point.  We don’t have any way to refer to alignments as first class objects.  We assume that a refseq id has an implied alignment to the genome.  NCBI doesn’t recognize that.  Have found the same versioned accession has multiple alignments to the genomes and has impacts on clinical interpretations to the genome.  Until we come to a point where we treat alignments as first class objects and digest them, we will always have implied information.
- Chris: This suggests that alignments should be first class objects.
- Reece: I hash alignments.
- Larry: Should we deal with alignments as first class objects now or recognize it as something we deal with later?
- Chris: One potential way to proceed is we are starting to get an idea of what the properties of the relationships are.  We’ll have to circle back around***
- Reece: Equivalence function***  Alleles A and B could be equivalent under***
- Chris: I would like to see alignments represented in the final outcome ***


* [**Archive**](/variant_representation_minutes.html) of previous meeting minutes
