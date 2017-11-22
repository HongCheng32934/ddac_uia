<?php
	require_once('modal/core/setup.php');

	$view = $page->pageCheck();
	$booking = Booking::getInstance();
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

		<!-- Foundation -->
		<link rel="stylesheet" type="text/css" href="css/app.css" />

		<!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
			<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
	</head>

	<body>

		<!-- Header start -->
		<div id="header">
			<?php require_once('view/components/topbar.php'); ?>
		</div>
		<!-- Header end -->
		<?php
		//getting the view(content) of the page via the slug
		require_once(implode(DS, array(VIEW, 'pages', $view.'.php')));
		?>
	</body>

</html>
