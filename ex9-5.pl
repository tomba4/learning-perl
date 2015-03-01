#!/usr/bin/perl
## Copyright (C) 2015 Yours Truly

use 5.010;
use strict;

$^I = ".bak";
my %files;
my %files_found;
my @OLD_ARGV = @ARGV;

while(<>) {
  if(/\#\# Copyright/) {
    $files_found{$ARGV} = 1;
  }
}

@ARGV = @OLD_ARGV;

while(<>) {
  if(exists $files_found{$ARGV}) {
    next;
  }

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
