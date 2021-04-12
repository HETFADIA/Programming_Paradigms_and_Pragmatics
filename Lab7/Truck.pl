#!/usr/local/bin/perl
print "Enter the string: ";
$string=<>;

#matching with red then phrase
$red_then_phrase=qr/red\s\w*\s*\w*\s*pick[- ]?up truck/;
#matching the pickup truck then red
$phrase_then_red=qr/pick[- ]?up truck\s\w*\s*\w*\s*red/;
$price= qr/.+\$\d+\.?\d*/;
if($string =~ /($red_then_phrase|$phrase_then_red)$price/){
    print "ACCEPTED\n";
}
else{
    print "REJECTED\n";
}