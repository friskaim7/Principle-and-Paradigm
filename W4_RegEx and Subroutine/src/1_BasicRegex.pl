#!/usr/bin/perl -w
use strict;
my %chars;
my $Para =
    "Sunflowers waiting for sunshine. \n
    Violets just waiting for dew. \n
    Bees just waiting for honey \n
    And honey, I'm just waiting for you!";
# Matches 'for'
print "Matched \n" if ($Para =~ m/for/);
# Matches 'And' at start of string
print "Does not match \n" if ($Para =~ m/^And/);
# Matches 'And' at start of each line
print "Matches (using modifiers) \n" if ($Para =~ m/^And/m);

my $group = "abcd";
# Grouping captures matched strings    #            1 2   3  4
$group =~ m/(a(b|c)(c(d)))/;
print "$1, $2, $3, $4 \n";
# Converts lowercase alphabets range [a to m]
# to uppercase
$Para =~ tr/[a-m]/[A-M]/;
print "$Para \n";
# Counts frequency of uppercase alphabets
$Para =~ s/([A-Z])/$chars{$1}++;$1/eg;
print "Frequency of '$_' : $chars{$_} \n"
    foreach (sort{$chars{$b} <=> $chars{$a}} keys %chars);
# If we use "m/avi/" then all four words will
# be matched - not GOOD!
# lookahead(?=) and lookbehind(?<=) to match
my $x = "tavi avi pavi a-avi";
print "Found avi"
    if ($x =~ m/(?<=\s)avi(?=\s)/);