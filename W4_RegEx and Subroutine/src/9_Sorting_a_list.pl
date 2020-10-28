$str1 = "03";
$str2 = "Alamat04";
@array1 = ("Alamat", "aku","Alamat04", "Handphone","03","02","z9");
print "unsroted: @array1\n";

@sorted = custom_sorting(\@array1);
print "sorted: @sorted\n";

sub custom_sorting
{
    $array = $_[0];
    $y = scalar(@$array);
    for $element (@$array)
    {
        if($element =~ m/^[0-9]/)
        {
            push(@num, $element);
        }
        elsif($element =~ m/^[A-Za-z]/)
        {
            push(@chars, $element);
        }
    }
    @sorted_num = sortArr(\@num);
    @sorted_chars = sortArr(\@chars);

    push(@sorted_chars, @sorted_num);
    return @sorted_chars;
}

sub sortArr
{
    $array = $_[0];
    $x = scalar(@$array);
    for ($i = 0; $i < $x; $i++)
    {
        for ($j = $x - 1; $j > $i; $j--)
        {
            if((@$array[$i] cmp @$array[$j]) == 1)
            {
                #swap
                (@$array[$i], @$array[$j]) = (@$array[$j], @$array[$i]);
            }
        }
    }
    return @$array;
}