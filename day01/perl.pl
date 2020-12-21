use strict;
use warnings;

open(my $in, "<", "input") or die "$!";
my @lines = <$in>;

# Super naive Solutions, but they work!

sub part1 {
  OUTER: for $a (@lines) {
      for $b (@lines) {
          if ($a + $b == 2020) {
              my $product = $a * $b;
              print("Product Part 1: $product \n");
              last OUTER;
          }
      }
    }
}

sub part2 {
  OUTER: for $a (@lines) {
      for $b (@lines) {
          for $_ (@lines) {
              if ($a + $b + $_ == 2020) {
                  my $product = $a * $b * $_;
                  print("Product Part 2: $product \n");
                  last OUTER;
              }
          }
      }
  }
}


part1;
part2;
