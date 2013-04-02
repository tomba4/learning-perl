#!/usr/bin/perl
use strict;
use 5.010;

sub greet {
  state @persons;
  my $who = shift;
  if(!@persons) {
    print "Hi $who! You are the first one here!\n";
  } else {
    print "Hi $who! I've seen: @persons\n";
  }
  push @persons, $who;
}

greet("Fred");
greet("Barney");
greet("Wilma");
greet("Betty");
