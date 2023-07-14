open(INFILE, "data1.txt") or die "Can’t open input.txt: $!";
while ($x= <INFILE>) {
    # assigns each line in turn to $_
    for ($x) {
        s/^\s+//;
        s/\s+$//;
    }
    
    # if($x =~ /\/translation/){
    #     @word = split //, $x;
    #     # print @word;
    #     for($i=14; $i<=$#word-1; $i++){

    #             $def= $def.$word[$i];       
    #     }
    # }
    
    if($x =~ /\/translation/){
        @word = split //, $x;
        # print @word;
        for($i=0; $i<=$#word; $i++){
            if($word[$i] =~ /"/)   
            {
                $i= $i+1;
                if($word[$#word] =~/"/)
                {
                    while($word[$i]!~/"/)
                    {
                        $def= $def.$word[$i];
                        $i= $i+1;
                    }
                }

                while($i<= $#word){
                    $def= $def.$word[$i];
                    $i= $i+1;
                }
                
            } 
            while ($x= <INFILE>) {
            # assigns each line in turn to $_
                for ($x) {
                    s/^\s+//;
                    s/\s+$//;
                }
                
                # if($x =~ /\/translation/){
                #     @word = split //, $x;
                #     # print @word;
                #     for($i=14; $i<=$#word-1; $i++){

                #             $def= $def.$word[$i];       
                #     }
                # }
                
                if($x !~ /(sig_peptide|exon)/){   
                    @word = split //, $x;
                    # print @word;
                    for($i=0; $i<=$#word; $i++){
                            if($word[$i] =~ /"/)   
                            {
                                $i= $i+1;
                                if($word[$#word] =~/"/)
                                {
                                    while($word[$i]!~/"/)
                                    {
                                        $def= $def.$word[$i];
                                        $i= $i+1;
                                    }
                                }

                                while($i<= $#word){
                                    $def= $def.$word[$i];
                                    $i= $i+1;
                                }
                                
                            } 
                    }
                }
            }
        }
        
    }
}
print $def;
