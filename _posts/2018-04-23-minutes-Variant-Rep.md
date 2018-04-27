---
title:  "VarRep Minutes 2018-04-23"
date: 2018-04-23
layout: default
category:
  - variant_representation_minutes
---
Michael: Set up a gitub repository: https://github.com/ga4gh-gks, have a dev site and a place where future repositories could be put.  Will be filled out. [ACTION] All should suggest what can be put here.

Larry: All links to Google docs will be placed here.

* Michael:  How much of this should be open and visible?

* Larry: There is currently a google drive where this is currently organized.

Michael: [ACTION] Melissa to make a list of important + public docs

Larry: Recap of past meetings.  https://docs.google.com/document/d/1UTjAB-Nh2t7UCCTVl1VdoXTP8HK0Y4LmDEAvqUBMOOY/edit
Slides here: https://drive.google.com/file/d/1Qw-_rC2tLNiKJc6WwjCl0H4T_tq6DCdi/view 

Talk about aligning build 37 sequence vs NG sequence.
Importance of strandedness and directionality, HL7 went with Watson and Crick instead of +/-.

Karen: Why go back to Watson and Crick?  Everything in bioinformatics uses +/-.
Larry: Let’s stick with +/-, will feedback to Bob re HL7.

If you look at deletions on the + vs - strand, right shifting results in differences in the reverse complement.  Left shift on the - strand in terms of the + strand? NC vs NG you have a different set of numbering.  What are the implications?
Reece: Projecting a variant from a - strand to the + strand needs to be normalized again.  

Larry to Reece: VMC Bundles, they are just a mechanism to package things in a message, and not identifiable themselves, correct?
Reece: Yes.  The intention was to create an internally consistent set of data.  If you want to talk about genotypes, you need to talk about haplotypes, then alleles.  What information do you want to send to make sure that the receiver has a complete picture.
Larry: So, technically, you could send a bundle without location information?
Reece: We should do what serves the broadest number of cases and worry about optimization later.  Sending partial packets is an optimization.
Larry:  Why is there no information model for sequences?
Reece: It is intentional and a slightly messy area.  There was a decision that we didn’t want to be another source of sequences.  We’re going to rely on a universe of sequences, so we need a way to name those.  Then wanting to come up with digests for variations, and make sure that those digests are based on underlying data, we needed a way to have an intrinsic identifier without a sequence.
Piotr: The same sequence can have different identifiers and alignments, so how can you have an information model based on the sequence?
Reece: Great point.  We don’t have any way to refer to alignments as first class objects.  We assume that a refseq id has an implied alignment to the genome.  NCBI doesn’t recognize that.  Have found the same versioned accession has multiple alignments to the genomes and has impacts on clinical interpretations to the genome.  Until we come to a point where we treat alignments as first class objects and digest them, we will always have implied information.
Chris: This suggests that alignments should be first class objects.
Reece: I hash alignments.
Larry: Should we deal with alignments as first class objects now or recognize it as something we deal with later?
Chris: One potential way to proceed is we are starting to get an idea of what the properties of the relationships are.  We all basically know what the alignment means in this example.  We’ll have to circle back around and say “what do we really mean when we say ‘alignment’?”
Reece: Equivalence will depend on an equivalence function, which can be lots of different things. One could even be “equivalence under a particular alignment”.  
Larry: Sounds like you’re trying to describe the equivalence vs computational structures which could represent the alignment
Chris: I would like to see alignments represented in the final outcome in such a way that I would be able to know that this allele on this sequence is related to that allele on that sequence as long as sequence A is aligned to sequence B with these values.
Larry: If we were to put an alignment in here, it would go inside the VMC spec
Reece: Yes. That we don’t track alignments as first class objects bothers me from an information standpoint. In practical terms, it’s a small problem. Layer it on as a subsequent version.

Larry: Continued on slide 12.
Piotr: Genes can be aligned to + or - strand in different builds.
Reece: VCF has no concept of -
Larry: So always right shift on the +.  These two sequences are analogous, but don’t align.  How do we define this type of equivalence.
Piotr: Use SPDI approach.  Calculate and align a whole region.
Larry: If having the same resulting sequence yields an equivalent sequence, what is the size of the region we should be looking at to determine this equivalence?
Reece: 2 issues need to be separated: What framework need to support kinds of relationships among variants? What are the kinds of relationships? The variants we’re talking about here (examples 2 & 3) are analogous alleles which are projected through an alignment onto another sequence.  Difference with the NG is the involvement of the - strand.  
Larry: Example 4, slide 17: NG vs NM is this a different kind of an analogy than an NC to and NG?
Chris: I don’t see a huge difference. Both have a relationship that is reliant upon some mapping onto an alignment. This one is different because you are dealing with introns
Larry: Comparing two DNA sequences vs comparing DNA and RNA seem like different things as they align differently.  RNA doesn’t involve strandedness.
[ACTION] Please send me more complex examples
