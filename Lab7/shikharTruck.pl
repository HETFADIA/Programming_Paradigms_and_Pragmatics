#!/usr/local/bin/perl

$string = <STDIN>;
chomp $string;
$falserev = qr/red\s\w*\s*\w*\s*pick(|-| )up truck/;
$truerev = qr/pick(|-| )up truck\s\w*\s*\w*\s*red/;
if($string =~ /($falserev|$truerev).+\$\d+\.?\d*/){
    print "ACCEPTED";
}
else{
    print "REJECTED";
}