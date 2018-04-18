<?php
session_start();
    include('connect.php');    
    $query="select * from vote where section =".$_SESSION['section'];
    $result=mysqli_query($con,$query) or die("Error querying the database");
echo '<form id="myform">';
while($row=mysqli_fetch_array($result))
{
    echo '<input type="radio" name="candidate" id="name1" value="'.$row['candidate_name'].'">'.$row['candidate_name'].' </input> <br />';
    
    echo"<br />";
}
    
?>
