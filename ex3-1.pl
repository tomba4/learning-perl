#!/usr/bin/perl

print "Please enter a list of strings in separate lines:\n";
@lines = <STDIN>;

print "\nEntered lines in reverse order:\n", reverse @lines;
