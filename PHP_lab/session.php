<?php 
session_start();
// echo var_dump(array_keys($_POST));

$u = $_POST['user'];
$conn = new mysqli("localhost","root","","php_lab");
$q1 = "select pass FROM auth WHERE user = '$u'";
$res = mysqli_query($conn, $q1);
$u = mysqli_fetch_assoc($res);
var_dump($u);
if(in_array("remember", array_keys($_POST))){
    // $u = array(array("user"=>"a", "pass"=>"a"), array("user"=>"b", "pass"=>"b"));
    $_SESSION['r'] = true;
    echo $_POST['pass'];
    echo $u['pass'];

    if ($u['pass'] == $_POST['pass']){
        setcookie("pass", $_POST['pass'], time() + 60);
        setcookie("user", $_POST['user'], time() + 60);
        header("location: intro.php");
    }
    else{
        if (isset($_COOKIE['user'])){
            setcookie("user", null, time() - 60);
        }
        if (isset($_COOKIE['pass'])){
            setcookie("pass", null, time() - 60);
        }
        header("location: intro.php");
    }
}
else{
    $_SESSION['r'] = false;
    header("location: intro.php");
}

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
</body>

</html>