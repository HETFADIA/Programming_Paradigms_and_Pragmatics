#!/usr/local/bin/perl

print "Enter the string: ";
$string = <>;

print "Enter the delimiting characters: ";
$delimiters = <>;

$string =~ s/[$delimiters]/\n/g;
# print "The output is:\n";
print "$string";