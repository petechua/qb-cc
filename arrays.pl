#!/usr/bin/perl
use strict;
use warnings;
use autodie;  #So I dont have to worry about my file

my @array = ([1, 2], [3, 4], [5, 6]);

my $top_left     = $array[0][0];  # 1
my $bottom_right = $array[2][1];  # 9

print "@$_\n" for @array;
print "Top_left:".$top_left."\n";
print "Botton_right:".$bottom_right."\n";