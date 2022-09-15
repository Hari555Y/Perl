use strict;
use warnings;
use diagnostics;

use v5.32;

use feature 'say';

use feature "switch";

use v5.16;

my $emp_file = "text.txt";
open my $fh, "<", $emp_file
    or die "Can't open the text file created : $_";

while(my $info = <$fh>){
    chomp($info);

    my ($employee_name, $employee_relation, $employee_id) = split /:/, $info;

    print "$employee_name is my $employee_relation and his id is $employee_id \n";
}

close $fh or die "Cant close the file: $_";

open $fh, '>>' , $emp_file
    or die "Can't open the file : $_";

print $fh "Mark:Brother:69\n";

close $fh or die "Cant close the file: $_";

open $fh, '+<' , $emp_file
    or die "Can't open the file : $_";

seek $fh, 0, 0;

print $fh "Mark:Brothersssss:69\n";
close $fh or die "Cant close the file: $_";