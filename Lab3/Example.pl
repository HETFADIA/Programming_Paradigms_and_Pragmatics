$first = (a,b,c)[0];
print "$first\n";
($name,$age) = ('Raman',20);


%fruits = (
'apple' =>'red',
'banana'=>'yellow',
'grape' =>'black'
);
print "colour of apple is $fruits{apple}\n";
$fruits{'orange'}='orange';



$mark = 40;
if ($mark>75){
    print "passed with distinction\n";
}
elsif ($mark<35){
    print "failed\n";
}
else {
    print "passed\n";
}

print "variable a is >10" if ($a>10);


for ($i=0;$i<10;$i++){
    print "i=$i\n";
}

foreach $i (a,b,c) {
    print uc $i;
}

foreach $f (keys %fruits ) {
    print "Color of $f is $fruits{$f}\n" ;
}

$i=0;
while ($i<10){
    print "i=$i\n";
    $i++;
}

print "enter your name ";
$name=<STDIN>;

print "Welcome $name\n";

foreach (a,b,c){
    print uc ;
}

foreach (1..10){
    print ;
}

$v1 = 10;
$v2 = 20;
add($v1,$v2);
sub add {
    ($a,$b)=@_;
    print $a+$b;
}

$v1=10; $v2=30; #v1, v2 global
$v3=30;
$v3=add( $v1,$v2 );
sub add{
my ($i,$j)=@_;
    print "inside add sub value of i=$i j=$j\n";
    print "inside add sub value of globals v1=$v1 v2=$v2 v3=$v3\n";
    return $i+$j;
}
print " Value of globals v1=$v1 v2=$v3\n";
print " Value of scoped variables v3=$v3\n";
print " Value of variables inside sub i=$i j=$j\n";


for (my $i=0; $i<10; $i++ ) {
    print "inside for i=$i\n";
}
print "outside for i=$i\n";

use strict;
my $v1=10;
my $v2=20;
add ( $v1,$v2 );
sub add {
    my ($a, $b)=@_;
    print $a+$b;
}
