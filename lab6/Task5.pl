#!/usr/local/bin/perl
$array = "micro.txt";
if (not defined $array) {
  die "Error: No input files.\n";
}

if(not defined open($fh,"<","micro.txt")){
    die "There is no such file named $micro.txt in the directory.\n";
}
$counter=0;
while ( $line = <$fh> ) {
    foreach $word (split(' ', $line)) {
        
        if($word=~/^(a)(\w)\g2\w*/i){
            print "$&","\n";
            $counter++;
        }
    }
}
print "There are ",$counter;
close($fh);