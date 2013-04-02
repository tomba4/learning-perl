#!/usr/bin/perl

print "Please enter a string: ";
$string = <STDIN>;

print "Please enter a number: ";
chomp($number = <STDIN>);

$result = $string x $number;

print "The result is:\n$result";
