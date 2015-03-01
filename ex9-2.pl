#!/usr/bin/perl
use 5.010;
use strict;

$^I = ".bak";
my %files;

while(<>) {
  s/fred/Larry/i;
  print;

  $files{$ARGV} = 1;
}

foreach my $file (keys %files) {
  `mv $file $file.out`;
  `mv $file.bak $file`;
}
