#!/usr/bin/perl -w

use strict;
use POSIX qw/strftime/;
use File::Basename;

my $here_path   =   File::Basename::dirname( eval { ( caller() )[1] } );
my $today       =   strftime("%Y-%m-%d", localtime);
my $author      =   getlogin();
my $outputPath  =   $here_path.'/../_posts';
my $fileName    =   $today.'-'.$author.'-'."$^T"."$$".'.md';
my $mdfile      =   $outputPath.'/'.$fileName;
my $markdown    =   <<END;
---
title: "New Topic"
date: $today
layout: default
author: $author
excerpt_separator: <!--more-->
category:
  - news
---

## {{ page.title }}

<!--   Please edit the title above.                                 -->
<!--   Please edit the author above.                                -->
<!--   Please edit the category above if not "news".                -->
<!--   You may replace the `{{ page.title }}` above with your text. -->

<!--  CONTENT  -->



<!--more-->



<!-- / CONTENT -->

<div class="pagestamp">
{%if page.author %}
  {{page.author}},
{% endif %}
{{ page.date | date: "%Y-%m-%d" }}
</div>

END

open (FILE, ">", $mdfile) || warn 'output file '.$mdfile.' could not be opened.';
binmode(FILE, ":utf8");
print FILE  $markdown;
close FILE;

$mdfile         =~  s/\(/\\(/;
$mdfile         =~  s/\)/\\)/;
$mdfile         =~  s/ /\\ /g;

`open $mdfile`;


1;
