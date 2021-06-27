<?php

session_start();

$con = mysqli_connect('localhost','root');
  
mysqli_select_db($con,'quizdb1');


if(isset($_POST['quizcheck']))
$quiz_answers = $_POST['quizcheck'];
else 
$quiz_answers = [];

$sum = 0;

foreach($quiz_answers as $qa)
{
//echo $qa."<br>";
$sum = $sum + $qa;
}

//echo $sum;



//$sum = 80;

$low = 30;
$mid = 70;

?>

<html>

<body bgcolor="lightgrey">
    <?php include('nav.html') ?>

    
<?php
if(isset($_SESSION['username']))
{
    echo '
<div align="center" style="font-size:2em; margin-top:15px;" > Hii '.$_SESSION['username'].'</div>
';
    $qry = 'UPDATE `register` set `score` = '.$sum.' where `user` = "'.$_SESSION['username'].'"';
   // echo $qry;

    $res = mysqli_query($con,$qry);
    

 //   echo $_SESSION['username'];
}

if($sum < $low)
echo '
<div id="result" class="low" align="center" >
You\'re Safe! <br>
<img src="low.jpeg"/>
</div> ';

else if($sum < $mid)
echo '
<div id="result" align="center" class="mid" >
You may be infected.
<br>
<img src="medium.jpeg"/>
</div> ';
else
echo '
<div id="result" align="center" class="high" >
There\'s high risk you might be infected!
<br>
<img src="high.jpeg"/>
</div> ';


?>


</body>

<style>
#result
{
  font-weight: 600;
  font-size: 50px;  
}

.low 
{
    color: green;
}

.mid {
    color: orange;
}
.high {
    color: red;
}
</style>

</html>