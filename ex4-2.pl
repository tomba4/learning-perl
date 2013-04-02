#!/usr/bin/perl
use strict;

sub total {
  my $sum;
  foreach(@_) {
    $sum += $_;
  }
  $sum;
}

print "The sum of numbers 1..1000 is " . total(1..1000) . "\n";
