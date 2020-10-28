@array = (1, 2, 3, 4, 5, 6);
$result = average(\@array);
print "$result";
sub average
{
    $array = $_[0];
    for $element (@array)
    {
        $result += $element;
    }
    return $result / scalar(@array);
}