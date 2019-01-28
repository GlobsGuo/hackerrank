#!/usr/bin/perl
use v5.16;
use strict;
use diagnostics;

chomp(my $input = <STDIN>);
my @array = split /\s+/, $input;
foreach my $i(0...@array - 1) {
	print "$array[@array - 1 - $i] ";
}

