<?php
	require_once ('modal/core/setup.php');

	if($user->isLoggedIn()) {
	    header('Location: portal.php?page=err403');
	}

	$error = -1;

	if(Input::exist()) {
		$error = $user->login(Input::get('email'),Input::get('password'), isset($_POST['remember']));

		if($error == 0) {
			header('Location: index.php');
			//exit();
		}
	}

?>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="description" content="<?= Config::get('site_name') ?>" />
		<meta name="keywords" content="Ukraine International Airlines, UIA, flight, travel, booking" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="shortcut icon" type="image/png" href="assets/favicon.png">

		<title><?= Config::get('site_name')." | ".$page->data()[Page::COL_TITLE] ?></title>

		<!--<base href="<?= BASE_URL ?>/">-->

		<!-- Foundation -->
		<link rel="stylesheet" type="text/css" href="css/app.css" />
		<link rel="stylesheet" type="text/css" href="css/foundation-icons.css" />

		<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
	</head>

	<body class="portal-bg">

	<!-- Content start -->
	<div id="content" style="height:100%;">

		<!-- View start -->
		<div class="row">

		<?php if($error == 1): ?>
			<div style="width:400px;z-index:999;position:absolute;left:20px;bottom:20px;">
				<div class="alert callout" data-closable>
					<h5>Login Failed</h5>
					<p>Incorrect password.</p>
					<button class="close-button" aria-label="Dismiss alert" type="button" data-close>
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
			</div>
		<?php elseif($error == 2): ?>
			<div style="width:400px;z-index:999;position:absolute;left:20px;bottom:20px;">
				<div class="alert callout" data-closable>
					<h5>Login Failed</h5>
					<p>Account does not exists. Consider <a href="signup.php">sign up</a> for one.</p>
					<button class="close-button" aria-label="Dismiss alert" type="button" data-close>
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
			</div>
		<?php endif; ?>

			<div class="large-4 columns" style="background-color:white;padding:15px;position:absolute;top:50%;left:50%;margin: -220px 0 0 -250px;">

				<div class="centralise component-padding" style="padding-top: 5px">
					<a href="index.php"><img id="classic-top-logo" src="img/uia-logo.png" /></a>
				</div>

				<form method="post" action="" accept-charset="UTF-8">
					<div class="row column">

						<h5 class="text-center">Sign in to start your session</h5>

						<label>Email
							<input id="email" name="email" type="email" placeholder="Email" required>
						</label>

						<label>Password
							<input id="password" name="password" type="password" placeholder="Password" required>
						</label>

						<button type="submit" id="post" class="button expanded">Login</button>


						<div class="expanded button-group">
							<a class="button secondary disabled">Sign in</a>
							<a class="button secondary" href="signup.php">Sign Up</a>
						</div>

					</div>
				</form>

			</div>
		</div>
		<!-- View end -->

	</div>
	<!-- Content end -->


	<!-- JQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- Foundation -->
	<script src="js/foundation.min.js"></script>
	<script src="js/app.js"></script>

	</body>

</html>
