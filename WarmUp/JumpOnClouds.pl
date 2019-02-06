#!/usr/bin/perl
use v5.16;
use strict;
use diagnostics;

chomp( my $n = <STDIN> );
chomp( my $arr = <STDIN> );
my @arr = split /\s/, $arr;
my $result = jumpingOnClouds(\@arr);
print $result;

#  1 2 3 4 5 6 7 8 9
#  1 1 1 2 2 3 3 4 4
sub jumpingOnClouds {
	my $ref = shift;
	my( $zero, $sum, $one ) = ( 0, 0, 0 );
	foreach my $n (@$ref) {
		if ($n eq '0') {
			$zero ++;
		} else {
			$one ++;
			$sum += $zero / 2;
			$sum = sprintf("%d", $sum);
			$zero = 0;
		}
	}
	$sum += $zero / 2;
	$sum = sprintf("%d", $sum);
	$sum + $one;
}
