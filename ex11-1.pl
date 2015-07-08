#!/usr/bin/perl
use 5.014;
use strict;
use local::lib;
use Module::CoreList ();

my %modules = %{ $Module::CoreList::version{5.014} };

foreach my $key(keys %modules)
{
  say "$key: $modules{$key}";
}