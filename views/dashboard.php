<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
</head>
<body>
    <p>
    <?php 
    $ip = $_GET['serverIp'];
    $file = "./".$ip."-ssh.";

    $arr = [];

    echo exec("ping -c 2 127.0.0.1",$arr,$sal)."<br>";
    var_dump($arr);

    // echo $array."<br>";
    // echo $stdout."<br>";
    echo("Fichero ".$file);
    system('free', $retval);

    
    ?>
    </p>
</body>
</html>