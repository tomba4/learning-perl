#!/usr/bin/perl
use strict;
use 5.010;

while(<>) {
  if(/[A-Z][a-z]+/) {
    print "This line matches: $_";
  }
}
