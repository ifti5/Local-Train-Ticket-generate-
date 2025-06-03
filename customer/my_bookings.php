<?php
include "../config/db.php";
include "navbar1.php";
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

if (!isset($_SESSION['user_id'])) {
    die("Error: Please login first.");
}

$user_id = $_SESSION['user_id'];

// Show success message
if (isset($_GET['msg']) && $_GET['msg'] === 'cancelled') {
    echo "<div class='alert alert-success mt-4' role='alert'>✅ Ticket cancelled successfully.</div>";
}

// Fetch tickets and include the train name
$query = "SELECT t.ticket_id, t.price, s.seat_class, s.seat_id, tr.train_name 
          FROM tickets t
          JOIN seats s ON t.seat_id = s.seat_id
          JOIN trains tr ON t.train_id = tr.train_id
          WHERE t.user_id = '$user_id'";

$result = $conn->query($query);

echo "<div class='container mt-5'>";
echo "<h2 class='text-center mb-4'>🎫 My Booked Tickets</h2>";

if ($result->num_rows > 0) {
    echo "<div class='table-responsive'>";
    echo "<table class='table table-striped table-bordered'>
            <thead class='thead-dark'>
                <tr>
                    <th>Ticket ID</th>
                    <th>Train Name</th>
                    <th>Seat ID</th>
                    <th>Seat Class</th>
                    <th>Price</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>";
    while($row = $result->fetch_assoc()) {
        echo "<tr>
                <td>{$row['ticket_id']}</td>
                <td>{$row['train_name']}</td>
                <td>{$row['seat_id']}</td>
                <td>{$row['seat_class']}</td>
                <td>{$row['price']}</td>
                <td>
                    <form method='POST' action='cancel_ticket.php' onsubmit=\"return confirm('Are you sure you want to cancel this ticket?');\">
                        <input type='hidden' name='ticket_id' value='{$row['ticket_id']}'>
                        <input type='hidden' name='seat_id' value='{$row['seat_id']}'>
                        <button type='submit' class='btn btn-danger btn-sm'>
                            <i class='fas fa-times-circle'></i> Cancel
                        </button>
                    </form>
                </td>
              </tr>";
    }
    echo "</tbody></table></div>";
} else {
    echo "<div class='alert alert-warning' role='alert'>❌ You have not booked any tickets.</div>";
}

echo "</div>"; // End container

// Bootstrap JS for functionality like modal, tooltips, etc.
echo '<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>';
?>
