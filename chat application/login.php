<!DOCTYPE html>
<html>
<style>
	*{margin: 0px; padding: 0px;}
	#main{width=200px;  margin: 20px auto;}
</style>

<body>
	<div id="main">

<?Php
		session_start() ;
		require_once("connection.php");
		if(isset($_POST['login'])){
			$user_name = $_POST ['user_name'] ;
			$password = $_POST ['password'] ;
			
			
			$q='SELECT * FROM `user` where`user_name`="'.$user_name.'"and `password`="'.$password.'"' ;
			$r= mysqli_query($con, $q);
			if (mysqli_num_rows($r )> 0 ){
				$_SESSION['user_name'] = $user_name;
				
				header("location:index.php");
				
			}else{
				echo 'Your password and user name does not match';
			}
			
			
		}



?>

	<h2 style="text-align: center ">Login </h2>
	<form method="post">
	User Name: <br>
	<input type="text" name="user_name" placeholder="user name" required/> <br><br>
	Password: <br>
	<input type="password" name="password" placeholder="password"/> <br><br>
	<input type="submit" name="login" value="Login"/>
	<a href="registration.php">Create an account</a>
	

	
	</form>
	</div>
	
</body>
</html>