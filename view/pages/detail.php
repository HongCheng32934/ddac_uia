<?php

$error = -1;

if(Input::get('id')) {
	// find route/booking stuff
	$flight = $booking->getUserBooking(Input::get('id'));
	$seats = $booking->getBookedSeats(Input::get('id'));

}
else {
	header('Location: index.php');
}

?>

<!-- Content start -->
<div id="content" style="height:calc(100% - 56px); ">

		<div class="row" style="padding-top: 15px">
			<!-- check destination + date, select seats, pay -->
			<div class="small-12 medium-8 columns" style="padding: 0; height: 100%; overflow-y: auto">
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
	                          <ul class="vertical-detail">
									<li><span>Date Booked</span><?php echo $flight[Booking::COL_DATE_BOOKED]; ?></li>
	                              <li><span>Origin</span><?php echo $flight[Booking::COL_SOURCE]; ?></li>
	                              <li><span>Destination</span><?php echo $flight[Booking::COL_DESTINATION]; ?></li>
	                              <li><span>Departure</span><?php echo $flight[Booking::COL_DEPARTURE]; ?></li>
	                              <li><span>Total</span><p id="total">$0</p></li>
	                          </ul>
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
<script src="js/jquery.seat-charts-static.min.js"></script>
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
				[ 'f', 'selected', 'Booked Seats']
		    ]					
		}
	});

	sc.get([<?php echo implode(", ",$seats); ?>]).status('selected');

	$total.text(recalculateTotal(sc));
});

function recalculateTotal(sc) {
	var total = 0;

	//basically find every selected seat and sum its price
	sc.find('selected').each(function () {
		total += this.data().price;
	});

	return '$'+total;
}

</script>