<?php
include('connect.php');
if(isset($_GET['vote'])&& !empty($_GET['vote']))
{
$username = $_GET['vote'];
}

echo $username."<br>";
$query="update vote set votes=votes+1 where candidate_name=\"$username\"";
mysqli_query($con,$query) or die("error updating vote");
echo "Successfully voted"."<br />";

?>
