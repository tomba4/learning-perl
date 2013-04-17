#!/usr/bin/perl
use 5.010;
use strict;

while(my $line = <>) {
  chomp($line);
  if($line =~ /\s\z/) {
    print "Matched: $line\n";
  }
}
