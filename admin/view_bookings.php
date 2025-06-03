<?php
include "../config/db.php";
include "navbar.php"; // Admin navigation
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>All Bookings - Admin Panel</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-4">
    <h2 class="text-center mb-4">📋 All Train Ticket Bookings</h2>

    <?php if (isset($_GET['success'])): ?>
        <div class="alert alert-success text-center">
            ✅ Ticket cancelled successfully.
        </div>
    <?php endif; ?>

    <table class="table table-bordered table-hover table-striped align-middle">
        <thead class="table-dark">
            <tr>
                <th>Ticket ID</th>
                <th>Train Name</th>
                <th>Customer Name</th>
                <th>Email</th>
                <th>Seat Class</th>
                <th>Seat Number</th>
                <th>Price</th>
                <th>Booking Date</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
        <?php
        $sql = "SELECT t.ticket_id, tr.train_name, u.name AS customer_name, u.email, 
                       s.seat_class, s.seat_id AS seat_number, t.price, t.created_at AS booking_date
                FROM tickets t
                JOIN trains tr ON t.train_id = tr.train_id
                JOIN users u ON t.user_id = u.user_id
                JOIN seats s ON t.seat_id = s.seat_id
                ORDER BY t.created_at DESC";

        $result = $conn->query($sql);

        if ($result && $result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                echo "<tr>
                        <td>{$row['ticket_id']}</td>
                        <td>{$row['train_name']}</td>
                        <td>{$row['customer_name']}</td>
                        <td>{$row['email']}</td>
                        <td>{$row['seat_class']}</td>
                        <td>{$row['seat_number']}</td>
                        <td>৳{$row['price']}</td>
                        <td>{$row['booking_date']}</td>
                        <td>
                            <a href='admin_cancel_ticket.php?ticket_id={$row['ticket_id']}&seat_id={$row['seat_number']}' 
                               class='btn btn-sm btn-danger' 
                               onclick=\"return confirm('Are you sure you want to cancel this ticket?');\">Cancel</a>
                        </td>
                      </tr>";
            }
        } else {
            echo "<tr><td colspan='9' class='text-center'>❌ No bookings found.</td></tr>";
        }
        ?>
        </tbody>
    </table>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
