#!/usr/bin/env perl

#
## This script reads input from stdin and adds 2 numbers
## The input format is
## <input-line-count>
## <a1> <a2>
## <b1> <b2>
## ..
## ..

# Expected output is
# <a1> + <a2>
# <b1> + <b2>
# ..

# Read file contents. This may be a bad idea if file is huge

sub sum_of_two {
  my ($num1,$num2) = @_;

  return ($num1 + $num2);
}


# Main starts here
my @file_contents = <DATA>;

# First line is <input-line-count>
my $input_line_count = $file_contents[0];

for (my $ii=1; $ii<=$input_line_count; $ii++) {
  my ($num1,$num2) = split(/\s+/,$file_contents[$ii]);
  my $sum = sum_of_two($num1,$num2);
  print $sum . "\n";
}

__DATA__
2
5 6
4 3
