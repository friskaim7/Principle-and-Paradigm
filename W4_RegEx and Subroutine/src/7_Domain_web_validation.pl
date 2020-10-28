use strict;

my $domain = "news.google.net";
print "$domain is ";
if($domain =~ m/^(.+[a-z0-9])\.(.+[a-z0-9])\.(com|my|id|net)$/)
{
    print "valid\n";
}
else
{
    print "invalid\n";
}