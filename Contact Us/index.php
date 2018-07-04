<?php
ini_set("SMTP","ssl://smtp.gmail.com");
ini_set("smtp_port","465");
	//message vars
	$msg = '';
	//check for submit
	if(filter_has_var(INPUT_POST, 'submit')){
		//Get form data
		$name = htmlspecialchars($_POST['name']);
		$email = htmlspecialchars($_POST['email']);
		$message = htmlspecialchars($_POST['message']);

		//check Required Fields
		if(!empty($email) && !empty($name) && !empty($message)){
			//passed
			$toEmail = 'sa.atemi@gmail.com';
			$subject = 'Contact Request From'.$name;
			$body = '<h2>Contact Request</h2>
					<h4>Name</h4><p>'.$name.'</p>
					<h4>Email</h4><p>'.$email.'</p>
					<h4>Message</h4><p>'.$message.'</p>
			';

			//email headers
			$headers = "MIME-Version 1.0" ."\r\n";
			$headers .="Content-Type:text/html;charset=UTF-8" ."\r\n";

			//additional headers
			$headers .= "From:" .$name. "<".$email.">". "\r\n";

			if (mail($toEmail,$subject,$body,$headers)) {
				//Email sent
				$msg = 'Your Email has been sent';
			} else {
				//failed
				$msg = 'Your email was not sent';

			}

		} else {
			//failed
			$msg = 'Please fill in all fields';

		}

	}
?>

<!DOCTYPE html>
<html>
<head>
	<title>CONTACT US</title>

	<!-- google font-->
	<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
	
	<!-- font awesome
	<link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css">-->
	<!-- main css-->
	<link rel="stylesheet" type="text/css" href="css/style.css">

	<style type="text/css">
		body{
			background-image: url('pic.jpg');
		}
	</style>
</head>
<body>
 <!-- nav-->
 <nav>
 	<ul>
 		<li><a href="#" class="logo">ATOH <i class=" fa fa-arrow-down"></i></a></li>
 		<li><a href="#">Home</a></li>
 		<li><a href="#">Skills</a></li>
 		<li><a href="#">Services</a></li>
 		<li><a href="#">Portfolio</a></li>
 		<li><a href="#">Work</a></li>
 	</ul>
 </nav>
<!-- end of nav-->

<!--Contact Form-->
<div class="contact-title">
	<h1>Give us your feedback below</h1>
	
</div>

<div class="contact-form">
	<form id="contact-form" method="post" action="<?php echo $_SERVER['PHP_SELF'];?>">
		<input type="text" name="name" class="form-control" placeholder="Your Name" value="<?php echo isset($_POST['name']) ? $name: ''; ?>" required><br>

		<input type="email" name="email" class="form-control" placeholder="Your Email" value="<?php echo isset($_POST['emaik']) ? $email: ''; ?>" required><br>

		<textarea name="message" class="form-control" placeholder="Message" rows="4" value="<?php echo isset($_POST['message']) ? $message: ''; ?>"></textarea><br>

		<input type="submit"  name="submit" class="form-control submit" value="SEND">
	</form>
	
</div>
<br>
<br>
<br>
<br>

<h1>WHERE TO FIND US</h1>
<div id="googleMap" style="width: 100%; height: 400px;"></div>

<script>
	function myMap(){
		var mapProp = {
			center:new google.maps.LatLng(-1.259882,36.817892),
			zoom: 5,
		};
		var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);
	}
</script>

<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDfoZm6pM9xKwYGGPyiTfiQjqN2QPKwQOk&callback=myMap"></script>

<footer>
	<div class="footer-text">
		<h3>Copyright &copy; 2018. All rights reserved</h3>
	</div>
	<div class="footer-icons">
	<a href="#"><i class="fa fa-facebook "></i></a>
	<a href="#"><i class="fa fa-twitter "></i></a>
	<a href="#"><i class="fa fa-google-plus "></i></a>
	<a href="#"><i class="fa fa-map "></i></a>
	</div>
</footer>
<!-- end of footer-->

</body>
</html>