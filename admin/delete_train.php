<?php include "navbar.php"; ?>
<?php
include "../config/db.php";

if (isset($_GET['train_id'])) {
    $train_id = $_GET['train_id'];

    // Delete train from database
    $sql = "DELETE FROM trains WHERE train_id = '$train_id'";

    if ($conn->query($sql) === TRUE) {
        echo "Train deleted successfully!";
    } else {
        echo "Error deleting train: " . $conn->error;
    }
} else {
    echo "Invalid request!";
}
?>
<br>
<a href="manage_trains.php">Back to Train Management</a>
