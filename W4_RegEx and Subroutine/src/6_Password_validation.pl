use strict;

my $password = "Ff1!-rrrrra";
print "$password is ";
if ($password =~ m/^(?!.*[\s])(?=.*\d)(?=.*\W)(?=.*[a-z])(?=.*[A-Z]).{10,}$/)
{
    print "valid\n";
}
else
{
    print "invalid\n";
}