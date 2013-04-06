#!/usr/bin/perl
use strict;
use 5.010;

my %words;

say "Please enter series of words in separate lines:";

chomp(my @words = <STDIN>);

foreach(@words) {
  $words{$_} += 1;
}

say "\nSorted words:";

foreach(sort keys %words) {
  say "$_ => $words{$_}";
}
