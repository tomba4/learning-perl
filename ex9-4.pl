#!/usr/bin/perl
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
    say "Shabang found";
    s/(.*)/$1\n\#\# Copyright \(C\) 2015 Yours Truly\n/;
    print;
  } else { next }

}
