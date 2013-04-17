#!/usr/bin/perl
use 5.010;
use strict;

while(<>) {
  chomp;
  if(/(?<word>\b\w*a\b)(?<upToFive>.{0,5})/) {
    print "Matched: |$`<$&>$'|\n";
    print "'word' contains '$+{word}', 'upToFive' contains '$+{upToFive}'\n";
  } else {
    print "No match: |$_|\n";
  }
}
