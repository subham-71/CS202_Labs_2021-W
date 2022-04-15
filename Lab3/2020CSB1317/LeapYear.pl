print "Enter year :  ";
$year = <STDIN>;

check($year);

sub check {
($a)=@_;
if($a%100==0){
    if($a%400==0){
    print "Yes,It is a leap year \n";
    }   
    else{
        print "Not a leap year \n";
    }
}
else{
    if($a%4==0){
    print "Yes,It is a leap year \n";
    }   
    else{
        print "Not a leap year \n";
    }
}

}
