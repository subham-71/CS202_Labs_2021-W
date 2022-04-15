print ("Enter phone number : ") ; 

$number = <STDIN>;

# Logic : first 3 digits followed by either - or space or no space , 
#           then 3 digits followed by either - or space or no space,
#           then 4 digits

if($number =~ /\b[0-9]{3}([ -]?)[0-9]{3}([ -]?)[0-9]{4}\b/){
    print ("TRUE \n") ;
}
else{
    print ("FALSE \n");
}
