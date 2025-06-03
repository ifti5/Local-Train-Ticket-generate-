<?php
include "../config/db.php";

if (isset($_GET['ticket_id']) && isset($_GET['seat_id'])) {
    $ticket_id = $_GET['ticket_id'];
    $seat_id = $_GET['seat_id'];

    // Delete the ticket
    $delete_sql = "DELETE FROM tickets WHERE ticket_id = '$ticket_id'";
    if ($conn->query($delete_sql) === TRUE) {
        // Update seat status to Available
        $update_seat_sql = "UPDATE seats SET status = 'Available' WHERE seat_id = '$seat_id'";
        $conn->query($update_seat_sql);

        // Redirect back with success message
        header("Location: view_bookings.php?success=1");
        exit();
    } else {
        echo "❌ Error deleting ticket: " . $conn->error;
    }
} else {
    echo "❌ Missing ticket ID or seat ID.";
}
?>
