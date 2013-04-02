#!/usr/bin/perl

@names = qw/fred betty barney dino wilma pebbles bamm-bamm/;

print "Please enter a list of numbers in separate lines:\n";
chomp(@numbers = <STDIN>);

print "\nNames corresponding to the entered numbers:\n";

foreach (@numbers) {
  if($_ > @names) {
    print "<not found>\n";
  } else {
    print "$names[$_-1]\n";
  }
}
