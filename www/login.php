<?php
session_start();
$host = "localhost"; /* Host name */
$user = "root"; /* User */
$password = ""; /* Password */
$dbname = "classroom_booking"; /* Database name */

$objCon = mysqli_connect($host,$user,$password,$dbname);

	$strSQL = "SELECT * FROM booking_user WHERE Username = '".mysqli_real_escape_string($objCon,$_POST['username'])."' 
	and Password = '".mysqli_real_escape_string($objCon,$_POST['password'])."'";
	
	$objQuery = mysqli_query($objCon,$strSQL);
	$objResult =mysqli_fetch_assoc($objQuery);

	if(!$objResult)
	{
			echo "Username and Password Incorrect!";
	}
	else
	{
			$_SESSION["UserID"] = $objResult["userid"];
			$_SESSION["Status"] = $objResult["user_permission"];

			session_write_close();
			
			if($objResult["Status"] == "1")
			{
				header("location:admin_page.php");
			}
			else
			{
				header("location:user-page.php");
			}
	}
	mysqli_close($objCon);
?>