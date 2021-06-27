<?php
session_start();


$con = mysqli_connect('localhost','root');
	if($con){
		echo"connection";
	}

	mysqli_select_db($con,'quizdb1');


	$username = $_POST['user'];
	$password = $_POST['pass'];

$q = " select * from register where user = '$username' && pass='$password' ";

$result = mysqli_query($con,$q);

$row = mysqli_num_rows($result);

if($row == 1){
	$_SESSION['username'] = $username;
	header('location:userpanel.php');	
}else{
	header('location:loginpage.php');
}

?>