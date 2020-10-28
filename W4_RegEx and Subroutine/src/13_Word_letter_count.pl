$sentence = 'JTK Polban adalah sekolah vokasi';
$word_count, $letter_count = word_letter_count($sentence);

print "number of word : $word_count
number of letter : $letter_count\n";

sub word_letter_count
{
    @sentence = split(' ', $_[0]);
    $word_count = scalar(@sentence);
    for $words (@sentence)
    {
        $letter_count += length($words);
    }
    return $word_count, $letter_count;
}