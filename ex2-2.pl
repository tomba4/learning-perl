#!/usr/bin/perl

print "Please enter the radius: ";
chomp($radius = <STDIN>);
$PI = 3.14159;
$cir = 2*$PI*$radius;

print "Circumference = $cir\n";
