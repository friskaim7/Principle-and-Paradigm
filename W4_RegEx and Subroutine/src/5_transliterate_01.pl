use strict;
use warnings;
use 5.010;
my $text ='abc bad acdf';
say $text;
$text =~ tr/a/z/;
say $text;