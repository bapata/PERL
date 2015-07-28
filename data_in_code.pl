#!/usr/bin/env perl

use Data::Dumper;

# store it here after parsing
my %hash;

## Walk our data below
while(<DATA>) {
  chomp;
  my ($name,$city,$state) = split(/\,/);
  $hash{$name} = {CITY=>$city,STATE=>$state};
}

## Print it
print Dumper(\%hash);


__DATA__
john,reston,VA
mike,herndon,VA
kelly,gaithersburg,MD
bob,fairfax,VA
ken,sunnyvale,CA
dan,austin,TX
