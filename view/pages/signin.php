<?php
$error = -1;

if(Input::exist()) {
	$error = $user->login(Input::get('email'),Input::get('password'), isset($_POST['remember']));

	if($error == 0) {
		header('Location: dashboard.php?page=main');
		//exit();
	}
}

?>

<!-- Content start -->
<div id="content" style="height:100%;">

	<!-- View start -->
	<div class="row">

	<?php if($error == 1): ?>
		<div class="alert callout" data-closable>
			<h5>Login Failed</h5>
			<p>Incorrect password.</p>
			<button class="close-button" aria-label="Dismiss alert" type="button" data-close>
				<span aria-hidden="true">&times;</span>
			</button>
		</div>
	<?php elseif($error == 2): ?>
		<div class="alert callout" data-closable>
			<h5>Login Failed</h5>
			<p>Account does not exists. Consider <a href="portal.php?page=signup">sign up</a> for one.</p>
			<button class="close-button" aria-label="Dismiss alert" type="button" data-close>
				<span aria-hidden="true">&times;</span>
			</button>
		</div>
	<?php endif; ?>

		<div class="large-4 columns" style="background-color:white;padding:15px;position:absolute;top:50%;left:50%;margin: -220px 0 0 -250px;">

			<div class="centralise component-padding" style="padding-top: 5px">
				<a href="index.php"><img id="classic-top-logo" src="img/uia-full-logo.png" /></a>
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
						<a class="button secondary" href="portal.php?page=signup">Sign Up</a>
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