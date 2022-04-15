print ("Enter DNA sequence : ") ; 

$seq = <STDIN>;

      
if($seq =~ /ATG([ATGC][ATGC][ATGC])+((TGA)|(TAG)|(TAA))/){
    print ("ACCEPTED \n") ;
}
else{
    print ("REJECTED \n");
}
