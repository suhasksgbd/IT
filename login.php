<?php
session_start();
$dbc = mysqli_connect('localhost', 'root', 'tiger', 'election') or die('Error connecting to MySQL server.');
$username = $_POST['username'];
$password = $_POST['password'];
$query = "SELECT * from login where username='$username'";
$result = mysqli_query($dbc, $query) or die ('Error querying database.');
$row = mysqli_fetch_array($result);
if($row['username'] == $username && $row['password'] == $password)
{
$_SESSION['section']=$row['section'];

    header('location: main.html');
 }  
 else {
    echo "Error u have entered a wrong username or password"."<br>";  
    }

echo "<br />";
mysqli_close($dbc); 
?>
    
