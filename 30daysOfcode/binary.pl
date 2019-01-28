#!/usr/bin/perl
use v5.16;
use strict;
use diagnostics;

chomp( my $nu = <STDIN> );
my ($cur, $max) = (0, 0);
while ($nu) {
	if ($nu %2) { $cur ++ }
	else { 
		if ($cur > $max) { $max = $cur }
		$cur = 0;
	}
	$nu = $nu >> 1;
}
print $cur > $max ? $cur : $max;
