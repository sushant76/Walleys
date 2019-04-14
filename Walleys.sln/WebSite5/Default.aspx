<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 
   
         <title>Login V3</title>
	<meta charset="UTF-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="Login/images/icons/favicon.ico"/>
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Login/vendor/bootstrap/css/bootstrap.min.css"/>
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Login/fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Login/fonts/iconic/css/material-design-iconic-font.min.css"/>
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Login/vendor/animate/animate.css"/>
	<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="Login/vendor/css-hamburgers/hamburgers.min.css"/>
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Login/vendor/animsition/css/animsition.min.css"/>
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Login/vendor/select2/select2.min.css"/>
	<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="Login/vendor/daterangepicker/daterangepicker.css"/>
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Login/css/util.css"/>
	<link rel="stylesheet" type="text/css" href="Login/css/main.css"/>
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Login/shubham.css"/>
 
</head>
<body>       
       <form id="form1" runat="server">
      <div class="container">
		<div class="row">
			<div class="col-8">
				<br/>
				<br/>
				<h1 style="color:#ffffff">Walleys</h1>
				<br/>
				<br/>
				<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="Images\caro1.png" alt="First slide"/>
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="Images\caro2.png" alt="Second slide"/>
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="Images\caro3.png" alt="Third slide"/>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
			</div>
			<div class="col-4">
				<div class="limiter">
					<div class="container-login100" align="right">
						<div class="wrap-login100">
							<form class="login100-form validate-form">
								<span class="login100-form-logo">
									<i class="zmdi zmdi-landscape"></i>
								</span>

								<span class="login100-form-title p-b-34 p-t-27">
									Log in
								</span>

								<div class="wrap-input100 validate-input" data-validate = "Enter username">
									<input id="textbox1" runat="server" class="input100" type="text" name="Usn" placeholder="Usn"/>
									<span class="focus-input100" data-placeholder="&#xf207;"></span>
								</div>

								<div class="wrap-input100 validate-input" data-validate="Enter password">
									<input  id="textbox2" runat="server" class="input100" type="password" name="Password" placeholder="Password"/>
									<span class="focus-input100" data-placeholder="&#xf191;"></span>
                                    <asp:Label ID="Label1" runat="server"  Visible="false"></asp:Label>
								</div>

								<div class="contact100-form-checkbox">
									<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me"/>
									<label class="label-checkbox100" for="ckb1">
										Remember me
									</label>
								</div>

								<div class="container-login100-form-btn">
									<button id="button1" runat="server" class="login100-form-btn" onserverclick="button1_click">
										Login
									</button>
								</div>

								<div class="text-center p-t-90">
									<a class="txt1" href="ForgetPassword.aspx">
										Forgot Password?
									</a>
								</div>
								<div class="text-center p-t-90">
									<p class="message">Not registered? <a href="StudentReg.aspx">Create an account</a></p>
						<!-- <a class="txt1" href="#">
							Forgot Password?
						</a> -->
					</div>
				</form>
			</div>
		</div>
	</div>
</div></div></div>
            </form>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>



       
       
               
   
      
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
