
$file_name = "micro.txt";
$count=0;
print("\n");
open ( $fh, "<", $file_name ); 

while ( $line = <$fh> ) { 

    @words = split(' ', $line);
    
    foreach my $word (@words){
        if ($word =~ /\b([aA](.)\2\w*)\b/gi ) {
        print "$1 \n";
        $count=$count+1;
        }
    }
    

}

print "\n\nThe count is $count \n\n";
close($fh);
