#!/usr/bin/perl -w-
use strict;
# RegEx using DEFINE block
my $reg = qr/^(?&first_name)[\s]*(?&last_name)[\s]*(?&phone_number)$
    (?(DEFINE)
        (?<first_name>      # first_name matches any number of alphabets
            ([a-zA-Z]+))
        (?<last_name>
            ([a-zA-Z]+))    # first_name matches any number of alphabets
        (?<phone_number>
            ((\+?(\d{1,3}))?    # matches country code if present
            (\-)?               # matches "-" between country code and number
            (\d{10})))          # matches 10 digit for a valid phone number
    )/xn; # used modifier x for free spacing

# Test contacts hash
my %contact = (
    "cont1"=>"John Doe +81-9876543210",
    "cont2"=>"John +81-9876543210",
    "cont3"=>"John Doe +81-123",
    "cont4"=>"Jo123hn Doe +81-9876543210",
    "cont5"=>"John Doe +819876543210",
    "cont6"=>"John   Doe   9876543210",
    );
    # validating each contact
foreach my $key (keys %contact)
{
    print" $key : $contact{$key} is ";
    if ($contact{$key} =~ $reg)
    {
        print"valid \n";
        }
    else
    {
        print"invalid \n";
        }
    }