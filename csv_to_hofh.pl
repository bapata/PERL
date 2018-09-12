#!/usr/bin/perl
# Parsing lines
# <field1>;<field2>;<field3a,field3b,field3c>
# to generate hash of the form <field1>=><field2>=>[field3a,field3b,field3c]
#
# Just run it to see the output
# ./<this-script>
#
use Data::Dumper;

sub to_hoa {
  my @array = @_;
  my %ret_hash;
  my $cnt = scalar(@array);
  my @value = split(/\,/,@array[1..($cnt-1)]);
  $ret_hash{$array[0]} = \@value;
  return \%ret_hash;
}

my %hoh;
while(<DATA>) {
  chomp;
  @fields = split(/\;/);
  my $cnt = scalar(@fields);
  $hoh{$fields[0]} = to_hoa(@fields[1..($cnt-1)])
}
print "<nameserver>=><dns_record>=><response-list>\n";
print Dumper(\%hoh);

__DATA__
1.1.1.1;apple.com;192.168.1.1,192.168.1.2
1.1.1.2;ebay.com;172.24.1.1,172.24.1.2
1.1.1.3;uber.com;10.1.1.1,10.1.1.2
