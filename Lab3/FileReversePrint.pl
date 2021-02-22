my ($array) = @ARGV;
if (not defined $array) {
  die "Error: No input files.\n";
}
open($fh,"<",$ARGV[0]);
@array=();


while ( $line = <$fh> ) {
    
    push @array,"$line";
    
}
close($fh);
print reverse(@array);
