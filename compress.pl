#!/usr/bin/perl

# USAGE:  echo aaaaaabbbbcccccc | ./compress.pl
# OUTPUT: 6a4b6c
#

my %h, $ii,@a;
while(<>) {
  chomp;
  @a=split(//,$_);
  foreach $ii (@a) { $h{$ii}++; }
}
foreach $ii (sort keys(%h)) { printf("%d%s",$h{$ii},$ii); }
printf("\n");

