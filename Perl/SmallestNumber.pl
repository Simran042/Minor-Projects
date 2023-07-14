print "Enter value of k: ";
$k= <STDIN>;
print "Enter value of n: ";
$n= <STDIN>;
$count0=0;
$count1=0;
$count2=0;
$count3=0;
$count4=0;
$count5=0;
$count6=0;
$count7=0;
$count8=0;
$count9=0;

@k= split('', $k);
#to keep number of elements (n) same as given in question, I have written the smallest number once followed by all 0s and then the other occurences of smallest number and remaining number

for($i=0; $i<$n; $i++){
    if(@k[$i]==0){
        $count0++;
    }
    if(@k[$i]==1){
        $count1++;
    }
    if(@k[$i]==2){
        $count2++;
    }
    if(@k[$i]==3){
        $count3++;
    }
    if(@k[$i]==4){
        $count4++;
    }
    if(@k[$i]==5){
        $count5++;
    }
    if(@k[$i]==6){
        $count6++;
    }
    if(@k[$i]==7){
        $count7++;
    }
    if(@k[$i]==8){
        $count8++;
    }
    if(@k[$i]==9){
        $count9++;
    }
}
if($count0==0){
    for($i=0; $i<$count1; $i++)
    {
        print "1";
    }
    for($i=0; $i<$count2; $i++)
    {
        print "2";
    }
    for($i=0; $i<$count3; $i++)
    {
        print "3";
    }
    for($i=0; $i<$count4; $i++)
    {
        print "4";
    }
    for($i=0; $i<$count5; $i++)
    {
        print "5";
    }
    for($i=0; $i<$count6; $i++)
    {
        print "6";
    }
    for($i=0; $i<$count7; $i++)
    {
        print "7";
    }
    for($i=0; $i<$count8; $i++)
    {
        print "8";
    }
    for($i=0; $i<$count9; $i++)
    {
        print "9";
    }

}
else{
    if($count1 != 0){
        print "1";
        for($i=0; $i<$count0; $i++)
        {
            print "0";
        }
        for($i=0; $i<$count1-1; $i++)
        {
            print "1";
        }
        
        for($i=0; $i<$count2; $i++)
        {
            print "2";
        }
        for($i=0; $i<$count3; $i++)
        {
            print "3";
        }
        for($i=0; $i<$count4; $i++)
        {
            print "4";
        }
        for($i=0; $i<$count5; $i++)
        {
            print "5";
        }
        for($i=0; $i<$count6; $i++)
        {
            print "6";
        }
        for($i=0; $i<$count7; $i++)
        {
            print "7";
        }
        for($i=0; $i<$count8; $i++)
        {
            print "8";
        }
        for($i=0; $i<$count9; $i++)
        {
            print "9";
        }
    }
    elsif($count2 != 0){
        print "2";
        for($i=0; $i<$count1; $i++)
        {
            print "1";
        }
        for($i=0; $i<$count0; $i++)
        {
            print "0";
        }
        
        for($i=0; $i<$count2-1; $i++)
        {
            print "2";
        }
        
        for($i=0; $i<$count3; $i++)
        {
            print "3";
        }
        for($i=0; $i<$count4; $i++)
        {
            print "4";
        }
        for($i=0; $i<$count5; $i++)
        {
            print "5";
        }
        for($i=0; $i<$count6; $i++)
        {
            print "6";
        }
        for($i=0; $i<$count7; $i++)
        {
            print "7";
        }
        for($i=0; $i<$count8; $i++)
        {
            print "8";
        }
        for($i=0; $i<$count9; $i++)
        {
            print "9";
        }
    }
    elsif($count3 != 0){
        print "3";
        for($i=0; $i<$count0; $i++)
        {
            print "0";
        }
        for($i=0; $i<$count1; $i++)
        {
            print "1";
        }
        
        for($i=0; $i<$count2; $i++)
        {
            print "2";
        }
        
        for($i=0; $i<$count3-1; $i++)
        {
            print "3";
        }
        
        for($i=0; $i<$count4; $i++)
        {
            print "4";
        }
        for($i=0; $i<$count5; $i++)
        {
            print "5";
        }
        for($i=0; $i<$count6; $i++)
        {
            print "6";
        }
        for($i=0; $i<$count7; $i++)
        {
            print "7";
        }
        for($i=0; $i<$count8; $i++)
        {
            print "8";
        }
        for($i=0; $i<$count9; $i++)
        {
            print "9";
        }
    }
    elsif($count4 != 0){
        print "4";
        for($i=0; $i<$count0; $i++)
        {
            print "0";
        }
        for($i=0; $i<$count1; $i++)
        {
            print "1";
        }
        
        for($i=0; $i<$count2; $i++)
        {
            print "2";
        }
        
        for($i=0; $i<$count3; $i++)
        {
            print "3";
        }
        
        for($i=0; $i<$count4-1; $i++)
        {
            print "4";
        }
        
        for($i=0; $i<$count5; $i++)
        {
            print "5";
        }
        for($i=0; $i<$count6; $i++)
        {
            print "6";
        }
        for($i=0; $i<$count7; $i++)
        {
            print "7";
        }
        for($i=0; $i<$count8; $i++)
        {
            print "8";
        }
        for($i=0; $i<$count9; $i++)
        {
            print "9";
        }
    }
    elsif($count5 != 0){
        print "5";
        for($i=0; $i<$count0; $i++)
        {
            print "0";
        }
        for($i=0; $i<$count1; $i++)
        {
            print "1";
        }
        
        for($i=0; $i<$count2; $i++)
        {
            print "2";
        }
        
        for($i=0; $i<$count3; $i++)
        {
            print "3";
        }
        
        for($i=0; $i<$count4; $i++)
        {
            print "4";
        }
        
        for($i=0; $i<$count5-1; $i++)
        {
            print "5";
        }
        
        for($i=0; $i<$count6; $i++)
        {
            print "6";
        }
        for($i=0; $i<$count7; $i++)
        {
            print "7";
        }
        for($i=0; $i<$count8; $i++)
        {
            print "8";
        }
        for($i=0; $i<$count9; $i++)
        {
            print "9";
        }
    }
    elsif($count6 != 0){
        print "6";
        for($i=0; $i<$count0; $i++)
        {
            print "0";
        }
        for($i=0; $i<$count1; $i++)
        {
            print "1";
        }
        
        for($i=0; $i<$count2; $i++)
        {
            print "2";
        }
        
        for($i=0; $i<$count3; $i++)
        {
            print "3";
        }
        
        for($i=0; $i<$count4; $i++)
        {
            print "4";
        }
        
        for($i=0; $i<$count5; $i++)
        {
            print "5";
        }
        
        for($i=0; $i<$count6-1; $i++)
        {
            print "6";
        }
        
        for($i=0; $i<$count7; $i++)
        {
            print "7";
        }
        for($i=0; $i<$count8; $i++)
        {
            print "8";
        }
        for($i=0; $i<$count9; $i++)
        {
            print "9";
        }
    }
    elsif($count7 != 0){
        print "7";
        for($i=0; $i<$count0; $i++)
        {
            print "0";
        }
        for($i=0; $i<$count1; $i++)
        {
            print "1";
        }
        
        for($i=0; $i<$count2; $i++)
        {
            print "2";
        }
        
        for($i=0; $i<$count3; $i++)
        {
            print "3";
        }
        
        for($i=0; $i<$count4; $i++)
        {
            print "4";
        }
        
        for($i=0; $i<$count5; $i++)
        {
            print "5";
        }
        
        for($i=0; $i<$count6; $i++)
        {
            print "6";
        }
        
        for($i=0; $i<$count7-1; $i++)
        {
            print "7";
        }
        
        for($i=0; $i<$count8; $i++)
        {
            print "8";
        }
        for($i=0; $i<$count9; $i++)
        {
            print "9";
        }
    }
    elsif($count8 != 0){
        print "8";
        for($i=0; $i<$count0; $i++)
        {
            print "0";
        }
        for($i=0; $i<$count1; $i++)
        {
            print "1";
        }
        
        for($i=0; $i<$count2; $i++)
        {
            print "2";
        }
        
        for($i=0; $i<$count3; $i++)
        {
            print "3";
        }
        
        for($i=0; $i<$count4; $i++)
        {
            print "4";
        }
        
        for($i=0; $i<$count5; $i++)
        {
            print "5";
        }
        
        for($i=0; $i<$count6; $i++)
        {
            print "6";
        }
        
        for($i=0; $i<$count7; $i++)
        {
            print "7";
        }
        
        
        for($i=0; $i<$count8-1; $i++)
        {
            print "8";
        }
        
        for($i=0; $i<$count9; $i++)
        {
            print "9";
        }
    }
    elsif($count9 != 0){
        for($i=0; $i<$count0; $i++)
        {
            print "0";
        }
        for($i=0; $i<$count1; $i++)
        {
            print "1";
        }
        
        for($i=0; $i<$count2; $i++)
        {
            print "2";
        }
        
        for($i=0; $i<$count3; $i++)
        {
            print "3";
        }
        
        for($i=0; $i<$count4; $i++)
        {
            print "4";
        }
        
        for($i=0; $i<$count5; $i++)
        {
            print "5";
        }
        
        for($i=0; $i<$count6; $i++)
        {
            print "6";
        }
        
        for($i=0; $i<$count7; $i++)
        {
            print "7";
        }
        
        for($i=0; $i<$count8; $i++)
        {
            print "8";
        }
        
        for($i=0; $i<$count9-1; $i++)
        {
            print "9";
        }
        
    }
    else{
        for($i=0; $i<$count0; $i++)
        {
            print "0";
        }
    }
}
