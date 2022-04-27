#!/usr/local/bin/perl
  
$n = $#ARGV + 1;  
if ($n == 0) {  
    print "Error : enter arguement\n";  
    exit;  
}  
$file_name=$ARGV[0];  
open ( $fh, "<", $file_name ); 

while ( $line = <$fh> ) { 
print "line=$line"; 
}
close($fh);
print "\n";
 