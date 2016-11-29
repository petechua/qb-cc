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
			my @temp_row = split / /, $_;
			#print "@temp_row";
			#print "0 is: @temp_row[0]"." and "."1 is: @temp_row[1]\n" ;
			for(my $i=0;$i<3;$i++)
			{
				for(my $j=0;$j<2;$j++)
				{
					$region_entry[$i][$j]=@temp_row[$j];
				}
			}
		
		#push(@region_entry,$_);
		#$num_region_entry++;

		#print "$_[0] and some text $_[1]";

        }
        else
        {
                #print "No DA found!\n";
        }
}
print "@$_\n" for @region_entry;
#print "@region_entry[0][0]";
#print "$num_region_entry";