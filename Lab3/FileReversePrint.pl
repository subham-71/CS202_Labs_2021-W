#!/usr/local/bin/perl
  
$n = $#ARGV + 1;  
if ($n == 0) {  
    print "Error : enter arguement\n";  
    exit;  
}  
$file_name=$ARGV[0];  
open ( $fh, "<", $file_name ); 

$count=0;

@array = ();
while ( $line = <$fh> ) { 
    push @array , $line;
    $count++;
}

print("The total number of lines in the file is $count \n \n");
$temp =$count;
while($temp>0){
    print @array[$temp-1];
    $temp--;
}


close($fh);
print "\n";
 