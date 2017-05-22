#!/usr/bin/perl
#2017/05/22
#By Li Lei
#this script is to changed the name for 9k_Alchemy call.
#usage:

use strict;
use warnings;
my ($name_key, $seq) = @ARGV;
open(IN1, $name_key) or die "Could not open this $name_key";

my %hash;
foreach my $row (<IN1>){
chomp $row;
my @rtemp = split(/\t/,$row);
   $hash{$rtemp[1]}=$rtemp[0];
}

close IN1;

open(IN2, $seq) or die "Could not open this $seq";
my $header = <IN2>;
foreach my $row (<IN2>){
	       if ($row =~ /^\#/){
	          print "$row";
	       }
	       else{
	       		chomp $row;
           		my @rtemp = split(/\s+/,$row);
           		if (exists $hash{$rtemp[0]}){
               		#print "$hash{$rtemp[0]}\t$rtemp[1]\t$rtemp[2]\n";
               		print "$hash{$rtemp[0]}\t$rtemp[1]\t$rtemp[2]\t$rtemp[3]\t$rtemp[4]\t$rtemp[5]\t$rtemp[6]\t$rtemp[7]\t$rtemp[8]\t$rtemp[9]\t$rtemp[10]\t$rtemp[11]\t$rtemp[12]\t$rtemp[13]\n";
           		}
           		else{
           	     	print "$row\n";
           			}
       		}
}

close IN2;