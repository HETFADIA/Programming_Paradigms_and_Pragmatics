#!/usr/local/bin/perl

print "Input the String\n";
$string = <STDIN>;

print "Input the delimiting characters\n";
$delimiters = <STDIN>;

chomp $delimiters;
$delimiter = qr/[$delimiters]/;

$string =~ s/$delimiter/\n/g;

print "$string\n";