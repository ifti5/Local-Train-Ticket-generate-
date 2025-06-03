<?php
session_start();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Panel</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        .navbar-brand {
            font-weight: bold;
        }
        .nav-link {
            font-size: 18px;
        }
        .logout-link {
            color: #dc3545 !important; /* Bootstrap danger color */
            font-weight: bold;
        }
        .logout-link:hover {
            color: #a71d2a !important;
        }
    </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Local Train User</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        
        <div class="collapse navbar-collapse" id="navbarNav">
            <!-- Left Nav Items -->
            <ul class="navbar-nav me-auto">
                <li class="nav-item">
                    <a class="nav-link" href="manage_trains.php"><i class="fas fa-cogs me-1"></i> Manage Trains</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="add_train.php"><i class="fas fa-plus me-1"></i> Add Train</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="assign_seats.php"><i class="fas fa-chair me-1"></i> Assign Seats</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="view_bookings.php"><i class="fas fa-ticket-alt me-1"></i> View Bookings</a>
                </li>
            </ul>

            <!-- Right Logout Link -->
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link logout-link" href="logout.php">
                        <i class="fas fa-sign-out-alt me-1"></i> Logout
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
