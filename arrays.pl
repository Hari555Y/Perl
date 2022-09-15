use strict;
use warnings;
use diagnostics;

use v5.32;

use feature 'say';

use feature "switch";

my @primes = (2,3,5,7,11,13,17);

my @my_info = ('harikesh' , 'pa' , 'su' , 6.5 );

@my_info[3] = 6.3;

for my $info (@my_info) {
    say $info;
}

foreach my $num (@primes){
    say $num;
}

for (@my_info){
    say $_;
}

my @name_height = @my_info[0, 3];
say @name_height;

my $items = scalar @my_info;

say $items;

say "last value ", pop @my_info;

say "push value " , push @my_info, "nishu";

say "first item" , shift @primes;

say "add to front", unshift @primes , 2;

print join(", " , @primes) , "\n";

print "remove from first to fourth index in the primes array : " , splice @primes , 1, 4;

my $customers = "hari nishu pawan";
my @customers_array  = split / /, $customers;
print "\n";
print join(", " ,@customers_array) ,"\n";

@customers_array = reverse @customers_array;
say @customers_array;
@customers_array = sort @customers_array;
say @customers_array;

my @numbers = (1,2,3,4,5,6,7,8,9);

my @odds_arr = grep {$_ % 2} @numbers;
print join(", " , @odds_arr) , "\n";

my @db_arr = map{$_ * 2} @numbers;
print join(", " , @db_arr) , "\n";