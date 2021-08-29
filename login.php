<?php $pagedesc = "Login"; ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<link rel="stylesheet" href="dist/css/style.css">
	<link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
	<title>Sistem Informasi Pengajuan Cuti Online - <?php echo $pagedesc ?></title>
	<link href="libs/img/avatar.svg" rel="icon" type="images/x-icon">

	<!-- Bootstrap Core CSS -->
	<link href="libs/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

	<!-- Custom CSS -->
	<link href="dist/css/offline-font.css" rel="stylesheet">
	<link href="dist/css/custom.css" rel="stylesheet">

	<!-- Custom Fonts
	<link href="libs/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"> -->
	
	<!-- jQuery -->
	<script src="libs/jquery/dist/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="libs/bootstrap/dist/js/bootstrap.min.js"></script>

	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>

<body >
	<section id="main-wrapper" style="margin-top: 120px; " >
		<div class="container-fluid" >
			<div class="row">
				<div class="col-lg-4 col-lg-offset-4 col-md-4 col-md-offset-4"><?php include("layout_alert.php"); ?></div>
			</div><!-- /.row -->
			<!-- <div class="row"> -->
				<!-- <div id="page-wrapper" class="col-lg-4 col-lg-offset-4 col-md-4 col-md-offset-4" style="background-color: #ffffff; border-radius: 3px; webkit-box-shadow: 0 1px 1px rgba(0,0,0,.05); box-shadow: 0 1px 1px rgba(0,0,0,.05)"> -->
					<!-- <div class="row">
						<div class="col-lg-12">
							<br/>
						</div>
					</div>/.row -->
					
					<div class="container">
						<div class="col-lg-12">
						<div class="img">
            				<img src="libs/img/img.svg"/>
        				</div>
							<!-- <div class="panel panel-default"> -->
								<div class="login-container" >
									<form action="login_auth.php" method="post" >
									<img class="avatar" src="libs/img/avatar.svg" />
                					<center><h2>Welcome</h2></center>
                <div class="input-div one">
                    <div class="i">
                        <i class="fas fa-user"></i>
                    </div>
                <div>
                        
                        <input type="text" class="input" name="username" placeholder="Username" required>
                    </div>
                </div>
                    <div class="input-div two">
                        <div class="i">
                            <i class="fas fa-lock"></i>
                        </div>
                        <div>
                            
                            <input type="password" class="input" name="password" placeholder="Password" required>
                        </div>
                        
                    </div>
					<div class="form-group">
						<select class="form-control" name="akses" required style="font-family: 'Poppins', sans-serif;">
							<option value="">Login Sebagai</option>
							<option value="Admin">Administrator/HRD</option>
							<option value="Mng">Manager</option>
							<option value="Pgw">Pegawai</option>
							<option value="Spv">Supervisor</option>
						</select>
					</div>
										<div class="form-group">
											<input type="submit" class="btn btn-block" name="login" value="Login">
										</div>
									</form>
								</div>
							</div>
						</div><!-- /.col -->
					<!-- </div>/.row -->
				<!-- </div>/.col -->
			<!-- </div>/.row -->
		 </div>/<!--.container -->
	</section>
	
	<!-- footer-bottom -->
	<!-- <div class="navbar navbar-inverse navbar-fixed-bottom footer-bottom">
		<div class="container text-center">
			<p class="text-center" style="color: #D1C4E9; margin: 0 0 5px; padding: 0"><small>Sistem Informasi Pengajuan Cuti Online</small></p>
		</div> -->
	</div><!-- /.footer-bottom -->



</body>
</html>