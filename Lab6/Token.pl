# print ("Enter input text : ") ; 
$text = "I am teaching a course";

# print ("Enter demlimiting character : ") ; 
$dm = "a";
chomp($dm);

@tokens = split(/$dm/, $text) ;

print("\n");
foreach my $token (@tokens) {
    print "$token\n";    
}
