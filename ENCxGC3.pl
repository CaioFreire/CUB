#!/usr/bin/perl -w

$gc = 0;

while ($gc <= 1.01){
$enc = 2 + $gc + (29/($gc * $gc + ((1 - $gc) * (1 - $gc)))); 
$hash{$gc} = $enc;
    $gc = $gc+ 0.01;
}

open OUT, ">Expected_Enc.txt";

print OUT "GC3\tENc\n";
print OUT  "$_\t$hash{$_}\n" for (sort keys %hash);
