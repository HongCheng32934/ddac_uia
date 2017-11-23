<!-- Content start -->
<div id="content">

<?php if($user->isLoggedIn()): ?>

    <?php
    if(Input::exist()) {

        header('Location: index.php?page=search&'.Input::get('type').'='.Input::get('airport'));
    }
    ?>

    <div class="row" style="padding-top: 15px">

        <div class="small-12 large-8 columns">
            <h4>
                <i class="fi-info"></i>
                 Booking
            </h4>
            
            <div id="content-load">

            </div>
        </div>

        <div class="small-12 large-4 columns">
            <div class="callout">
                <h4 style="margin-bottom:10px">
                    <i class="fi-plus"></i>
                     Search
                </h4>
                
                <form id="new" method="post" action="" accept-charset="UTF-8">
                    <label>Search Type
                        <select name="type">
                            <option value="source">Origin</option>
                            <option value="destination">Destination</option>
                        </select>
                    </label>

                    <label>Airport
                        <select name="airport">
                            <option value="BKK">Bangkok, Thailand - Suvarnabhumi (BKK)</option>
                            <option value="CDG">Paris, France - Charles de Gaulle (CDG)</option>
                            <option value="CGK">Jakarta, Indonesia - Soekarno–Hatta International (CGK)</option>
                            <option value="CWC">Chernivtsi, Ukraine - Chernivtsi (CWC)</option>
                            <option value="DXB">Dubai, UAE - Dubai International (DXB)</option>
                            <option value="HKG">Hong Kong, Hong Kong - Hong Kong International (HKG)</option>
                            <option value="ICN">Seoul, South Korea - Incheon International (ICN)</option>
                            <option value="JFK">New York City, NY - John F. Kennedy International (JFK)</option>
                            <option value="KUL">Kuala Lumpur, Malaysia - Kuala Lumpur International (KUL)</option>
                            <option value="LHR">London, United Kingdom - Heathrow (LHR)</option>
                            <option value="NGS">Nagasaki, Japan - Nagasaki (NGS)</option>
                            <option value="PEK">Beijing, China - Beijing Capital International (PEK)</option>
                            <option value="RWN">Rivne, Ukraine - Rivne International (RWN)</option>
                            <option value="SIN">Singapore, Singapore - Changi (SIN)</option>
                            <option value="TPE">Taipei, Taiwan - Taoyuan International (TPE)</option>
                        </select>
                    </label>

                    <button type="submit" id="post" class="button expanded">Search</button>
                </form>
            </div>
        </div>

    </div>

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
<?php if(!$user->isLoggedIn()): ?>
<div id="footer" class="classic-footer">
    <?php require_once('view/components/footer.php'); ?>
</div>
<?php endif; ?>
<!-- Footer end -->

<!-- JQuery -->
<script src="js/jquery.min.js"></script>
<!-- Foundation -->
<script src="js/foundation.min.js"></script>
<script src="js/app.js"></script>
<script src="js/ajax.post.js"></script>
<script>

$(document).ready(function() {

    $('#content-load').scrollPagination({

        nop     : <?php echo Config::get('max_booking_display'); ?>, // The number of posts per scroll to be loaded
        offset  : 0, // Initial offset, begins at 0 in this case
        error   : 'No more bookings', // When the user reaches the end this is the message that is
                                    // displayed. You can change this if you want.
        delay   : 500, // When you scroll down the posts will load after a delayed amount of time.
                       // This is mainly for usability concerns. You can alter this as you see fit
        scroll  : true, // The main bit, if set to false posts will not load as the user scrolls. 
                       // but will still load if the user clicks.
        userID  : <?php echo $_SESSION['ID']; ?>
        
    });
    
});

</script>