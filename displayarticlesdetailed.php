<?php 

	$con = mysqli_connect('localhost','root');
	mysqli_select_db($con,'quizdb1');
	error_reporting(0);

?>
		<div id="featured">
			<div class="container">
				<div class="row">
					
							<div class='9u'  >
                              <?php
							  $sql = "SELECT * FROM article where article_id='$_GET[articleid]'";
							  $qsql = mysqli_query($con,$sql);
							  while($rs = mysqli_fetch_array($qsql))
							  {
								echo "<section><header ><h2><u>$rs[title]</u></h2><strong><p>Published on $rs[publish_date]</p></strong>";


echo "<img src='$rs[article_img1]' align='left' style='width: 100%;'>";
echo "</br>";
echo "</br>";

								echo "<p style='font-family: Times New Roman; line-height: 1.8; font-size: 20px;'>" . $rs[article_description] . "</p>";

								echo "
								
								</header></section>";
							  }
							  ?>
								
						</div>
						
					
				</div>
			</div>
		</div>