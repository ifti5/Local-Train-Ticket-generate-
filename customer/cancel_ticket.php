<?php
include "../config/db.php";
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

if (!isset($_SESSION['user_id'])) {
    die("Error: Please login first.");
}

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    if (!isset($_POST['ticket_id']) || !isset($_POST['seat_id'])) {
        die("❌ Error: Required data missing.");
    }

    $ticket_id = $_POST['ticket_id'];
    $seat_id = $_POST['seat_id'];
    $user_id = $_SESSION['user_id'];

    // Delete ticket
    $stmt = $conn->prepare("DELETE FROM tickets WHERE ticket_id = ? AND user_id = ?");
    $stmt->bind_param("ii", $ticket_id, $user_id);
    if ($stmt->execute()) {
        // Mark seat available
        $update_stmt = $conn->prepare("UPDATE seats SET status = 'Available' WHERE seat_id = ?");
        $update_stmt->bind_param("i", $seat_id);
        $update_stmt->execute();

        // Redirect back to bookings page
        header("Location: my_bookings.php?msg=cancelled");
        exit();
    } else {
        echo "❌ Error cancelling ticket: " . $conn->error;
    }
}
?>
