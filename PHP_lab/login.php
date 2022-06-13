<?php
session_start();
echo "Hello";
$name = $_POST["n"];
echo $name;
$host="localhost";
$user="root";
$password="";
$db="php_lab";

// $conn = new mysqli_connect($host,$user,$password,$db);
$conn = mysqli_connect("localhost","my_root","","php_lab");
$name = $_POST['n'];
$gender = $_POST['gender'];
$q = "insert into table(Name,Gender) values ('$name','$gender')";
mysqli_query($conn,$q);
$q1 = "select from table where Gender = 'male'";
$res = mysqli_query($conn, $q1);
$u = mysqli_fetch_assoc($res);

echo $u;
?>
<html>

<head>
    <title>PHP</title>
</head>

<body>
    <h1> name is <?php echo $u['name'];?> </h1>

</body>

</html>