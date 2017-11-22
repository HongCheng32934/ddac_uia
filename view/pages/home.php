<!-- Content start -->
<div id="content">

<?php if($user->isLoggedIn()): ?>

    <!--dashboard home-->

<?php else: ?>

    <div class="cover no-scroll overlay" id="welcome" style="margin-bottom: 30px">
        <img style="max-width: 100%; max-height: 100%;" class="hide-for-small-only" src="img/uia_home.jpg" />
            <div class="content middle center">
                <div class="row column text-center">
                    <h1>Welcome</h1>
                    <p class="lead">You are few steps away from getting to your destination.</p>
                    <a href="signup.php" class="button large" style="margin-right: 16px">Sign Up</a>
                    <a href="signin.php" class="button large hollow">Sign In</a>
                </div>
            </div>
    </div>

<div class="component-padding" id="service"/>

        <div class="row component-padding">
            <div class="medium-6 columns medium-push-6">
                <img style="max-width: 100%; max-height: 100%;" class="hide-for-small-only" src="img/uia_home_1.jpg" />
            </div>
            
            <div class="medium-6 columns medium-pull-6">
                <h2>What makes us different</h2>
                <p>We strive to deliver reliable and fantastic service at an affordable price, ensuring everyone can experience the best service when travel with us. Over the past 70 years, we have served millions of passengers across the globe, sending them to their destination safely while providing them with tiptop service during their journey.</p>
            </div>
        </div>

        
        <div class="row">
            <div class="medium-4 columns">
                <h3>Value for money</h3>
                <p>Everyone wants to get the most out of their money. We make sure your flight is affordable so you can spend more in the actual trip.</p>
            </div>
            <div class="medium-4 columns">
                <h3>Reliable</h3>
                <p>Nothing feels more relieved than your flight arriving to your destination on time and safely. We ensure there is no delays at all cost.</p>
            </div>
            <div class="medium-4 columns">
                <h3>5-star service</h3>
                <p>With over 70 years of experience in this industry, you can certainly count on us to provide you the best service possible.</p>
            </div>
        </div>


        <hr />
        
        <div class="row column">
            <ul class="vertical medium-horizontal menu expanded text-center">
                <li><a href="#"><div class="stat">28k</div><span>Flights yearly</span></a></li>
                <li><a href="#"><div class="stat">43</div><span>Countries</span></a></li>
                <li><a href="#"><div class="stat">95</div><span>Cities</span></a></li>
                <li><a href="#"><div class="stat">70</div><span>Years of experience</span></a></li>
                <li><a href="#"><div class="stat">5</div><span>Star service</span></a></li>
            </ul>
        </div>
        <hr />
        

        
        <div class="component-padding large" id="register">
            <div class="row column text-center" style="margin-top: 70px; margin-bottom: 70px;">
                <h1>Join Us</h1>
                <p class="lead">Start flying with us now, it only takes 4 minutes to get started</p>
            <a href="signup.php" class="button large">Sign Up</a>
            </div>
        </div>

<?php endif; ?>

</div>
<!-- Content end -->

<!-- Footer start -->
<div id="footer" class="classic-footer">
    <?php require_once('view/components/footer.php'); ?>
</div>
<!-- Footer end -->

<!-- JQuery -->
<script src="js/jquery.min.js"></script>
<!-- Foundation -->
<script src="js/foundation.min.js"></script>
<script src="js/app.js"></script>