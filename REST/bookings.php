<?php
require_once ('../modal/core/setup.php');

$offset = is_numeric($_POST['offset']) ? $_POST['offset'] : die();
$postnumbers = is_numeric($_POST['number']) ? $_POST['number'] : die();
$userID = $_POST['userID'];

$bookHelper = Booking::getInstance();
$bookings = $bookHelper->getAllUserBookings($userID, $postnumbers, $offset);

if($bookings) {
	$table = "<table class='component-padding'><thead style='background-color: #eaeaea'><tr>";
	$table .= "<th width='175'>Booking ID</th>";
	$table .= "<th width='325'>Origin</th>";
	$table .= "<th width='325'>Destination</th>";
	$table .= "<th width='250'>Departure</th>";
	$table .= "</tr></thead><tbody>";

	foreach ($bookings as $booking) {
		$bookingID = $booking[Booking::COL_BOOKING_ID];
		$origin = $booking[Booking::COL_SOURCE];
		$destination = $booking[Booking::COL_DESTINATION];
		$departure = $booking[Booking::COL_DEPARTURE];

		$table .= "<tr><td><a href='index.php?page=detail&id={$bookingID}'>{$bookingID}</a></td>";
		$table .= "<td><a href='index.php?page=detail&id={$bookingID}'>{$origin}</a></td>";
		$table .= "<td><a href='index.php?page=detail&id={$bookingID}'>{$destination}</a></td>";
		$table .= "<td><a href='index.php?page=detail&id={$bookingID}'>{$departure}</a></td></tr>";
	}

	$table .= "</tbody></table>";

	echo $table;
}
else {
	echo "<div style='padding-top: 100px; padding-bottom: 60px'><h3>No bookings found.</h3></div>";
}

?>