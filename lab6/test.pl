#!/usr/local/bin/perl
$array = "test2.txt";
if (not defined $array) {
  die "Error: No input files.\n";
}

if(not defined open($fh,"<","test2.txt")){
    die "There is no such file named $micro.txt in the directory.\n";
}
$counter=0;
while ( $line = <$fh> ) {        
    if($line=~/"\w+\s{0,1}\w+"/){
        print "$&","\n";
        $counter++;
    }
    
}
print "There are ",$counter;
close($fh);