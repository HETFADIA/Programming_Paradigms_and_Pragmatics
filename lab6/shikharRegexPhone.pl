#!/usr/local/bin/perl

$string = <STDIN>;
chomp $string;
if($string =~ /(?|(\d{10})|(\d{3}\s\d{3}\s\d{4})|(\d{3}\-\d{3}\-\d{4}))/){
    print "TRUE";
}
else{
    print "FALSE";
}