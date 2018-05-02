---
title:  "VarAnn Minutes 2018-02-14"
date: 2018-02-14
layout: default
category:
  - variant_annotation_minutes
---

### Variant Representation 
##### Chairs: Matt Brush, Javier Lopez
##### Attendees “Name (Affiliation)”: Melissa Cline (BRCA Exchange), Andy Yates, Raymond Dalgleish, Shirley Li, Larry Babb, Steven Hart, Zhenyu Zhang (University of Chicago), Sarah Hunt (EMBL-EBI)


##### Minutes:

Majority of call was spent starting to define/characterize 'Variant Annotations', and discussing the scope of our modeling effort.  Notes for this are in the [google doc here](https://docs.google.com/document/d/1csUrC4kX6G1V1GIz07btQQ3oL_cdDPJShuauL_uCjEw/edit#).
 
1. Discussed various issues around how to describe the variant that is the subject of a variant annotation. 
- RD raised the need for a parsable string representation for human users who may not be able to or want to deal with structured representations of a variant (e.g. xml/json objects). 
- LB raised idea of 'canonical' vs 'contextual' alleles, as per the ClinGen Allele model, as one way of modeling/conceptualizing some of the issues that arose.
- There was general agreement that we should support structured representations that separate different aspects of a variant (e.g. the reference allele, the variant allele, the position, the reference sequence), and also a string that captures this information in human readable way.  HGVS sufficient here?
- Outcome was general agreement that this is more in scope for the VMC/Variant Representation group, but that the VA group should provide feedback and requirements, and use the VMC model in our work.

2. Defining/Characterizing Variant Annotations (section II of doc)
- was general agreement about the utility of the definition and conceptual model of a variant annotation presented in Section II of the doc  (although mostly silent agreement - will want more explicit feedback after time to digest)
- RD: we will want to consider terms other efforts (e.g. the VMC) are using tin there vernacular and models when naming the concepts in this model, and be sure to make our names unique and unambiguous (e.g. 'subject' may not be sufficient -> perhaps 'annotation subject')
- It was proposed that for now, since the subject of all annotations in our work will be variants, that we just call this 'variant'.
- SL raised the discussion about what types of genetic entities and variations are in scope - e.g. larger structural rearrangements, trisomies.
- MC pointed out that BRCA exchange and other efforts annotate haplotypes. 
- Agreed that this issue should be brought to larger group for discussion. 
- AY suggested that ultimately this may come down to what is needed by driver projects, and what requirements are identified in our use cases.

3. Quickly reviewed of Section III of the doc, describing separable areas of modeling, and what is in scope for our efforts vs what we can adopt from related efforts.  no real feedback here.  see gdoc for more

4. Reviewed categories of Variant Annotation (section IV of doc)
- list of variant annotation types as an initial attempt to enumerate and name categories here. just a straw man to spark discussion.
- not much time for feedback - will be discussed on next call.

5. One possible next step may be to assemble a corpus of example variant annotations spanning the categories defined above, that will help with upcoming tasks of  defining a conceptual and terminological framework for talking about annotations, and defining the scope of our efforts.
