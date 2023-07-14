print "Enter s: ";
$s= <STDIN>;
print "Enter a: ";
$a= <STDIN>;
print "Enter b: ";
$b= <STDIN>;


# to convert from 10 to any base
if($a==10){
    if($b==2){
        $temp= $s;
        @revbin=();
        while ($temp >=1){
            @revbin[$#revbin+1]= $temp %2;
            # $revbin= $revbin. $temp%2;
            $temp= $temp/2;
        }
        print "@revbin\n";
        @bin=();
        $j=0;
        for($i=$#revbin; $i>=0; $i--)
        {
            @bin[$j]= @revbin[$i];
            $j++;
        }
        print "@bin\n";
    }

    if($b==8)
    {
        $temp= $s;
        @revbin=();
        while ($temp >=1){
            @revbin[$#revbin+1]= $temp %8;
            # $revbin= $revbin. $temp%2;
            $temp= $temp/8;
        }
        print "@revbin\n";
        @bin=();
        $j=0;
        for($i=$#revbin; $i>=0; $i--)
        {
            @bin[$j]= @revbin[$i];
            $j++;
        }
        print "@bin\n";
    }
    if($b==16)
    {
        $temp= $s;
        @revbin=();
        while ($temp >=1){
            $see= $temp %16;
            if($see <10){
                @revbin[$#revbin+1]= $see;
            }
            elsif($see == 10){
                @revbin[$#revbin+1]= 'A';
            }
            elsif($see == 11){
                @revbin[$#revbin+1]= 'B';
            }
            elsif($see == 12){
                @revbin[$#revbin+1]= 'C';
            }
            elsif($see == 13){
                @revbin[$#revbin+1]= 'D';
            }
            elsif($see == 14){
                @revbin[$#revbin+1]= 'E';
            }
            elsif($see == 15){
                @revbin[$#revbin+1]= 'F';
            }            
            # $revbin= $revbin. $temp%2;
            $temp= $temp/16;
        }
        print "@revbin\n";
        @bin=();
        $j=0;
        for($i=$#revbin; $i>=0; $i--)
        {
            @bin[$j]= @revbin[$i];
            $j++;
        }
        print "@bin\n";
    }
}


#if base is not 10, I convert it to base 10 and then proceed same as above since there was no restriction in the question from doing so

else{
    @s= split('', $s);
    # print "@s";
    $tempnum=0;
    if($a==2){
        for($i=0; $i< $#s; $i++){
            $tempnum= $tempnum*2 + @s[$i];
            # print "$i $tempnum";
        }
    }
    elsif($a==8){
        for($i=0; $i< $#s; $i++){
            $tempnum= $tempnum*8 + @s[$i];
            # print "$i $tempnum";
        }
    }
    elsif($a==16){
        for($i=0; $i< $#s; $i++){
            if(@s[$i] eq 'A'){
                @s[$i]= 10;
            }
            if(@s[$i] eq 'B'){
                @s[$i]= 11;
            }
            if(@s[$i] eq 'C'){
                @s[$i]= 12;$s=9;
$t= $s/2;
print "$t";
            }
            if(@s[$i] eq 'D'){
                @s[$i]= 13;
            }
            if(@s[$i] eq 'E'){
                @s[$i]= 14;
            }
            if(@s[$i] eq 'F'){
                @s[$i]= 15;
            }
            $tempnum= $tempnum*16 + @s[$i];
            # print "$i $tempnum";
        }
    }
    if($b==2){
        $temp= $tempnum;
        @revbin=();
        while ($temp >=1){
            @revbin[$#revbin+1]= $temp %2;
            # $revbin= $revbin. $temp%2;
            $temp= $temp/2;
        }
        # print "@revbin\n";
        @bin=();
        $j=0;
        for($i=$#revbin; $i>=0; $i--)
        {
            @bin[$j]= @revbin[$i];
            $j++;
        }
        print "@bin\n";
    }

    if($b==8)
    {
        $temp= $tempnum;
        @revbin=();
        while ($temp >=1){
            @revbin[$#revbin+1]= $temp %8;
            # $revbin= $revbin. $temp%2;
            $temp= $temp/8;
        }
        # print "@revbin\n";
        @bin=();
        $j=0;
        for($i=$#revbin; $i>=0; $i--)
        {
            @bin[$j]= @revbin[$i];
            $j++;
        }
        print "@bin\n";
    }
    if($b==16)
    {
        $temp= $tempnum;
        @revbin=();
        while ($temp >=1){
            $see= $temp %16;
            if($see <10){
                @revbin[$#revbin+1]= $see;
            }
            elsif($see == 10){
                @revbin[$#revbin+1]= 'A';
            }
            elsif($see == 11){
                @revbin[$#revbin+1]= 'B';
            }
            elsif($see == 12){
                @revbin[$#revbin+1]= 'C';
            }
            elsif($see == 13){
                @revbin[$#revbin+1]= 'D';
            }
            elsif($see == 14){
                @revbin[$#revbin+1]= 'E';
            }
            elsif($see == 15){
                @revbin[$#revbin+1]= 'F';
            }            
            # $revbin= $revbin. $temp%2;
            $temp= $temp/16;
        }
        # print "@revbin\n";
        @bin=();
        $j=0;
        for($i=$#revbin; $i>=0; $i--)
        {
            @bin[$j]= @revbin[$i];
            $j++;
        }
        print "@bin\n";
    }
    elsif($b==10){
        print "$tempnum\n";
    }
    
    
    # print "$tempnum";
}