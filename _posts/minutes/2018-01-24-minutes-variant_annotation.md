---
title:  "VarAnn Minutes 2018-01-24"
date: 2018-01-24
layout: default
category:
  - variant_annotation
tags:
  - minutes
---

### Variant Annotation
##### Chairs: Matt Brush, Javier Lopez
##### Attendees “Name (Affiliation)”: Andy Yates (EBI), Matt Brush (OHSG, Monarch), Javier Lopez (GeL), Steven Hart (Mayo Clinic), Larry Babb (Sunquest Information Systems, ClinGen), Chris Bizon (UNC/ClinGen), David Kreda (HMS DBMI consultant, HL7 CGWG, VMC), Raymond Dalgleish (University of Leicester, UK), Melissa Klien (BRCA Exchange), Fiona Cunningham (EBI), Sarah Hunt (ENSBL), Melissa Konopko (GA4GH), Robert Freimuth (Mayo, ClinGen), Keith Ellison (Veritas), Shirley (Molecular match, VICC)


##### Minutes:

Andy: Roadmap has been approved by the steering committee and will be the plan going forward.

Bob: the plan for the team is based on requirements gathered by the driver projects.  Any changes to the roadmap need to be aligned with needs of the driver projects.

Matt went over the work stream summary/straw man: https://docs.google.com/document/d/1oNKaGZJ8wuOlpvvLaS9C4LbVGYs_Cx98GGoG9e00jjw/edit?usp=sharing

Andy: We need to learn why some of the VATT products didn’t meet needs and make improvements this time.  We have driver project representatives here to make sure of that.

David: There is a distinction between data structures and the other aspects of the API which allow access, uploading, etc.  Are those things readily settled early on and can be verified be appropriate for the audiences irrespective of the data structures that the APIs then have to convey?

Andy: Robustness of the service will come from the basis of the model.  There are other GA4GH teams that will take care of the structure of the API (such as Discovery).

Steve:  Understand the data model first

Bob: When we say “data model”, we mean the conceptual model of the underlying semantic entities.  Defining semantics is key so we’re all on the same page.

David: At what point will there be mini implementations (like VMC) to help clarify and identify problems in the model.?

Andy:  We will make sure to get input from Reece when possible

Matt went over roadmap: https://docs.google.com/document/d/1Hu1t_JPtm1T12M5iJVPsZxDvE-OJp-munyWh-S7vu68/edit

Andy: Spec should be usable/implemented by a driver project prior to the 0.1 release. Early implementers should be regulars on the call.

[Action] Anyone who wants to join the regular call should contact Melissa Konopko.  She will send out a recruitment email.  Driver project contributors will be automatically added to the list.

Team leads will define processes and procedures for the team and email people when that is drafted.

Steve: We need to do a lit search and see what has already been done.

Andy: [ACTION] We need to set up a google doc where we can list similar efforts as well as explain what the driver projects are currently using and what they need.
