#!/usr/bin/env perl

use Data::Dumper;

#
## Script to parse CSV, store in a hash and dump it
#

my %pairs;
while(<DATA>) {
  my ($batsman1,$batsman2) = split(/\,/);
  chomp $batsman2;
  push @{$pair{$batsman1}},$batsman2; 
}

print Dumper(\%pair);

# Expected output
#$VAR1 = {
#          'dhoni' => [
#                       'kohli',
#                       'jadeja',
#                       'raina',
#                       'ajyankya'
#                     ],
#          'gavaskar' => [
#                          'kapil',
#                          'chetan',
#                          'kirmani',
#                          'keerti'
#                        ]
#        };

__DATA__
dhoni,kohli
dhoni,jadeja
dhoni,raina
dhoni,ajyankya
gavaskar,kapil
gavaskar,chetan
gavaskar,kirmani
gavaskar,keerti
