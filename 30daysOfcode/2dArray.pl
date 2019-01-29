#!/usr/bin/perl
use v5.16;
use strict;
use diagnostics;

my @arr = ();
for (1...6) {
	my $arr_item = <STDIN>;
	$arr_item =~ s/\s+$//;
	my @arr_item = split /\s+/, $arr_item;
	push @arr, \@arr_item;
}

my ($sum, $max) = (0, -90);
foreach my $i (0...3) {
	foreach my $j (0...3) {
		$sum = $arr[$i][$j] + $arr[$i][$j + 1] + $arr[$i][$j + 2]
			+ $arr[$i + 1][$j + 1] 
			+ $arr[$i + 2][$j] + $arr[$i + 2][$j + 1] + $arr[$i + 2][$j + 2];
		if ($sum > $max) { $max = $sum }
	}
}
print $max;

