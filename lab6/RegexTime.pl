#!/usr/local/bin/perl

$time = <>;
sub check_time{

    if($time=~/\d{1,2}\.\d{2} [ap]m/){
        return "True";
    }
    return "False";
}
$answer=check_time();
print $answer;