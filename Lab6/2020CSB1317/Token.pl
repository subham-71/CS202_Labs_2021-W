print ("Enter input text : ") ; 
$text = <STDIN>;

print ("Enter demlimiting character : ") ; 
$dm = <STDIN>;
chomp($dm);

@tokens = split(/$dm/, $text) ;

print("\n");
foreach my $token (@tokens) {
    print "$token\n";    
}
