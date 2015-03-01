#!/usr/bin/perl
## Copyright (C) 2015 Yours Truly

use 5.010;
use strict;

my $what = 'fred|barney';

while(<>) {
  if(/($what){3}/) {
   say "Match!";
  } else {
   say "No match";
  }
}
