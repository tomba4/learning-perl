#!/usr/bin/perl
use 5.014;
use strict;

die "Usage: $0 <file> ... [file]\n" unless $#ARGV >= 0;

foreach my $file(@ARGV)
{
  say $file if -e -r -w -o $file;
}
