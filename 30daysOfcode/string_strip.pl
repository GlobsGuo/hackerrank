#!/usr/bin/perl
use v5.16;
use strict;
use diagnostics;

chomp(my $n = <STDIN>);
my (@input, @output) = ((), ());
foreach my $i (1...$n) {
	chomp(my $string = <STDIN>);
	push @input, $string;
}

foreach my $string (@input) {
	my @chars = split '', $string;
	my (@even, @odd) = ((), ());
	foreach my $j (0..@chars-1) {
		if ($j % 2) {
			push @odd, $chars[$j];
		} else {
			push @even, $chars[$j];
		}
	}	
	push @even, ' ';
	push @odd, "\n";
	push @output, join('', @even);
	push @output, join('', @odd);
}
print foreach (@output); 
