#!/usr/bin/perl

print "Please enter the radius: ";
chomp($radius = <STDIN>);

if($radius < 0) {
  $radius = 0;
}

$PI = 3.14159;
$cir = 2*$PI*$radius;

print "Circumference = $cir\n";
