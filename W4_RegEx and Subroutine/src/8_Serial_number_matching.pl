use strict;

my $serialNumber = "50-Yz6AA-076cUg";
print "$serialNumber is ";
if($serialNumber =~ m/^([\d]{2})-([\w]{5})-([\w]{6})$/)
{
    print "valid\n";
}
else
{
    print "invalid\n";
}