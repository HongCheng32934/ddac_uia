<?php

if(Input::exist()) {
	header('Location: index.php?page=booking&flight=' . Input::get('flight'));
}

if(Input::get('source')) {
	$type = "source";
}
else if(Input::get('destination')) {
	$type = "destination";
}

$results = $booking->searchFlight($type, Input::get($type));

?>

<!-- Content start -->
<div id="content" style="height:calc(100% - 56px); ">

	<div class="small-12 small-centered columns">

		<div class="row column">
			<div class="small-12 columns" style="padding-top: 15px; padding-bottom: 15px">
				<h3><i class="fi-magnifying-glass"></i> Search Result</h3>
			</div>

			<div class="small-12 columns">
				<table>
					<thead>
						<tr>
							<th width="250">Origin</th>
							<th width="250">Destination</th>
							<th>Departure</th>
							<th width="200">Price</th>
						</tr>
					</thead>

					<tbody>

					<?php foreach($results as $flight): ?>
						<tr>
							<td><a href="index.php?page=booking&flight=<?php echo $flight[Booking::COL_FLIGHT_ID] ?>"><?php echo $flight[Booking::COL_SOURCE]; ?></a></td>
							<td><a href="index.php?page=booking&flight=<?php echo $flight[Booking::COL_FLIGHT_ID] ?>"><?php echo $flight[Booking::COL_DESTINATION]; ?></a></td>
							<td><a href="index.php?page=booking&flight=<?php echo $flight[Booking::COL_FLIGHT_ID] ?>"><?php echo $flight[Booking::COL_DEPARTURE]; ?></a></td>
							<td><a href="index.php?page=booking&flight=<?php echo $flight[Booking::COL_FLIGHT_ID] ?>">From $<?php echo $flight[Booking::COL_ECONOMY]; ?></a></td>
						</tr>
					<?php endforeach; ?>

					</tbody>
				</table>
			</div>

		</div>

	</div>

</div>
<!-- Content end -->

<!-- JQuery -->
<script src="js/jquery.min.js"></script>
<!-- Foundation -->
<script src="js/foundation.min.js"></script>
<script src="js/app.js"></script>