$number = <>;
$number=$number*1;
check(number);
sub check{
    if($number%400==0){
        print "Leap Year";
        return;
    }
    if($number%100==0){
        print "Not Leap Year";
        return;
    }
    if($number%4==0){
        print "Leap Year";
        return;
    }
    return $number%400;
}