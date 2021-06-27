<?php 

	$con = mysqli_connect('localhost','root');
	mysqli_select_db($con,'quizdb1');
	error_reporting(0);

?>
<?php include('nav.html') ?>

	

		<div id="featured">
			<div class="container">
				<div class="row">
			
										
				  <div class='9u'>
                              <?php
							  $sql = "SELECT * FROM article WHERE article_type='Blog' order by article_id desc  ";
							  $qsql = mysqli_query($con,$sql);
							  while($rs = mysqli_fetch_array($qsql))
							  {
								echo "<section><header style='height:150px;'><a href='displayarticlesdetailed.php?articleid=$rs[article_id]'><img src='$rs[article_img1]' align='left' width='250' height='150' style='padding-right: 10px;'></a>
								<h2><a href='displayarticlesdetailed.php?articleid=$rs[article_id]'>$rs[title]</a></h2><strong>Published on $rs[publish_date]</strong><br>
								<p> ";
								echo substr($rs[article_description], 0, 270).".......";
								echo "</p></header></section><hr>";
							  }
							  ?>
								
						</div>
						
					
				</div>
			</div>
		</div>