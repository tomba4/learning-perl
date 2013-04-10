#!/usr/bin/perl
use strict;
use 5.010;

while(<>) {
  if(/wilma.*fred|fred.*wilma/) {
    print "This line matches: $_";
  }
}
