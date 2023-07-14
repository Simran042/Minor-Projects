open(INFILE, "data1.txt") or die "Can’t open input.txt: $!";
while ($x= <INFILE>) {
    # assigns each line in turn to $_
    for ($x) {
        s/^\s+//;
        s/\s+$//;
    }
    @word = split /\s+/, $x;
    # print $word[0];
    # print "see\n";
    # print $word[1];
    # print $word[0];
    # print "\n";
    if($word[0] =~ /ORIGIN/){
        while ($x= <INFILE>) {
        # assigns each line in turn to $_
        for ($x) {
            s/^\s+//;
            s/\s+$//;
        }
        @word = split /\s+/, $x;
        if($word[0] =~ /\d+/){
            for($i=1; $i<=$#word; $i++){
                $def= $def.$word[$i];
            }
        }
        
        $word[0]='';
        $word[1]='';
    }
    }
    $word[0]='';
    $word[1]='';
    
}
print "$def\n";
