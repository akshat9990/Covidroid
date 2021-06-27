<?php 

	$con = mysqli_connect('localhost','root');
	if($con){
		echo"connection";
	}

	mysqli_select_db($con,'quizdb1');

?>


<!DOCTYPE html>
<html>
<head>
<title>Login form Design</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<script type="text/javascript" src="validation.js"></script>
<body>
	<div class="loginbox">
	<img src="user.png" class="apple">
	<h1>Login Here</h1>
	<form name="loginpage" onsubmit="return validateForm()" action="login.php" method="post">
		<p>Username</p>
		<input type="text" name="user" id="user" placeholder="Enter Username">
		<p>Password</p>
		<input type="password" name="pass" id="pass" placeholder="Enter Password">
		<input type="submit" name="" value="Login">
		<a href="signup.html">Don't have an account?</a>
	</form>

	</div>
</body>
</head>
</html>
