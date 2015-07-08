#!/usr/bin/perl
use 5.014;
use strict;
use local::lib;
use DateTime ();

die "Usage: $0 <year> <month> <day>\n" unless $#ARGV > 1;

my ($year, $month, $day) = @ARGV;

my $dateNow = DateTime->now;
my $dateWanted = DateTime->new(
  year  => $year,
  month => $month,
  day   => $day);

my $dateDiff = $dateNow - $dateWanted;

#my $yearDiff = $dateDiff->years;
#my $dayDiff = $dateDiff->days;
#my $monthDiff = $dateDiff->months;
#say "$yearDiff years, $monthDiff months, and $dayDiff days";

my @units = $dateDiff->in_units( qw/years months days/ );
printf "%s years, %s months, and %s days\n", @units;