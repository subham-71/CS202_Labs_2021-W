print ("Enter time : ") ; 

$time = <STDIN>;

# Logic  :  If single digit , check preceding zero, 0?
#           single digits 1-9 allowed in hour
#           else double digit 10,11,12
#           check for .
#           [0-5]? check if single digit time (to accodomate format 12.9 and 12.09)
#           one's place in minutes (if two digits) else normal minute digit
#           check for space , then am/pm

          
if($time =~ /\b(0?[0-9]|1[0-2])\.[0-5]?[0-9]\s[ap]m\b/){
    print ("TRUE \n") ;
}
else{
    print ("FALSE \n");
}
