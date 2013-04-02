#!/usr/bin/perl
use strict;
use 5.010;

sub greet {
  state $person;
  my $who = shift(@_);
  if($person eq '') {
    print "Hi $who! You are the first one here!\n";
  } else {
    print "Hi $who! $person is also here!\n";
  }
  $person = $who;
}

greet("Fred");
greet("Barney");
