#!/usr/bin/perl
use 5.010;
use strict;

my $secretNumber = int(1 + rand 100);

say "Welcome! What is your guess?";

while(1)
{
  chomp($_ = <STDIN>);
  
  if($_ == $secretNumber)
  {
    say "You guessed right!";
    exit;
  }
  
  if ($_ eq "exit" || $_ eq "quit")
  {
    say "Good bye";
    exit;
  }
  
  my $result = $_ < $secretNumber ? "Too low" : "Too high";
  say $result;
}
