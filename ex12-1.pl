#!/usr/bin/perl
use 5.014;
use strict;

sub printInfo
{
  my $file = shift @_;

  if (not -e $file)
  {
    say "$file doesn't exist";
    return 0;
  }

  print "$file: ", -r $file ? "r" : "-", -w $file ? "w" : "-", -x $file ? "x" : "-", "\n";
}

die "Usage: $0 <file> ... [file]\n" unless $#ARGV >= 0;

foreach my $file(@ARGV)
{
  &printInfo($file);
}
