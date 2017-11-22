<?php
	require_once ('modal/core/setup.php');

	if($user->isLoggedIn()) {
	    header('Location: portal.php?page=err403');
	}

	$error = -1;

	if(Input::exist()) {
		if($user->isEmailUnique(Input::get('email'))) {
			$salt = Hash::salt(32);

			//create user
			$account = array(
					'full_name' => Input::get('fullName'),
					'email' => Input::get('email'),
					'password' => Hash::make(Input::get('password'),$salt),
					'salt' => $salt
				);
							
			$error = $user->create($account);
		}
		else {
			$error = 2;
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
		<div id="content">

			<!-- View start -->
			<div class="row">

			<?php if($error == 2): ?>
				<div style="width:400px;z-index:999;position:absolute;left:20px;bottom:20px;">
					<div class="alert callout" data-closable>
						<h5>Email already exist</h5>
						<p>Consider sign up with another email.</p>
						<button class="close-button" aria-label="Dismiss alert" type="button" data-close>
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
				</div>
			<?php elseif($error == 1): ?>
				<div style="width:400px;z-index:999;position:absolute;left:20px;bottom:20px;">
					<div class="alert callout" data-closable>
						<h5>Account Creation Failed</h5>
						<p>It appears that there is an issue when creating the account.</p>
						<button class="close-button" aria-label="Dismiss alert" type="button" data-close>
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
				</div>
			<?php elseif($error == 0): ?>
				<div style="width:400px;z-index:999;position:absolute;left:20px;bottom:20px;">
					<div class="success callout" data-closable>
						<h5>Congratulation!</h5>
						<p>Your account has been created successfully. Click <a href="signin.php">here</a> to sign in.</p>
						<button class="close-button" aria-label="Dismiss alert" type="button" data-close>
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
				</div>
			<?php endif; ?>

				<div class="large-4 columns" style="background-color:white;padding:15px;position:absolute;top:50%;left:50%;margin: -299px 0 0 -250px;">

					<div class="centralise component-padding" style="padding-top: 5px">
						<a href="index.php"><img id="classic-top-logo" src="img/uia-logo.png" /></a>
					</div>

					<form method="post" action="" accept-charset="UTF-8">
						<div class="row column">

							<h5 class="text-center">Fill in the details to create a new account</h5>

							<label>Full Name
								<input id="fullName" name="fullName" type="text" placeholder="Full Name" autocomplete="off" data-max-length='128' required>
							</label>

							<label>Email
								<input id="email" name="email" type="email" placeholder="Email" data-max-length='128' required>
							</label>

							<label>Password
								<input id="password" name="password" data-min-length="5" type="password" placeholder="Password" data-max-length='16' required>
							</label>

							<label>Retype Password
								<input id="passwordConfirm" name="passwordConfirm" type="password" placeholder="Retype Password" data-max-length='16' data-equal-id="password" required>
							</label>

							<button type="submit" id="post" class="button expanded">Register</button>

							<div class="expanded button-group">
								<a class="button secondary" href="signin.php">Sign in</a>
								<a class="button secondary disabled">Sign Up</a>
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
		<script>
		// custom validation
		$('[data-equal-id]').bind('input', function() {
		    var to_confirm = $(this);
		    var to_equal = $('#' + to_confirm.data('equalId'));

		    //if(to_confirm.val() != to_equal.val())
		    if($('#password').val() == $('#passwordConfirm').val())
		        document.getElementById("password").setCustomValidity('');
		    else
		    	document.getElementById("password").setCustomValidity('Passwords do not match');
		});

		$('[data-max-length]').bind('input', function() {
		    var input_target = $(this);
		    var limit = parseInt(input_target.data('maxLength'));
		    
		    if(input_target.val().length >= limit)
		        this.setCustomValidity('This field must be less than ' + limit + ' characters long');
		    else
		        this.setCustomValidity('');
		});

		$('[data-min-length]').bind('input', function() {
		    var input_target = $(this);
		    var limit = parseInt(input_target.data('minLength'));
		    
		    if(input_target.val().length <= limit)
		        this.setCustomValidity('This field must contain more than ' + limit + ' characters');
		    else
		        this.setCustomValidity('');
		});
		</script>

	</body>

</html>
