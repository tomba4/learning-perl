#!/usr/bin/perl
## Copyright (C) 2015 Yours Truly

use 5.010;
use strict;

$^I = ".bak";
my %files;

while(<>) {
  chomp;
  s/fred/\n/gi; # Replace 'fred' with placeholder ('\n')
  s/wilma/Fred/gi;
  s/\n/Wilma/g;
  say;

  $files{$ARGV} = 1;
}

foreach my $file (keys %files) {
  `mv $file $file.out`;
  `mv $file.bak $file`;
}
