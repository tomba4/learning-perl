#!/usr/bin/perl
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
