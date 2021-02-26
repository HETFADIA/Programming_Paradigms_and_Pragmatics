#!/usr/local/bin/perl
@words=('computer', 'radio', 'calculator', 'teacher', 'bureau', 'police', 'geometry', 'president', 'subject', 'country', 'enviroment', 'classroom', 'animals', 'province', 'month', 'politics', 'puzzle', 'instrument', 'kitchen', 'language', 'vampire', 'ghost', 'solution', 'service', 'software', 'virus', 'security', 'phonenumber', 'expert', 'website', 'agreement', 'support', 'compatibility', 'advanced', 'search', 'triathlon', 'immediately', 'encyclopedia', 'endurance', 'distance', 'nature', 'history', 'organization', 'international', 'championship', 'government', 'popularity', 'thousand', 'feature', 'wetsuit', 'fitness', 'legendary', 'variation', 'equal', 'approximately', 'segment', 'priority', 'physics', 'branche', 'science', 'mathematics', 'lightning', 'dispersion', 'accelerator', 'detector', 'terminology', 'design', 'operation', 'foundation', 'application', 'prediction', 'reference', 'measurement', 'concept', 'perspective', 'overview', 'position', 'airplane', 'symmetry', 'dimension', 'toxic', 'algebra', 'illustration', 'classic', 'verification', 'citation', 'unusual', 'resource', 'analysis', 'license', 'comedy', 'screenplay', 'production', 'release', 'emphasis', 'director', 'trademark', 'vehicle', 'aircraft', 'experiment');
$size=scalar @words;
$index=int(rand($size));

$real_word=$words[$index];
$size_of_word=length($real_word);

@hidden_word=();
for($i=0;$i<$size_of_word;$i++){
    $hidden_word[$i]='-';
}
sub present{
    
    for($i=0;$i<length($real_word);$i++){
        
        if(substr($real_word,$i,1) eq $character){
            
            return 1;
        }
    }
    return 0;
}
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
print hangman1();
print hangman2();
print hangman3();
print hangman4();
print hangman5();
print hangman6();
print hangman7();
