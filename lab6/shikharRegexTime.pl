#!/usr/local/bin/perl

$string = <STDIN>;
chomp $string;
if($string =~ /(\d{1,2})\.(\d{2})\s(am|pm)/){
    print "TRUE";
}
else{
    print "FALSE";
}