use strict;
use warnings;

open(my $in, "<", "input") or die "$!";
my @lines = <$in>;
my @numbers = sort { $a <=> $b } @lines;

push(@numbers, $numbers[-1] + 3);

my $last = 0;

my $num1 = 0;
my $num3 = 0;

for $_ (@numbers) {
    my $diff = $_ - $last;

    if ($diff == 1) {
        $num1 += 1;
    }
    if ($diff == 3) {
        $num3 += 1;
    }

    $last = $_;
}

my $product = $num1 * $num3;

print "Num 1: $num1 \n";
print "Num 3: $num3 \n";
print "$product \n";
