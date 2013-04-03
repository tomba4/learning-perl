#!/usr/bin/perl
use strict;
use 5.010;

print "Please enter column width: ";

chomp(my $width = <STDIN>);

say "Please enter a list of strings in separate lines:";

chomp(my @strings = <STDIN>);

say "1234567890" x ($width / 10 + 1);

foreach(@strings) {
  printf "%${width}s\n", $_;
}
