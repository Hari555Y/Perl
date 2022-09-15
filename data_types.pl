use strict;
use warnings;
use diagnostics;

use v5.32;

use feature 'say';

use feature "switch";

# comment in the pearl

print "Hello World\n";

my $name = "hari";

my $age = 21;

my $ismale = 0;

my ($father, $mother) = ('male' , 'female');

my $my_info = "$name father's gender is \"$father\"\n";

my $my_info2 = qq{$name father's gender is "$father"\n};

my $multiple_lines = <<"endhere";
hello this is 
the case of 
multiple lines in 
perl language
endhere

my $my_number = 123456;

printf("%u \n" ,$my_number +1);

my $my_float = .1000034000;

printf("%.6f \n" , $my_float + .120455);

my $first = 1;
my $second = 2;

($first , $second) = ($second , $first);

say "$first $second";



print $my_info;
print $my_info2;

say $multiple_lines;

say "exp 1 : ", exp 1;
say "hex 10 : ", hex 10;
say "oct 12 : ", oct 12;
say "INT 12.78 : ", int(12.78);
say "LOG 13 : ", log 13;
say "random bw 0 to 20 : ", int(rand 21);
say "square root of 14 : ", sqrt 14;