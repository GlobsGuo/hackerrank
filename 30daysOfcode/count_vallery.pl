#!/usr/bin/perl
use v5.16;
use strict;
use diagnostics;

sub count_valley {
	my $n = shift;
	my @steps = split '', shift;
	my ($cur, $former, $val) = (0, 0, 0);
	foreach my $step (@steps) {
		if ($step eq 'U') {
			$cur ++;
		} else {
			$cur --;
		}
		if ($cur eq 0) {
			$val ++ if ($former < 0);
		}
		$former = $cur;
	}
	$val;
}

my $n = 8;
my $steps = "UDDDUDUU";
print count_valley($n, $steps);
