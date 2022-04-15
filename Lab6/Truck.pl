print ("Enter text : ") ; 

$text = <STDIN>;

      
if($text =~ /((\bred\b(\W*\S*\s)?(\W*\S*\s)?\bpick[ -]?up truck)|(\bpick[ -]?up truck(\W*\S*\s)?(\W*\S*\s)?\bred\b)).*\$[ \.]?\d+/i){
    print ("ACCEPTED \n") ;
}
else{
    print ("REJECTED \n");
}
