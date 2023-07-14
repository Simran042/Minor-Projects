open(INFILE, "data1.txt") or die "Can’t open input.txt: $!";
while ($x= <INFILE>) {
    # assigns each line in turn to $_
    for ($x) {
        s/^\s+//;
        s/\s+$//;
    }
    @word = split /\s+/, $x;
    if($word[0] =~ /MEDLINE/){
        print $word[1];
        print "\n";
    }
    
    $word[0]='';
    $word[1]='';
    
}
