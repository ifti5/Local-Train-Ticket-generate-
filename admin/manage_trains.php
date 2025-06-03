<?php include "navbar.php"; ?>
<?php
include "../config/db.php";

// Show delete confirmation
if (isset($_GET['delete'])) {
    $train_id = $_GET['delete'];
    $sql = "DELETE FROM trains WHERE train_id='$train_id'";
    if ($conn->query($sql) === TRUE) {
        echo "<div class='alert alert-success text-center mt-3'>✅ Train deleted successfully.</div>";
    } else {
        echo "<div class='alert alert-danger text-center mt-3'>❌ Failed to delete train.</div>";
    }
}

// Fetch train list
$result = $conn->query("SELECT * FROM trains");
?>

<!-- Bootstrap & Font Awesome CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<div class="container mt-5">
    <h2 class="text-center mb-4"><i class="fas fa-train me-2"></i>Manage Trains</h2>

    <div class="table-responsive">
        <table class="table table-bordered table-hover text-center">
            <thead class="table-dark">
                <tr>
                    <th>ID</th>
                    <th>Train Name</th>
                    <th>Departure</th>
                    <th>Arrival</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <?php while ($row = $result->fetch_assoc()): ?>
                    <tr>
                        <td><?= $row['train_id']; ?></td>
                        <td><?= $row['train_name']; ?></td>
                        <td><?= $row['departure_time']; ?></td>
                        <td><?= $row['arrival_time']; ?></td>
                        <td>
                            <a href="manage_trains.php?delete=<?= $row['train_id']; ?>"
                               class="btn btn-danger btn-sm"
                               onclick="return confirm('Are you sure you want to delete this train?');">
                               <i class="fas fa-trash-alt"></i> Delete
                            </a>
                        </td>
                    </tr>
                <?php endwhile; ?>
            </tbody>
        </table>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
