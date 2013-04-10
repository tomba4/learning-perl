#!/usr/bin/perl
use strict;
use 5.010;

while(<>) {
  if(/[fF]red/) {
    print "This line matches: $_";
  }
}
