open(INFILE, "data1.txt") or die "Can’t open input.txt: $!";
while ($x= <INFILE>) {
    # assigns each line in turn to $_
    for ($x) {
        s/^\s+//;
        s/\s+$//;
    }
    @word = split /\s+/, $x;
    #APPROACH: I tried to split the line join and get indexes and then use code from q 4 to check indexes by using(1|2|3...)
    if($word[0] =~ /CDS/){
        if($word[1] =~ /join/){
            @step1 = split /(\.\|,\|/(|/))/, $word[1];
        }
        
        $word[0]='';
        $word[1]='';
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
