print "Enter input in decimal: ";
$dec= <STDIN>;
@dec= split('', $dec);
$temp= $dec;
@revbin=();
# converting decimal to binary
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
$c=0;
#checking palindrome in binary
for($i=0; $i<=$#bin; $i++){
    if(@bin[$i] != @bin[$#bin- $i]){
        $c++;
    }
}
#checking palindrome in decimal
for($i=0; $i<=$#dec; $i++){
    if(@dec[$i] != @dec[$#dec- $i]){
        $c++;
    }
}
#check id c>0, then palindrome is present
if($c>0){
    print "Not a palindrome";
}
else{
    print "palindrome\n";
    print "$dec (10) = @bin (2)";
}