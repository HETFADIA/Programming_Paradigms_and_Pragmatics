#!/usr/local/bin/perl
@words=('computer', 'radio', 'calculator', 'teacher', 'bureau', 'police', 'geometry', 'president', 'subject', 'country', 'enviroment', 'classroom', 'animals', 'province', 'month', 'politics', 'puzzle', 'instrument', 'kitchen', 'language', 'vampire', 'ghost', 'solution', 'service', 'software', 'virus', 'security', 'phonenumber', 'expert', 'website', 'agreement', 'support', 'compatibility', 'advanced', 'search', 'triathlon', 'immediately', 'encyclopedia', 'endurance', 'distance', 'nature', 'history', 'organization', 'international', 'championship', 'government', 'popularity', 'thousand', 'feature', 'wetsuit', 'fitness', 'legendary', 'variation', 'equal', 'approximately', 'segment', 'priority', 'physics', 'branche', 'science', 'mathematics', 'lightning', 'dispersion', 'accelerator', 'detector', 'terminology', 'design', 'operation', 'foundation', 'application', 'prediction', 'reference', 'measurement', 'concept', 'perspective', 'overview', 'position', 'airplane', 'symmetry', 'dimension', 'toxic', 'algebra', 'illustration', 'classic', 'verification', 'citation', 'unusual', 'resource', 'analysis', 'license', 'comedy', 'screenplay', 'production', 'release', 'emphasis', 'director', 'trademark', 'vehicle', 'aircraft', 'experiment');


sub hangman1{
    print "   ______\n";
    print "  |      |\n";
    print "  |\n";
    print "  |\n";
    print "  |\n";
    print "  |\n";
    print "  |\n";
    print "__|___\n";
    return "";
}
sub hangman2{
    print "   ______\n";
    print "  |      |\n";
    print "  |      o\n";
    print "  |\n";
    print "  |\n";
    print "  |\n";
    print "  |\n";
    print "__|___\n";
    return "";
}
sub hangman3{
    print "   ______\n";
    print "  |      |\n";
    print "  |      o\n";
    print "  |      |\n";
    print "  |      |\n";
    print "  |\n";
    print "  |\n";
    print "__|___\n";
    return "";
}
sub hangman4{
    print "   ______\n";
    print "  |      |\n";
    print "  |      o\n";
    print "  |     \\|\n";
    print "  |      |\n";
    print "  |\n";
    print "  |\n";
    print "__|___\n";
    return "";
}
sub hangman5{
    print "   ______\n";
    print "  |      |\n";
    print "  |      o\n";
    print "  |     \\|/\n";
    print "  |      |\n";
    print "  |\n";
    print "  |\n";
    print "__|___\n";
    return "";
}
sub hangman6{
    print "   ______\n";
    print "  |      |\n";
    print "  |      o\n";
    print "  |     \\|/\n";
    print "  |      |\n";
    print "  |     /\n";
    print "  |\n";
    print "__|___\n";
    return "";
}
sub hangman7{
    print "   ______\n";
    print "  |      |\n";
    print "  |      o\n";
    print "  |     \\|/\n";
    print "  |      |\n";
    print "  |     / \\\n";
    print "  |\n";
    print "__|___\n";
    return "";
}
sub present{
    my (@list)=@_;
    
    foreach(@list){
        
        if("$_" eq $character){
            
            return 1;
        }
    }
    return 0;
}
sub complete{
    my (@list)=@_;
    
    foreach(@list){
        
        if("$_" eq '-'){
            
            return 0;
        }
    }
    return 1;
}
sub replace{
    my (@list)=@_;
    $count=0;
    foreach(@list){
        
        if("$_" eq $character){
            $hidden_word[$count]=$character;
            
        }
        $count++;
    }
    
}
sub hangman{
    
    my ($number)=@_;
    
    if($number==1){
        hangman1();
    }
    elsif($number==2){
        hangman2();
    }
    elsif($number==3){
        hangman3();
    }
    elsif($number==4){
        hangman4();
    }
    elsif($number==5){
        hangman5();
    }
    elsif($number==6){
        hangman6();
    }
    elsif($number==7){
        hangman7();
    }
    
}

$play_again='Y';
while($play_again eq 'Y' || $play_again eq 'y'){
    $missed=1;
    hangman($missed);
    $size=scalar @words;
    $index=int(rand($size));

    $random_word=$words[$index];
    $size_of_word=length($random_word);
    @real_word=();
    foreach $char (split //, $random_word) {

        @real_word[scalar @real_word]=$char;
    }

    @hidden_word=();
    for($i=0;$i<$size_of_word;$i++){
        $hidden_word[$i]='-';
    }



    @guesses_so_far=();


    $chances=6;
    while($chances){
        if(complete(@hidden_word)){
            print "You guessed the word ",@hidden_word,"\n";
            print "You win!!!\n";
            last;
        }
        print "\nHere is your word: ",@hidden_word,"\n";
        print "Guesses so far: ","@guesses_so_far","\n";
        print "Make a guess: ";
        $character=<>;
        chop($character);
        $character=substr($character,0,1);
        if(present(@guesses_so_far)){
            print "You already guessed $character. Please guess another letter\n";
        }
        else{
            @guesses_so_far[scalar @guesses_so_far]=$character;
            if(present(@real_word)){
                replace(@real_word);
            }
            else{
                $chances--;
                $missed++;
                hangman($missed);
            }
        }
    }
    if($chances==0){
        print "You lose!\n";
        print "The correct word is:",@real_word,"\n";
        print "Better luck next time\n";
    }
    print "Want to play again?Y/N: ";
    $play_again=<>;
    chop($play_again);
}
