#!/usr/bin/perl
use v5.16;
use strict;
use diagnostics;

chomp( my $n = <STDIN> );
sub factorial {
#	my $cur = shift;
	if ($_[0] <= 1) { 1 }
	else { $_[0] * factorial($_[0] - 1) }
}

print "$n! = ", factorial($n), "\n";
