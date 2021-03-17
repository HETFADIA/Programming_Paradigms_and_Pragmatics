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
        if($word=~/(\w\w*[A-Z]\w*\w)/){
            print $1,"\n";
            $counter++;
        }
    }
}
print "There are ",$counter," words with a capital letter in the middle.";
close($fh);