use strict;
use warnings;
use diagnostics;

use v5.32;

use feature 'say';

use feature "switch";

use v5.16;

sub get_random_int{
    return int(rand 11);
}

sub get_random_int_max{
    my ($max_number) = @_;

    $max_number ||= 11;
    return int(rand $max_number);
}

say "Random number 1 ", get_random_int();
say "Random number 2 ", get_random_int_max(17);
say "Random number 3 ", get_random_int_max();

sub get_sum {
    my ($num1, $num2) = @_;
    $num1 ||=1;
    $num2 ||=1;

    return $num1 + $num2;
}

sub sum_many {
    my $sum =0;
    foreach my $val (@_){
        $sum += $val;
    }
    return $sum;
}

sub increment {
    state $execute_total = 0;
    $execute_total++;
    say "Executed $execute_total times";
}

increment();
increment();
increment();

sub double_array{
    my @num_array = @_;
    $_*=2  for @num_array;
    return @num_array;
}

my @random_array = (1,3,4,5, 8, 100);
print join(", " , double_array(@random_array)), 
"\n";

sub get_mults{
    my ($rand_num) = @_;
    $rand_num ||=1;
    return $rand_num*2, $rand_num*3;
}

my ($doubling, $tripling) = get_mults(2);
say "$doubling $tripling";

sub factorial{
    my ($num) = @_;
    return 0  if $num <=0;
    return 1 if $num ==1;
    return $num *factorial($num -1);
}
say "Factorial 5 equals ", factorial(5);


say "Sum : ", sum_many(1, 2, 3, 4, 5);