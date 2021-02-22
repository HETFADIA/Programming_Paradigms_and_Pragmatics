my ($array) = @ARGV;
if (not defined $array) {
  die "Error: No input files.\n";
}
open($fh,"<",$ARGV[0]);
while ( $line = <$fh> ) {
    print "$line";
    
}
close($fh);
