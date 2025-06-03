<?php
include "../config/db.php";
include "navbar1.php";

$result = $conn->query("SELECT * FROM trains");

echo '<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">';
echo '<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">';

echo '<div class="container mt-5">';
echo '<h2 class="text-center mb-4">Train Schedule</h2>';

echo '<table class="table table-bordered table-striped table-hover">
        <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>Train Name</th>
                <th>Departure</th>
                <th>Arrival</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>';

while ($row = $result->fetch_assoc()) {
    echo "<tr>
            <td>{$row['train_id']}</td>
            <td>{$row['train_name']}</td>
            <td>{$row['departure_time']}</td>
            <td>{$row['arrival_time']}</td>
            <td><a href='select_seat.php?train_id={$row['train_id']}' class='btn btn-primary'><i class='fas fa-ticket-alt'></i> Select Seat</a></td>
        </tr>";
}

echo '</tbody></table></div>';
echo '<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>';
?>
