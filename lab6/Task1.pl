#!/usr/local/bin/perl
$array = "micro.txt";
if (not defined $array) {
  die "Error: Input file not present in directory.\n";
}

if(not defined open($fh,"<","micro.txt")){
    die "There is no such file named $micro.txt in the directory.\n";
}
$counter=0;
while ( $line = <$fh> ) {
    if ($line =~ /[Vv]/) {
        print "$line";
        $counter++;
    }
}
print "The count is ",$counter,".\n";
close($fh);