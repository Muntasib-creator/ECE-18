<?php
echo "Hello";
?>
<html>

<head>
    <title>PHP</title>
</head>

<body>
    <form method="post" action="session.php">
        Name<input type="text" name="user" value="<?php if (isset($_COOKIE['user'])) echo $_COOKIE['user']?>"><br>
        Pass<input type="password" name="pass" value="<?php if (isset($_COOKIE['pass'])) echo $_COOKIE['pass']?>"><br>
        Gender<input type="radio" name="gender" value="male"><br>
        remeber me<input type="checkbox" id="vehicle1" name="remember" value="yes"><br>
        <input type="submit">
    </form>
    <?php
    session_start();
    if (isset($_COOKIE['user'])){
        echo "<h4>Login Successful</h4>";
    }
    else{
        echo "<h4>Could not Log in</h4>";
    }
    if(isset($_SESSION['r'])){
        if($_SESSION['r'] == true){
            echo "<br><h4>Remember me was clicked</h4>";
        }
        else{
            echo "<br><h4>Remember me was not clicked</h4>";
        }
    }
    else{
        echo "<br><h4>Session variable is not set yet</h4>";
    }
    ?>


</body>

</html>