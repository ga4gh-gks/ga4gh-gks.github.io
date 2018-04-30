---
title:  "VarRep Minutes 2018-03-26"
date: 2018-03-26
layout: default
category:
  - variant_representation_minutes
---

### Variant Representation
##### Chairs: Larry Babb, Michael Baudis
##### Attendees “Name (Affiliation)”:Bob Freimuth (Mayo Clinic), Shawn Rynearson (U of U), Piotr Pawliczek (BCM/ClinGen), Cristina Yenyxe González (EMBL-EBI), Melissa Cline (UC Santa Cruz), Kathy Tzeng (Optum) Ronak Patel (BCM/ClinGen)


####Minutes:

Cristina: Went over use case 12 per the document linked in the agenda.  Multi allelic variants, generally with multiple samples. 

Bob: The single line is unambiguous, whereas the multi line version is not: vmc should stick with single line version.

Shawn: The multi line version is usually due to normalization of the BT algorithm.  Will think about this and try to come up with a solution [ACTION]

Detailed discussion in document

Piotr: Went over Use Case 20.

20: Works for SNPs well, there is a problem with some more complicated insertions or deletions which are close to each other. Same haplotype can be split into simple alles in different ways. dbSNP issue? Tried to convert HGVS to SPDI, but it wasn’t able to detect that the two codes were the same.

Larry: VMC definition of haplotype is being refined to include that they must be contiguous.  Should we be able to say that the examples in #20 are truly equivalent?

Bob: Definition in VMC seems to indicate that a haplotype is a contiguous collection of contiguous alleles.

Larry: It is not entirely clear.  HGVS expression indicates that the example of a and b might be a haplotype

Bob: Yes, but you can’t make the same assumption with c and d and assume they are equivalent.  How big of a range are you looking at in order to determine equivalency?

Shawn: Haplotype in our model is a collection of sequence IDs, which is different than the way most people think of a haplotype.

Larry: Maybe to determine start and end would be to say that it starts at the earliest and ends at the latest point of the collections of alleles within it? Page 23, shows location id.

Bob:  Per the diagram, the haplotype blocks extend beyond the start and end of the alleles within it.

Larry: We should fix the diagram [ACTION].

Piotr: Example 20 is similar to trimming: see example 9.

Bob: 2 different concepts: 1) Resulting sequence after the edits are applied 2) Same mutations within the DNA sequence itself. Example D: both edits result in the same sequence.  From a phenotypic and functional standpoint, they are the same. But the original sequences are different and this might matter clinically. So, if the are equivalent depends on your definition of equivalence.  Need to define equivalence to include this concept.

Piotr: This can be the same issue with right shifting.

Larry: We may need to revisit the VMC term to account for this issue. [ACTION]

Michael: We can’t say that we will be able to determine all types of equivalence from all types of annotations.  Individual treatment of variants might be more sound than leaving determination of equivalence to a search algorithm.

Larry: We need to separate what the VMC talks about in terms of representing alleles from how you normalize them.  We should bring in Reece. We should consider SPDI and Piotr’s Allele Registry document for reference.

Larry: We are still waiting on the SPDI paper to be released.  Will ask Eric.
