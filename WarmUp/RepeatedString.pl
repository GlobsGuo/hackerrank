#!/usr/bin/perl
use v5.16;
use strict;
use diagnostics;

chomp( my $string = <STDIN> );
chomp( my $n = <STDIN> );

my $len = length $string;
my $a = sprintf("%d", $n / $len);
my $remain = $n % $len;
my $sum = 0;
my( $a1, $a2 ) = ( 0, 0 );
my @array = split '', $string;
foreach my $c (0...$#array) {
	if ($array[$c] eq 'a') {
		if ($c < $remain) {
			$a2 ++;
		}
		$a1 ++;
	}
}
$sum = $a1 * $a + $a2;
print $sum;
