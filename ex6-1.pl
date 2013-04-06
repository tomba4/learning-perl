#!/usr/bin/perl
use strict;
use 5.010;

my %names = (fred => 'flinstone', barney => 'rubble', wilma => 'flinstone');

print "Please enter given name: ";

chomp(my $name=<STDIN>);

if(exists $names{$name}) {
  say "Family name of $name is $names{$name}";
} else {
  say "Family name of $name not found";
}
