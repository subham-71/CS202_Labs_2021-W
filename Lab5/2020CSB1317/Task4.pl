$file_name = "micro.txt";
$count=0;
print("\n");
open ( $fh, "<", $file_name ); 

while ( $line = <$fh> ) { 

    @words = split(' ', $line);
    $size = scalar @words;
    
    for($i =0 ; $i< $size; $i+=1){
    
        # to detect single words in double quotes
        if ($words[$i] =~ /"(\w*)"/ ) {
            print "$1 \n";
            $count=$count+1;
        }
        
        #  to detect pair of words in double quotes
        if ($i+1 < $size ){
            if ($words[$i] =~ /"(\w*)$/ ) {
                $temp = $1;
                if($words[$i+1] =~ /^(\w*)"/ ){
                    print "$temp $1 \n";
                    $count=$count+1;
                }
            }
        }
       
    }
}

# print "\n\nThe count is $count \n\n";
close($fh);


