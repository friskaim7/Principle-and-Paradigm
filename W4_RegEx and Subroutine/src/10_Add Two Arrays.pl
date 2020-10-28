@first = (1, 2, 3);
@second = (4, 5, 6);
@result = addArray(\@first, \@second);
print "@result\n";
sub addArray
{
    $first = $_[0];
    $second = $_[1];
    if (scalar(@first) == scalar(@second))
    {
        for($i = 0; $i < scalar @first; $i++)
        {
            $result[$i] = $first[$i] + $second[$i];
        }
    }
    else
    {
        print "first array's length != second array's length";
    }
    return @result;
}