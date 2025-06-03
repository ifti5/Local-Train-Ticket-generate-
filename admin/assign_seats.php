<?php include "navbar.php"; ?>
<?php
include "../config/db.php";

// Insert seats
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $train_id = $_POST["train_id"];
    $seat_class = $_POST["seat_class"];
    $seat_number = $_POST["seat_number"];

    for ($i = 1; $i <= $seat_number; $i++) {
        $sql = "INSERT INTO seats (train_id, seat_class, seat_number, status) 
                VALUES ('$train_id', '$seat_class', '$i', 'Available')";

        if ($conn->query($sql) !== TRUE) {
            echo "<div class='alert alert-danger mt-3 text-center'>❌ Error: " . $conn->error . "</div>";
            break;
        }
    }

    if ($i > $seat_number) {
        echo "<div class='alert alert-success mt-3 text-center'>✅ $seat_number seats assigned successfully!</div>";
    }
}

$trains = $conn->query("SELECT * FROM trains");
?>

<!-- Bootstrap + Font Awesome -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<div class="container mt-5">
    <h2 class="text-center mb-4"><i class="fas  me-2"></i>Assign Seats to Train</h2>

    <form method="post" class="p-4 shadow bg-light rounded">
        <div class="mb-3">
            <label class="form-label"><i class="fas fa-train me-2"></i>Select Train</label>
            <select name="train_id" class="form-select" required>
                <option value="" disabled selected>Select a train</option>
                <?php while ($train = $trains->fetch_assoc()) { ?>
                    <option value="<?= $train['train_id'] ?>"><?= $train['train_name'] ?></option>
                <?php } ?>
            </select>
        </div>

        <div class="mb-3">
            <label class="form-label"><i class="fas fa-layer-group me-2"></i>Seat Class</label>
            <select name="seat_class" class="form-select" required>
                <option value="AC">AC</option>
                <option value="Non-AC">Non-AC</option>
                <option value="Cabin">Cabin</option>
            </select>
        </div>

        <div class="mb-3">
            <label class="form-label"><i class="fas fa-hashtag me-2"></i>Number of Seats</label>
            <input type="number" name="seat_number" class="form-control" min="1" required>
        </div>

        <button type="submit" class="btn btn-primary w-100">
            <i class="fas fa-plus-circle me-2"></i>Assign Seats
        </button>
    </form>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
