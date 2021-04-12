#!/usr/local/bin/perl
print "Enter the DNA sequence: ";
$string = <>;

#comparing the input with dna sequence
if($string =~ /ATG([ATCG]{3})+(TAA|TAG|TGA)/){
    print "ACCEPTED\n";
}
else{
    print "REJECTED\n";
}