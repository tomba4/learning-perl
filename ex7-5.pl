#!/usr/bin/perl
use strict;
use 5.010;

while(<>) {
  if(/(\S)\1/) {
    print "This line matches: $_";
  }
}
