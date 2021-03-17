#!/usr/local/bin/perl

$location = 'micro.txt';
open($fh, "<", $location) or die "Cannot open the file, invalid location!\n";

$count = 0;
while($line = <$fh>){
    chomp $line;
    @words = split /\s+/, $line;
    foreach $word (@words){
        if($word =~ /".*[\-']{0}.*"/){
            print "$&\n";
            ++$count;
        }
    }
}
print "\nThe count is $count";
close($fh);
