#!/usr/local/bin/perl

$time = <>;
sub check_time{

    if($time=~/[0-2]\d\.[0-5]\d [ap]m/){
        return "True";
    }
    
    if($time=~/\d\.[0-5]\d [ap]m/){
        print "F";
        return "True";
    }
    return "False";
}
$answer=check_time();
print $answer;