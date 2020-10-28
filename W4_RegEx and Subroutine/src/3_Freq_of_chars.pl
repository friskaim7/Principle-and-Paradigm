#!/usr/bin/perl -w
use strict; my %chars;
my $Para =
"Sunflowers waiting for sunshine. \n
Violets just waiting for dew. \n
Bees just waiting for honey \n
And honey, I'm just waiting for you!";
print"Matched \n"
    if ($Para =~ m/for/);
print"Does not match \n"
    if ($Para =~ m/^And/);
print"Matches (using modifiers) \n"
    if ($Para =~ m/^And/m);

my $group = "abcd";
$group =~ m/(a(b|c)(c(d)))/;
print "$1, $2, $3, $4 \n";
$Para =~ tr/[a-m]/[A-M]/;
print "$Para \n";
$Para =~ s/([A-Z])/$chars{$1}++;$1/eg;
print "Frequency of '$_' : $chars{$_} \n"
    foreach (sort{$chars{$b} <=> $chars{$a}} keys %chars);

my $x = "tavi avi pavi a-avi";
print "Found avi"
    if ($x =~ /(?<=\s)avi(?=\s)/);