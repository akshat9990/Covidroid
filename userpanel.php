<?php
error_reporting(0);
if(!isset($_SESSION)) { session_start(); }
$con = mysqli_connect('localhost','root');
error_reporting(0);

mysqli_select_db($con,'quizdb1');
if(!isset($_SESSION[username]))
{
	echo "<script>window.location='loginpage.php';</script>";
}
if(isset($_SESSION[username]))
{
	$sql = "SELECT * FROM register WHERE user='$_SESSION[username]'";
	$qsql = mysqli_query($con,$sql);
	$rsdisp = mysqli_fetch_array($qsql);
}
?>

<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="panel.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<body>		
<nav class="navbar">
  <a href="homepage.html">Home</a>
  <a href="articles.php">News</a>
  <a href="about.html">About Us</a>
  <a href="logout.php"> Logout </a>
</nav>


			<div class="container">
				<div class="row">	
						<section>
							<header>
								<h2>Profile</h2>
                            </header>
</br>
</br>
                            <form method="post" action="" name="frmcstview">
							<table width="900" height="350" border="10" id="table">
							    <tr class="w3-hover-green">
							      <th width="136" height="34" align="left"><strong>Your Name:</strong></th>
							      <td width="874" align="center" class="a"><?php echo $rsdisp[user]; ?></td>
						        </tr>
							    <tr class="w3-hover-blue">
							      <th height="39" align="left"><strong>Gender:</strong></th>
							      <td  align="center" class="b"><?php echo $rsdisp[gender]; ?></td>
						        </tr>
							    <tr class="w3-hover-green">
							      <th height="35" align="left"><strong>Mobile Number:</strong></th>
							      <td  align="center" class="c"><?php echo $rsdisp[phonenumber]; ?></td>
						        </tr>
							    <tr class="w3-hover-blue">
							      <th height="39" align="left"><strong>Email ID:</strong></th>
							      <td  align="center" class="d"><?php echo $rsdisp[email]; ?></td>
						        </tr>
						      </table>
                          </form>
                            <hr />
                        </section>
                </div>
                <div class="quiz">
                    <form>
                <button class="button button2"><a href="home.php">Attempt Quiz</a></button>
                    </form>
                </div>
        </div>
</body>
</html>