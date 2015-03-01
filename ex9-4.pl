#!/usr/bin/perl
## Copyright (C) 2015 Yours Truly

use 5.010;
use strict;

$^I = ".bak";
my %files;

while(<>) {
  if(exists $files{$ARGV}) {
    print;
    next;
  }

  $files{$ARGV} = 1;

  if(/#!/) {
    s/(.*)/$1\n\#\# Copyright \(C\) 2015 Yours Truly\n/;
    print;
  } else { next }

}
