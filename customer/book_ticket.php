<?php
// Enable error reporting for debugging
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

// Include database and navbar
include "../config/db.php";
include "navbar1.php";

// Start session if not started
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

// Check if the request is GET and has required parameters
if ($_SERVER["REQUEST_METHOD"] == "GET") {
    if (!isset($_GET["seat_id"]) || !isset($_GET["train_id"])) {
        die("❌ Error: Seat ID or Train ID not provided.");
    }

    $seat_id = $_GET["seat_id"];
    $train_id = $_GET["train_id"];

    // Check if user is logged in
    if (!isset($_SESSION['user_id'])) {
        die("❌ Error: Please login first.");
    }

    $user_id = $_SESSION['user_id'];

    // Prepare seat availability check
    $stmt = $conn->prepare("SELECT * FROM seats WHERE seat_id = ? AND train_id = ? AND status = 'Available'");
    $stmt->bind_param("ii", $seat_id, $train_id);
    $stmt->execute();
    $result = $stmt->get_result();

    // Check if seat is available
    if ($result->num_rows !== 1) {
        die("❌ Error: Seat not available or does not exist.");
    }

    $seat = $result->fetch_assoc();

    // Determine price based on seat class
    $price = 0;
    if ($seat['seat_class'] === "AC") {
        $price = 500;
    } elseif ($seat['seat_class'] === "Non-AC") {
        $price = 300;
    } else {
        $price = 700;
    }

    // Insert into tickets table
    $insert_stmt = $conn->prepare("INSERT INTO tickets (user_id, train_id, seat_id, price) VALUES (?, ?, ?, ?)");
    $insert_stmt->bind_param("iiid", $user_id, $train_id, $seat_id, $price);

    if ($insert_stmt->execute()) {
        // Update seat status to 'Booked'
        $update_stmt = $conn->prepare("UPDATE seats SET status = 'Booked' WHERE seat_id = ?");
        $update_stmt->bind_param("i", $seat_id);
        $update_stmt->execute();

        echo "<h3>✅ Ticket booked successfully!</h3>";
        echo "<p>💺 Seat ID: $seat_id</p>";
        echo "<p>🚆 Train ID: $train_id</p>";
        echo "<p>💰 Price: $price TK</p>";
    } else {
        echo "❌ Error booking ticket: " . $insert_stmt->error;
    }
}
?>
