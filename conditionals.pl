use strict;
use warnings;
use diagnostics;

use v5.32;

use feature 'say';

use feature "switch";

my $age = 80;

my $not_paralysed = 1;

my $age_last_test = 16;

if ($age < 16){
    say "You can't drive";
}
elsif (!$not_paralysed){
    say "You can't drive";
}
else{
    say "You can drive";
}


if ('a' eq 'b'){
    say "a equals b";
}
else{
    say "a doesn't equals b";
}

# unless is opposite of if statement

unless ('a' eq 'b'){
    say "Unless is opposite of if";
}


for (my $i = 0; $i <10; $i++){
    say $i;
}

my $i =1;
while($i <10){
    if ($i %2==0){
        $i++;
        next;
    }

    if ($i ==7){
        last;
    }
        say $i;
        $i++;
}

my $messi_number = 10;

my $guess;

do{
    say "Please say a number";
    $guess = <STDIN>;
}
while $messi_number != $guess;

say "you guessed the number correctly";

my $fav_player = 5;

given  ($fav_player){
    when ($_ >8){
        say "greater than 8";
        continue;
    }
    when ($_ >9){
        say "greater than 9";
        continue;
    }
    default {
        say "chala ja bhai";
    }
}