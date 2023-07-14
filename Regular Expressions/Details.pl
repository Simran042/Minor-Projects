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
    if($word[0] =~ /ACCESSION/){
        $acc= $word[1];
    }
    if($word[0] =~ /DEFINITION/){
        for($i=1; $i<=$#word; $i++){
            $def= $def.' '.$word[$i];
        }
    }
    if($word[0] =~ /ORGANISM/){
        for($i=1; $i<=$#word; $i++){
            $org= $org.' '.$word[$i];
        }
    }
    # delete $word[0];
    # delete $word[1];
    $word[0]='';
    $word[1]='';
    
}
print "$acc\n";
print substr($def, 1,);
print "\n";
print substr($org, 1,);
print "\n";