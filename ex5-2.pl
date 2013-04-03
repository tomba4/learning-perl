#!/usr/bin/perl
use strict;
use 5.010;

say "Please enter a list of strings in separate lines:";

chomp(my @strings = <STDIN>);

say "1234567890" x 4;

foreach(@strings) {
  printf "%20s\n", $_;
}
