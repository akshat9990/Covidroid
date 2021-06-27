
<?php
   session_start();

   if(!isset($_SESSION['username'])){
   	header('location:loginpage.php');
   }
   
   $con = mysqli_connect('localhost','root');
  
   	mysqli_select_db($con,'quizdb1');
   
   ?>
<!DOCTYPE html>
<html>
   <head>
      <title></title>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
      <link href="https://fonts.googleapis.com/css?family=Montserrat|Open+Sans" rel="stylesheet">
      <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
      <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
   </head>
   <body>

      <div>
         <h1 class="text-center text-white font-weight-bold text-uppercase bg-dark" > The COVIDROID Diagnoser </h1><br>
      <div class="container "><br>
         <div class="container">
            <div class=" col-lg-12 text-center">
               <h3> <a href="#" class="text-uppercase text-warning"> <?php echo $_SESSION['username']; ?>,</a> Welcome to COVID Analyzer </h3>
            </div>
            <br>
            <div>
               <div class="card">
                  <p class="card-header text-center" > Hello <?php echo $_SESSION['username']; ?>, answer all the questions. <i class="fas fa-thumbs-up"></i>	 </p>
               </div>
               <br>
               <form action="checked.php" method="post">
                  <?php
                     for($i=1;$i<2;$i++){
                     $l = 1;
                  
                     $ansid = $i;

                     $sql1 = "SELECT * FROM `questionsh` WHERE `qidh` = $i ";
                     	$result1 = mysqli_query($con, $sql1);
                     		if (mysqli_num_rows($result1) > 0) {
                     						while($row1 = mysqli_fetch_assoc($result1)) {
                     	?>				
                  <br>
                  <div class="card">
                     <br>
                     <p class="card-header">  <?php echo $i ." : ". $row1['qns']; ?> </p>
                    
                     <?php
                        $sql = "SELECT * FROM `answerh` WHERE `ans_id` = $i ";
                        	$result = mysqli_query($con, $sql);
                        		if (mysqli_num_rows($result) > 0) {
                        						while($row = mysqli_fetch_assoc($result)) {
                        	?>	
                           
                     <div class="card-block">
                        <input type="radio" name="quizcheck[]" id="<?php echo $ansid; ?>" value="<?php echo $row['answerv']; ?>" > <?php echo $row['answer']; ?> 
                        <br>
                     </div>
                     <?php
                        
                        } } 
                        $ansid = $ansid + $l;
                        } }}
                        
                     ?>
                     <?php
                     for($i=2;$i<4;$i++){
                     $l = 1;
                  
                     $ansid = $i;

                     $sql1 = "SELECT * FROM `questionsh` WHERE `qidh` = $i ";
                     	$result1 = mysqli_query($con, $sql1);
                     		if (mysqli_num_rows($result1) > 0) {
                     						while($row1 = mysqli_fetch_assoc($result1)) {
                     	?>				
                  <br>
                  <div class="card">
                     <br>
                     <p class="card-header">  <?php echo $i ." : ". $row1['qns']; ?> </p>
                    
                     <?php
                        $sql = "SELECT * FROM `answerh` WHERE `ans_id` = $i ";
                        	$result = mysqli_query($con, $sql);
                        		if (mysqli_num_rows($result) > 0) {
                        						while($row = mysqli_fetch_assoc($result)) {
                        	?>	
                           
                     <div class="card-block">
                        <input type="checkbox" name="quizcheck[]" id="<?php echo $ansid; ?>" value="<?php echo $row['answerv']; ?>" label="<?php echo $row['answer'] ?>" > <?php echo $row['answer']; ?> 
                        <br>
                     </div>
                     <?php
                        
                        } } 
                        $ansid = $ansid + $l;
                        } }}
                        
                     ?>
                     <?php
                     for($i=4;$i<8;$i++){
                     $l = 1;
                  
                     $ansid = $i;

                     $sql1 = "SELECT * FROM `questionsh` WHERE `qidh` = $i ";
                     	$result1 = mysqli_query($con, $sql1);
                     		if (mysqli_num_rows($result1) > 0) {
                     						while($row1 = mysqli_fetch_assoc($result1)) {
                     	?>				
                  <br>
                  <div class="card">
                     <br>
                     <p class="card-header">  <?php echo $i ." : ". $row1['qns']; ?> </p>
                    
                     <?php
                        $sql = "SELECT * FROM `answerh` WHERE `ans_id` = $i ";
                        	$result = mysqli_query($con, $sql);
                        		if (mysqli_num_rows($result) > 0) {
                        						while($row = mysqli_fetch_assoc($result)) {
                        	?>	
                           
                     <div class="card-block">
                        <input type="radio" name="quizcheck[<?php echo $ansid; ?>]" id="<?php echo $ansid; ?>" value="<?php echo $row['answerv']; ?>" > <?php echo $row['answer']; ?> 
                        <br>
                     </div>
                     <?php
                        
                        } } 
                        $ansid = $ansid + $l;
                        } }}
                        
                     ?>
                  </div>
                  <?php
                     for($i=8;$i<9;$i++){
                     $l = 1;
                  
                     $ansid = $i;

                     $sql1 = "SELECT * FROM `questionsh` WHERE `qidh` = $i ";
                     	$result1 = mysqli_query($con, $sql1);
                     		if (mysqli_num_rows($result1) > 0) {
                     						while($row1 = mysqli_fetch_assoc($result1)) {
                     	?>				
                  <br>
                  <div class="card">
                     <br>
                     <p class="card-header">  <?php echo $i ." : ". $row1['qns']; ?> </p>
                    
                     <?php
                        $sql = "SELECT state FROM `state` ";
                        	$result = mysqli_query($con, $sql);
                        		if (mysqli_num_rows($result) > 0) {
                        						while($row = mysqli_fetch_assoc($result)) {
                        	?>	
                     <?php
                        
                        } } 
                        $ansid = $ansid + $l;
                        } }}
                        
                     ?>
   <div class="card-block">
   <form>
   State:
                     </br>
  <select>
    <option disabled selected>-- Select State --</option>
    <?php
        $records = mysqli_query($con, "SELECT state From state");

        while($data = mysqli_fetch_array($records))
        {
            echo "<option value='". $data['state'] ."'>" .$data['state'] ."</option>";
        }	
    ?>  
  </select>
</form>
</div>
                  <br>
                  <input type="submit" name="submit" Value="Submit" class="btn btn-success m-auto d-block" /> <br>
               </form>
               <p id="letc"></p>
           
         <br>
         <footer>
            <h5 class="text-center"> &copy2020 Covidroid </h5> 
         </footer>
      </div>


     



   </body>
</html>
