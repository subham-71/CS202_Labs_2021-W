$file_name = "micro.txt";
$count=0;
print("\n");
open ( $fh, "<", $file_name ); 

while ( $line = <$fh> ) { 

    if ($line =~ /[vV]/) {
        print "$line";
        $count=$count+1;
    }

}
print "\n\nThe count is $count \n\n";
close($fh);


