use strict;
use warnings;
use diagnostics;

use v5.32;

use feature 'say';

use feature "switch";

my $long_str = "This is a long string";
say "length of the string is :", length $long_str;

printf ("long is at position %d \n", index $long_str , "long");

printf ("last i is at position %d \n", rindex $long_str , "i");

$long_str  = $long_str . 'make it more long';

say "we have substring starting with a and having b chars" , substr $long_str , 7, 5;

my $my_name = "Harikesh";

printf("last char is %s\n" , chop $my_name);

my $no_newline = "NO NewLine\n";
say $no_newline;
chomp $no_newline;

say $no_newline;

printf("uppercase is %s\n" , uc $my_name);
printf("lowercase is %s\n" , lc $my_name);
printf("only first uppercase is %s\n" , ucfirst $my_name);

$long_str =~ s/ /,/g;
say $long_str;

my $greetings =  "ram" x 2;
say $greetings;

my @first_arr = ('a' .. 'z');

print join(", ", @first_arr) , "\n";