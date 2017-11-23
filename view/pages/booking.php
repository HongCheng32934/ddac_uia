<?php
$error = 0;
// clear session, just in case
unset($_SESSION['seats']);
unset($_SESSION['flight']);

if(Input::get('flight')) {
	$flightID = Input::get('flight');

	// route
	$_SESSION['flight'] = $flightID;

	// get flight info
	$flight = $booking->getFlight($flightID);

	// get booked seats
	$seats = $booking->getFlightBookedSeats($flightID);
}
else {
	header('Location: index.php');
}

if(Input::exist() && isset($_POST['confirm'])) {
	$bookDate = date('Y-m-d H:i:s');

	$newBooking = array(
			Booking::COL_USER_ID => $_SESSION['ID'],
			Booking::COL_FLIGHT_ID => $_SESSION['flight'],
			Booking::COL_DATE_BOOKED => $bookDate
		);

	$newID = $booking->createBooking($newBooking);

	if($newID > 0) {
		$bookedSeats = array();

		// seats
	    foreach(Input::get('seats') as $seat) {
	    	$bookedSeats[] = $newID.",'{$seat}'";
	    }

		$booking->addBookingSeats($bookedSeats);

		unset($_SESSION['flight']);

		header('Location: index.php');
	}
	else {
		$error = 1;
	}

	//header('Location: dashboard.php?page=checkout');
}

?>

<!-- Content start -->
<div id="content" style="height:calc(100% - 56px); ">

	<div class="small-12 small-centered columns">

		<?php if($error == 1): ?>
			<div class="small-12 columns">
				<div class="alert callout" data-closable>
					<h5>Booking Failed</h5>
					<p>It appears that there is an issue when creating the booking. Please try again later.</p>
					<button class="close-button" aria-label="Dismiss alert" type="button" data-close>
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
			</div>
		<?php endif; ?>

		<div class="row column">
			<div class="small-12 columns" style="padding-top: 15px; padding-bottom: 15px">
				<h3><i class="fi-magnifying-glass"></i> Seat Selection</h3>
			</div>

			<div class="small-8 columns">
				<div style="width:555px;margin:0 auto;position:relative">
					<div id="seat-map">
						<div class="front-indicator">Front</div>
					</div>
					<div class="booking-details">
						<h2>Legend</h2>
						<div id="legend"></div>
					</div>
				</div>
			</div>


			<div class="small-12 medium-4 columns">
				<div class="callout">
					<div class="row columns">
						<div class="row columns" style="margin-bottom:10px">
							<h4><i class="fi-plus"></i> Booking Details</h4>
						</div>

	                  <div class="row columns">
						<form method="post" action="" accept-charset="UTF-8">
							<ul class="vertical-detail">
								<li><span>Origin</span><?php echo $flight[Booking::COL_SOURCE]; ?></li>
								<li><span>Destination</span><?php echo $flight[Booking::COL_DESTINATION]; ?></li>
								<li><span>Departure</span><?php echo $flight[Booking::COL_DEPARTURE]; ?></li>
								<li><span>Seats Selected (<span id="counter" style="display:inline">0</span>)</span>
								<ul id="selected-seats" style="margin-bottom:0px"></ul>
								</li>
								<h5 style="margin-bottom:0px">Total: <b>$<span id="total">0</span></b></h5>
							</ul>
                              <input type="hidden" name="origin" value="<?php echo Input::get('ori'); ?>">
                              <input type="hidden" name="departure" value="<?php echo Input::get('des'); ?>">
                              
								<div class="row columns">
									<button type="submit" id="post" name="confirm" class="button expanded" disabled>Confirm</button>
								</div>	
						</form>
	                  </div>

					</div>
				</div>

			</div>

		</div>

	</div>

</div>
<!-- Content end -->

<link rel="stylesheet" type="text/css" href="css/jquery.seat-charts.css" />
<!-- JQuery -->
<script src="js/jquery.min.js"></script>
<!-- Foundation -->
<script src="js/foundation.min.js"></script>
<script src="js/app.js"></script>
<script src="js/jquery.seat-charts.min.js"></script>
<script>

// seats
var firstSeatLabel = 1;
var sc;
$(document).ready(function() {
	var $cart = $('#selected-seats'),
		$counter = $('#counter'),
		$total = $('#total'),
		$sel = $('#selSeat');
	sc = $('#seat-map').seatCharts({
		map: [
			'fff_fff',
			'fff_fff',
			'bbb_bbb',
			'bbb_bbb',
			'eee_eee',
			'eee_eee',
			'eee_eee',
			'eee_eee',
			'eee_eee',
		],
		seats: {
			f: {
				price   : <?php echo $flight[BOOKING::COL_FIRST]; ?>,
				classes : 'first-class',
				category: 'First Class',
				type	: 'f'
			},
			b: {
				price   : <?php echo $flight[BOOKING::COL_BUSINESS]; ?>,
				classes : 'business-class',
				category: 'Business Class',
				type	: 'b'
			},
			e: {
				price   : <?php echo $flight[BOOKING::COL_ECONOMY]; ?>,
				classes : 'economy-class',
				category: 'Economy Class',
				type	: 'e'
			}					
		
		},
		naming : {
			top : false,
			rows: ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J'],
			getLabel : function (character, row, column) {
				return row + column;
			},
		},
		legend : {
			node : $('#legend'),
		    items : [
				[ 'f', 'available',   'First Class'],
				[ 'b', 'available',   'Business Class'],
				[ 'e', 'available',   'Economy Class'],
				[ 'f', 'unavailable', 'Already Booked']
		    ]					
		},
		click: function () {
			if (this.status() == 'available') {
				$('<li><input type="checkbox" name="seats[]" style="display: none" value="'+this.settings.label+'" checked/>'+this.settings.label+' ('+this.data().category+'): <b>$'+this.data().price+'</b> <a href="javascript:void(0)" class="cancel-cart-item">[cancel]</a></li>')
					.attr('id', 'cart-item-'+this.settings.id)
					.attr('style', 'margin-bottom:1px')
					.data('seatId', this.settings.id)
					.appendTo($cart);

				var selTotal = sc.find('selected').length+1;
				$counter.text(selTotal);
				$("#post").attr("disabled", (selTotal == 0));

				$total.text(recalculateTotal(sc)+this.data().price);
				
				return 'selected';
			} else if (this.status() == 'selected') {
				//update the counter
				var selTotal = sc.find('selected').length-1;
				$counter.text(selTotal);
				$("#post").attr("disabled", (selTotal == 0));

				//and total
				$total.text(recalculateTotal(sc)-this.data().price);
			
				//remove the item from our cart
				$('#cart-item-'+this.settings.id).remove();
			
				//seat has been vacated
				return 'available';
			} else if (this.status() == 'unavailable') {
				//seat has been already booked
				return 'unavailable';
			} else {
				return this.style();
			}			
		}
	});

	//this will handle "[cancel]" link clicks
	$('#selected-seats').on('click', '.cancel-cart-item', function () {
		//let's just trigger Click event on the appropriate seat, so we don't have to repeat the logic here
		sc.get($(this).parents('li:first').data('seatId')).click();
	});

	//let's pretend some seats have already been booked
	sc.get([<?php echo implode(", ",$seats); ?>]).status('unavailable');

});

function recalculateTotal(sc) {
	var total = 0;

	//basically find every selected seat and sum its price
	sc.find('selected').each(function () {
		total += this.data().price;
	});

	return total;
}

</script>