use strict;
use warnings;
use diagnostics;

use v5.32;

use feature 'say';

use feature "switch";

my %employees = (
    "Hari" => 25,
    "Rahul" => 14,
    "bhai" => 63
);

printf("Hari is %d \n" , $employees{Hari});
# printf("Hari is %d \n" , $employees{hari});

$employees{Hari} = 44;

printf("Hari is %d \n" , $employees{Hari});
$employees{Ayan} = 99;

while(my($k, $v)= each %employees){
    print "$k$v\n"

}

# slicing out a hashmap in an array

my @ages = @employees{"Hari" , "bhai"};

my @hash_array = %employees;

delete $employees{Hari};

say @hash_array;
say @ages;
say ((exists $employees{Hari}) ? "Delete not successfull" : "Delete is successful");

foreach my $key (keys %employees){
    if ($employees{$key} == 63){
        say "Hello bhai";
    }
}
