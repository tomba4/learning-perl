#!/usr/bin/perl
use strict;
use 5.010;

while(<>) {
  if(/fred/) {
    print "This line matches: $_";
  }
}
