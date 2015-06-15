#!/usr/bin/perl
use strict;
use 5.010;

$ENV{ANOTHER} = undef;
my @sorted_keys = sort keys %ENV;
my $col_len;

push @sorted_keys, "YET_ANOTHER";

foreach(@sorted_keys) {
  if(length($_) > $col_len) {
    $col_len = length($_);
  }
}

say "Column length: $col_len";

foreach(@sorted_keys) {
  printf "%${col_len}s = %s\n", $_, $ENV{$_} // "(Undefined value)";
}
