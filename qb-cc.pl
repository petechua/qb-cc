#!/usr/bin/perl
use strict;
use warnings;
use autodie;  #So I dont have to worry about my file

# qb-cc Tool to initally help to fetch domain stats across region of QB deployments
# Usage:
# Author: Pete Chua
# Version: 1.0 Nov 2016

# Declare variables
my @region_entry;
my $num_region_entry;

# Declare configurable variables

system("clear");
print "Creating pre-requsites...\n";
print "="x25;
print "\n";

while (<>)
{
        chomp;
        #print "This is line $i:$_ \n";
        #$i++;
        
        if(!/#/)
        {
                #print "SwiftServe DA found!\n";
		my @temprow = split / /, $_;
		print "@temprow";
		push(@region_entry,$_);
		$num_region_entry++;

		#print "$_[0] and some text $_[1]";

        }
        else
        {
                #print "No DA found!\n";
        }
}
#print "@region_entry";
#print "$num_region_entry";