<?php include "navbar.php"; ?>
<?php
include "../config/db.php";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $train_name = $_POST["train_name"];
    $departure_time = $_POST["departure_time"];
    $arrival_time = $_POST["arrival_time"];
    $start_station = $_POST["start_station"];
    $end_station = $_POST["end_station"];

    $sql = "INSERT INTO trains (train_name, departure_time, arrival_time, start_station, end_station) 
            VALUES ('$train_name', '$departure_time', '$arrival_time', '$start_station', '$end_station')";

    if ($conn->query($sql) === TRUE) {
        echo "<div class='alert alert-success text-center mt-4'>🚆 Train added successfully!</div>";
    } else {
        echo "<div class='alert alert-danger text-center mt-4'>❌ Error: " . $conn->error . "</div>";
    }
}
?>

<!-- Bootstrap Form -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<div class="container mt-5">
    <h2 class="text-center mb-4"><i class="fas fa-train"></i> Add New Train</h2>
    <form method="post" class="p-4 shadow rounded bg-light">
        <div class="mb-3">
            <label class="form-label"><i class="fas fa-subway me-2"></i>Train Name</label>
            <input type="text" class="form-control" name="train_name" required>
        </div>

        <div class="mb-3">
            <label class="form-label"><i class="fas fa-clock me-2"></i>Departure Time</label>
            <input type="time" class="form-control" name="departure_time" required>
        </div>

        <div class="mb-3">
            <label class="form-label"><i class="fas fa-clock me-2"></i>Arrival Time</label>
            <input type="time" class="form-control" name="arrival_time" required>
        </div>

        <div class="mb-3">
            <label class="form-label"><i class="fas fa-map-marker-alt me-2"></i>Start Station</label>
            <input type="text" class="form-control" name="start_station" required>
        </div>

        <div class="mb-3">
            <label class="form-label"><i class="fas fa-map-marker-alt me-2"></i>End Station</label>
            <input type="text" class="form-control" name="end_station" required>
        </div>

        <button type="submit" class="btn btn-primary w-100">
            <i class="fas fa-plus-circle me-2"></i>Add Train
        </button>
    </form>
</div>

<!-- Bootstrap JS Bundle -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
