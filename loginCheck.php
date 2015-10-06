<?php
		
	//start session
	session_start();
	
	
	//If Session already exist then redirect to homepage if the log in is clicked
	if ($_SESSION['username'])
	{
    	header('Location: index.php');
		die;
	}
   session_destroy();
   session_start();
   $username = $_POST['username'];
   $password = $_POST['password'];
   
   //If both Username and Password are filled in then check DataBase
   if($username && $password)
   {
   	
	 $conn = mysql_connect("localhost","ranstopd_srvc001","shindee") or die ("Couldn't Connect") ;
	 
	 mysql_select_db("ranstopd_shindee")or die("Couldn't Find Database");
	 
	 $query = mysql_query("SELECT * FROM tblUser WHERE Email = '$username'");
	 
	 $numrow = mysql_num_rows($query);
	 
	 if($numrow != 0)
	 {
	 	//Code this to Login
	 	while ($row = mysql_fetch_assoc($query))
		{
			$dbusername = $row['Email'];
			$dbpassword = $row['Password'];
			$dbName = $row['FirstName'];
			
		}
		
		//Check to see if they match!
		
		if ($username == $dbusername && $password == $dbpassword)
		{
			echo"You're In! <a href='member.php'>Click here to enter the member page.</a>";
			$_SESSION['username'] = $dbName;
			
			
			
			header('Location: index.php');
		}
		else {
			{
				
				header('Location: logIn.php');
				$ErrorMessage = "Wrong Password";
				
				$_SESSION['errorMessage'] = $ErrorMessage;
			}
		}
	 }
	 else
	 	{
	 		
			header('Location: logIn.php');
				$ErrorMessage = "That User Doesn't Exist!";
				
				$_SESSION['errorMessage'] = $ErrorMessage;
	 	}
	 
	 
   }
   else {
       
	   			header('Location: logIn.php');
				$ErrorMessage = "Please Enter a Username and a Password ";
				
				$_SESSION['errorMessage'] = $ErrorMessage;
	    }
   
   
?>