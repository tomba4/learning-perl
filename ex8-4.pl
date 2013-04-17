#!/usr/bin/perl
use 5.010;
use strict;

while(<>) {
  chomp;
  if(/(?<word_label>\b\w*a\b)/) {
    print "Matched: |$`<$&>$'|\n";
    print "'word_label' contains '$+{word_label}'\n";
  } else {
    print "No match: |$_|\n";
  }
}
