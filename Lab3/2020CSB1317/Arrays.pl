#!usr/local/bin/perl
$Num1 = 3;
@Num1 = (1,"one",1.5,$Num1);
print "The array is: @Num1 \n";
print "The number is $Num1 \n";
$Num1[0] = 5;
print "The array is: @Num1 \n";

@array = (1,2,3);
print @array;
print "@array";

$array[3] =4;
print "@array \n";

push @array,'4';
print "@array \n";

$last = pop @array;
print "last = $last\n";

@array = (1,2,3);
$first = shift @array;
print "first = $first\n";

@array = (3,4,5);
unshift @array,'2';
print "array = @array \n";




