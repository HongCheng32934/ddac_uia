<?php
$bookingActive = false;

if($page->data()[Page::COL_SLUG] == 'home' || $page->data()[Page::COL_SLUG] == 'detail') {
	$bookingActive = true;
}

?>

<?php if($user->isLoggedIn()): ?>

<div data-sticky-container>
    <div class="top-bar dashboard-top-bar" data-sticky data-options="marginTop:0;" style="width:100%;z-index:999">
        <div class="top-bar-title">
          <span data-responsive-toggle="menu" data-hide-for="large">
              <button class="menu-icon dark " type="button" data-toggle="offCanvas" ></button>
              <strong class="hide-for-large-up">Menu</strong>
          </span>

          <span data-responsive-toggle="responsive-menu" data-hide-for="large" style="position: absolute; top: 17px; right: 10px; display: none;">
            <button class="menu-icon dark" type="button" data-toggle="true"></button>
          </span>
        </div>
        
        <div id="responsive-menu">
            <div class="top-bar-left">
				<a href="index.php"><img style="height:2.5rem" src="img/uia-logo.png" /></a>
            </div>
            <form method="post" action="" accept-charset="UTF-8">
            <div class="top-bar-right">
			    <ul class="dropdown menu" data-dropdown-menu>
					<li><a href="index.php">Home</a></li>
					<li>
						<a href="#"><?php echo $_SESSION['name']; ?></a>
						<ul class="menu vertical">
							<li><a href="controller/logout.php">Logout</a></li>
						</ul>
					</li>
			    </ul>
            </div>
            </form>
        </div>
    </div>
</div>

<?php else: ?>

<div class="top-bar dashboard-top-bar" style="width:100%;z-index:999">
    <div class="top-bar-title">
      <span data-responsive-toggle="responsive-menu" data-hide-for="large">
          <button class="menu-icon dark " type="button" data-toggle="offCanvas" ></button>
          <strong class="hide-for-large-up">Menu</strong>
      </span>
    </div>
    
    <div id="responsive-menu">
        <div class="top-bar-left">
			<a href=""><img style="height:2.5rem;top:40px" src="img/uia-logo.png" /></a>
        </div>
        <form method="post" action="" accept-charset="UTF-8">
        <div class="top-bar-right">
		    <ul class="dropdown menu" data-dropdown-menu>
				<li>
					<a href="#"><?php echo Config::get('region') ?></a>
				</li>
		    </ul>
        </div>
        </form>
    </div>
</div>

<?php endif; ?>
<!--
<div class="off-canvas position-left reveal-for-large dashboard-off-canvas is-transition-push" id="offCanvas" data-off-canvas="true" aria-hidden="false">
	<ul class="menu vertical">
		<li<?php if($bookingActive){ echo " class='active' "; } ?>>
			<a href="dashboard.php?page=main">
				<i class="fi-results"></i>
				<span>Booking</span>
			</a>
		</li>
		<li<?php if(!$bookingActive){ echo " class='active' "; } ?>>
			<a href="dashboard.php?page=search">
				<i class="fi-plus"></i>
				<span>New</span>
			</a>
		</li>
	</ul>
</div>
-->