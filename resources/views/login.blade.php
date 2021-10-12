{{--  <?php
session_start();
include("koneksi.php");

?>  --}}
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Login Page</title>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <!-- Fontawesome CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />


	<!-- Bootstrap -->
	<link href="asset/css/bootstrap.min.css" rel="stylesheet">
	<link href="asset/css/font-awesome.min.css" rel="stylesheet">
	<style>
		@font-face {
		font-family: 'quicksand';
		src: 
		local('Quicksand'),
		local('Quicksand'),
		url('asset/quicksand/Quicksand-Medium.ttf') 
		format('opentype');
		}
		
		/*bold version*/
		@font-face {
		font-family: 'quicksand';
		src: 
		local('Quicksand Bold'),
		local('Quicksand-Bold'),
		url('asset/quicksand/Quicksand-Bold.otf') 
		format('opentype');
		}
		
		html {
			overflow-x: hidden;
			height: 100%;
			box-sizing: border-box;
		}

		*,
		*:before,
		*:after {
		  box-sizing: inherit;
		}
	
		body {
			background-image: url(asset/img/bg-web.png);
			backrgound-repeat: no-repeat;
			background-size: cover;
			font-family: Quicksand;
			overflow-x: hidden;
		}
		
		
	</style>
	
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
	
</head>
<body>`
		
		
			<img src="asset/img/lancana.png" height="75px" />
	  <hr>
	  <div class="container">
		 <div class="row">
			
			<div class="col-md-3"></div>
			<div class="col-md-3">
			  <h3 style="color: #7a91d1;"><a href="index.php"><i class="glyphicon glyphicon-chevron-left"></i></a> Masuk</h3>
				
				
				<form role="form">
					<div class="form-group">
						<label>Username</label>
						<input type="text" name="username" maxlenght="10" class="form-control" placeholder="Username" required autofocus autocomplete="off"/>
					</div>
					<div class="form-group">
						<label>Password</label>
						<input type="password" name="password" maxlenght="10" class="form-control" placeholder="Password" required autofocus />
					</div>
					
					<div class="form-group">
						<a href ="{{ route('/home'); }}"><input type="submit" name="login" class="btn btn-primary btn-block" value="LOGIN" /><a>
					</div>
				</form>
				<span>Belum punya akun?<a href="register.php">Klik disini</a></span>
			</div>
			<div class="col-md-3">
				<img src="asset/img/Forum.png" width="300px" />
			</div>
		  </div>
		</div>
		<div class="row" style="padding-top: 20px;">
		  <div class="col-md-12">
			<div class="text-center">
			Bismillah
			</div>
		  </div>
		</div>
	{{--  <script src="asset/js/jquery-3.4.1.min.js"></script>
	<script src="asset/js/bootstrap.min.js"></script>  --}}

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

    <!-- Option 2: jQuery, Popper.js, and Bootstrap JS
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    -->
</body>
</html>