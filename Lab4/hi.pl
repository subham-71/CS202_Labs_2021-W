print "Do you want to play again ? (1/0) ";
    $response = <STDIN>;
    $response = lc($response);
    chop($response);

    if($response ){
        print("n printed");
    }
    else{
        print("yes");
    }