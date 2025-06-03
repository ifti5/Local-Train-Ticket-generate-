<?php
include "../config/db.php";
include "navbar1.php";

$train_id = $_GET['train_id'];
$result = $conn->query("SELECT * FROM seats WHERE train_id='$train_id'");

echo '<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">';
echo '<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">';

echo '<div class="container mt-5">';
echo '<h2 class="text-center mb-4">Select a Seat</h2>';

$seat_types = ['AC', 'Non-AC', 'Cabin'];
foreach ($seat_types as $type) {
    echo "<h3 class='mt-4'>$type Seats</h3>";
    echo '<div class="row row-cols-3 row-cols-md-4 g-4">'; // Start grid layout for each seat type

    // Filter seats based on type (AC, Non-AC, Cabin)
    $filtered_result = $conn->query("SELECT * FROM seats WHERE train_id='$train_id' AND seat_class='$type'");

    while ($row = $filtered_result->fetch_assoc()) {
        // Determine the seat color based on its status
        $seat_status = $row['status'];
        $seat_color = ($seat_status == 'Booked') ? 'red' : '#007bff'; // Red for booked, blue for available

        // Display each seat as a sofa icon with seat number
        echo "<div class='col'>
                <div class='card text-center'>
                    <div class='card-body'>
                        <a href='book_ticket.php?seat_id={$row['seat_id']}&train_id=$train_id' class='text-decoration-none' 
                           style='color: $seat_color;'>
                            <i class='fas fa-couch' style='font-size: 40px; color: $seat_color;'></i><br>
                            <span class='mt-2 d-block'>{$row['seat_class']} - Seat {$row['seat_number']}</span>
                        </a>
                    </div>
                </div>
            </div>";
    }

    echo '</div>'; // End grid layout for this seat type
}

echo '</div>'; // End container

echo '<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>';
?>
