#!/usr/local/bin/perl

$string = <STDIN>;
chomp $string;
if($string =~ /ATG([ATCG]{3})+(TAA|TAG|TGA)/){
    print "ACCEPTED";
}
else{
    print "REJECTED";
}