<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Welcome</title>
		<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="index.css" type="text/css"/>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		</script>
	</head>
	<body style="background-color:orange">
		<div class="container-fluid">
			<div class="navbar navbar-default navbar-fixed-top">
				<div class="container">
					<div class="navbar-header">
					  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>                        
					  </button>
					  <a class="navbar-brand" href="#"><font style="color:red; size=150px"><strong>BMS</strong></font></a>
					</div>
					<div class="collapse navbar-collapse" id="myNavbar">
						<ul class="nav navbar-nav navbar-right">
							<li><a href="#"><span class="glyphicon glyphicon-user"></span> Cart</a></li>
							<li><a href="#"><span class="glyphicon glyphicon-user"></span> Settings</a></li>
							<li><a href="../customer/logout"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
						</ul>
					</div>
				</div>
			</div>		
			<br><br><br>
<h2 style = "color: brown">Welcome Admin.</h2>
<h3>SEARCH</h3><br>
<form action="../book/findbyName" method="get">
Enter the name : <input type="text" name="name">
<input type ="submit" value="Submit">
</form>
<br>
<h3>ADD</h3><br>
<form action="../book/insert" method="get">
ID: <input type="text" name="id"><br>
Name:  <input type="text" name="name"><br>
Price: <input type="number" name="price"><br>
Status:<input type="text" name="status"><br>
<input type ="submit" value="Submit">
</form>
<br>
<h3>DELETE</h3><br>
<form action="../book/deletebyId" method="get">
ID : <input type="number" name="id" >
<input type="submit" value="Submit">
</form>
<br>

<h3>Update</h3>
<form action="../book/UpdatebyId" method="get">
ID : <input type="number" name="id" ><br>
Price : <input type="number" name="price"><br>
<input type="submit" value="Submit">
</form>

<br>
<h3></h3>
<div class="footer_menu">
			<div class="container">
				<div class="row" style="color:#fff;margin-bottom:5px;">
					<div class="col-lg-4" >
						<div><h3><font style="color:black">Information</font></h3></div>
						<div><a href="#"><font style="color:black">About Us</font></a></div>
						<div><a href="#"><font style="color:black">Contact Us</font></a></div>
					</div>
					<div class="col-lg-4">
						<div><h3><font style="color:black"><font style="color:black">My Account</font></h3></div>
						<div><a href="#" role="button" data-toggle=""><font style="color:black">Login</font></a></div>
						<div><a href="#"><font style="color:black">Signup</font></a></div>
					</div>
					<div class="col-lg-4">
						<div><h3><font style="color:black">Contact Us</font></h3></div>
						<div>Contact: +91-9797979797</div>
					</div>
				</div>
			</div>
		</div>
</body>
</html>
