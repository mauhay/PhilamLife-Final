
<!DOCTYPE html>
<html>
<style>
	*{margin: 0px; padding: 0px;}
	#main{border: 1px solid black; width: 500px; height: 500px;margin: 24px auto; }
	#message_area{width:98%; border: 1px solid blue; height:440px}
</style>
<body>
<?Php	session_start() ;
	
		if (isset($_SESSION['user_name'])){
			
	echo 'Welcome' .$_SESSION['user_name'];
	echo '<a href="logout.php"> Log out</a><br>';
		}else{
			header("location: login.php");
			
		}
	

	
?>
<div id="main">
<div id="message_area">
<?Php 		include("connection.php") ;


		$q1="SELECT * FROM `message`";
		$r1= mysqli_query ($con, $q1);
		   while($row = mysqli_fetch_assoc($r1)){
			   $message= $row['message'];
			   $user_name =$row['user_name'];
			   echo '<h4 style="color: red">'.$user_name.'</h4>';
				echo '<p>'.$message.'</p>';
				echo '<hr>' ;
				
		   }
		if(isset($_POST['submit'])){
			$message= $_POST['message'];
			$q='INSERT INTO `message` (`id`, `message`, `user_name`)
				VALUES("", "'.$message.'", "'.$_SESSION['user_name'].'")
				';
				
			if(mysqli_query($con, $q)) {
				echo '<h4 style="color: red">'.$_SESSION['user_name'].'</h4>';
				echo '<p>'.$message.'</p>';
				
				
			}
			
		}
?>
</div>


	<form method="post">
	<input type="text" name="message" style="width:370px; height:50px;" placeholder="Type your message.. "/>
	<input type="submit" name="submit" style="width:70px; height:50px;" value="message">
	
	
	</form>
</div>
</body>
</html>