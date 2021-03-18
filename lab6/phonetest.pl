#!/usr/local/bin/perl

$phone=<>;
if($phone=~/(\b\d{10}\b|\b\d{3}\s\d{3}\s\d{4}\b|\b\d{3}-\d{3}-\d{4})\b/){
    print "hey there ";
    print "True\n";
}
if($phone=~/\b\d{10}\b/){
    print "True\n";
}
elsif($phone=~/\d{3}\s\d{3}\s\d{4}/){
    print "hi";
    print "True\n";
}
elsif($phone=~/\d{3}-\d{3}-\d{4}/){
    print "hey";
    print "True\n";
}
else{
    print "False\n";
}