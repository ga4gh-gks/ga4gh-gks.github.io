---
title:  "VarRep Minutes 2018-04-16"
date: 2018-04-16
layout: default
category:
  - variant_representation_minutes
---

### Var Rep Working Call
#### - equiv/analog vmc examples -
##### Chairs: Larry Babb
##### Attendees “Name (Affiliation)”

* Michael Baudis
* Piotr Pawliczek (ClinGen)
* Andy Yates (EMBL-EBI)
* Melissa Cline (UCSC)
* Brian Walsh(OHSU)
* Deepak Unni (LBNL)
* Crista Martin
* Ronak Patel (BCM/ClinGen)
* Sarah Hunt (EMBL-EBI)
* Tristan Nelson
* Rishi Nag (GA4GH)
* Karen Eilbeck (U of Utah, Sequence Ontology)
* Bob Freimuth (mayo Clinic)
* Bizon

#### Minutes

- LB: - opening discussion about VMC => transition to adoption
- MB: - move forward w/ adoption…
- LB, MB: - discussions about Git, parceling out topics to work on there (issues etc)
- BW: - are relationships part of the spec? -> example for extension work mode
- LB: - everybody contribute …
- LB: - [use cases/examples](https://docs.google.com/spreadsheets/d/1o85GwckB_peOOEZzP608Nz0X7_9NUPvqrJkKL5A9JCQ/edit?usp=sharing) … important for tracking, also for later discussions
- Use case based review of VMC for coverage of the needed concepts:
- VMC => digests expected to be possible (required? MB) for all levels (seq, loc, allele, hap, genotype)
- Equivalence example of deletions of different base position in repetitive region
- MB: points to lack of reference base representation (LB: design decision)
- BW: computability of identifiers when using different accessions representing same sequence … LB, PP: only if compute over sequence => same identifier; PP: however, transcripts w/ same sequence may be different based on start codon
- BW: start with most simple example for representation and add on that
- Are bundles the same if output sequence is, or only if all elements are (as per current VMC… symmetric/transitive/reflexive)? PP, LB …
- PP: “analogue relation” if same sequence output; not covered yet => 2nd type of equivalence in resulting sequence (LB)
- LB: calling the “output of an allele” something different?
- BF: Examples good, needed for define e.g. “types of equivalence” => go through, look for emerging patterns
- Next: same accessions on different versions (37 vs. 38):
- MB: same - same; even more than equivalence; but comp. Differences from changes in ref/alignment
- LB, PP: differences from alignments/aligners; “aligned allele equivalence”

=> More detailed notes from working call can be found [here](https://docs.google.com/document/d/1exzE9hLaMeYsQ6Uu5OQOJbO_hJjyBWu--vqdboWHLYI/edit#heading=h.tms7m01cjme3).

=> [**Archive**](/variant_representation_minutes.html) of previous meeting minutes
