@array = (1, 32, 21, 54, 37, -12, 11);
$min_array = min(\@array);
$max_array = max(\@array);
print "min : $min_array\n";
print "max : $max_array\n";

sub min
{
    $array = $_;
    $min = $array[0];
    foreach $element (@array)
    {
        if($element < $min)
        {
            $min = $element;
        }
    }
    return $min;
}
sub max
{
    $array = $_;
    $max = $array[0];
    foreach $element (@array)
    {
        if($element > $max)
        {
            $max = $element;
        }
    }
    return $max;
}