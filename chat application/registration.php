
<!DOCTYPE html>
<html>
<head>
	<style>
	*{margin:0px; padding : 0px;}
	#main{border:1px solid black; width:400px; margin:24px auto;} 
	</style>
	
</head>
<body>
<?PHp

			require_once("connection.php");
		if (isset($_POST['register'])){
				$first_name = $_POST['first_name'];
				$last_name = $_POST['last_name'];
				$user_name = $_POST['user_name'];
				$password = $_POST['password'];
				
				if($first_name !="" and $last_name !="" and $user_name !="" and $password !=""){
					$q="INSERT INTO `user`(`id`, `first_name`, `last_name`, `user_name`, `password`)
					VALUES('', '".$first_name."', '".$last_name."', '".$user_name."', '".$password."')
					" ;
					if(mysqli_query($con, $q)){
						header("location: login.php") ;
					
					}else{
						echo $q;
					}
			
		
		}else{
				echo 'Please fill all the boxes';
		}
		}
?>
<div id="main">
		<h2 align="center">Registration</h2>
		<form method="post">
		First Name :<br>
		<input type="text" name="first_name" placeholder="first_name"/>
		<br><br>
		Last Name :<br>
		<input type="text" name="last_name" placeholder="last_name"/>
		<br><br>
		User Name :<br>
		<input type="text" name="user_name" placeholder="user_name"/>
		<br><br>
		Password:<br>
		<input type="password" name="password" placeholder="password"/><br><br>
		<input type="submit" name="register" value="Register"/>

		<br><br>
		</form>
	</div>

</body>
</html>