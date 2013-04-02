#!/usr/bin/perl

print "Please enter the first number: ";
chomp($first = <STDIN>);

print "Please enter the second number: ";
chomp($second = <STDIN>);

$result = $first * $second;

print "The result is $result\n";
