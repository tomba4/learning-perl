#!/usr/bin/perl
use 5.014;
use strict;

die "Usage: $0 <file> ... [file]\n" unless $#ARGV >= 0;

my $DEBUG = 0;
my $oldestFile;
my $oldestAge;

foreach my $file(@ARGV)
{
  my $age = (stat($file))[9];
  say "$file ($age)" if $DEBUG;
  if(not $oldestAge or $age < $oldestAge)
  {
    say "-> New oldest: $file ($age)"  if $DEBUG;
    $oldestAge = $age;
    $oldestFile = $file;
  }
}

print "\n" if $DEBUG;
say "Oldest file is $oldestFile (modified ", scalar localtime $oldestAge, ")";
