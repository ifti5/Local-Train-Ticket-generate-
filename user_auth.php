<?php
session_start();
error_reporting(E_ALL);
ini_set('display_errors', 1);

// DB Connection
$host = "localhost";
$user = "root";
$password = "";
$database = "local_train_system";
$conn = new mysqli($host, $user, $password, $database);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Registration
if (isset($_POST['register'])) {
    $name = $_POST["reg_name"];
    $email = $_POST["reg_email"];
    $pass = password_hash($_POST["reg_password"], PASSWORD_DEFAULT);

    $sql = "INSERT INTO users (name, email, password) VALUES ('$name', '$email', '$pass')";
    if ($conn->query($sql) === TRUE) {
        echo "<script>alert('Registration successful! Please login.');</script>";
    } else {
        echo "<script>alert('Registration failed: " . $conn->error . "');</script>";
    }
}

// Login
if (isset($_POST['login'])) {
    $email = $_POST["login_email"];
    $pass = $_POST["login_password"];

    // Admin Login (Corrected)
    if ($email === "admin@gmail.com" && $pass === "admin") {
        $_SESSION['admin'] = true;
        header("Location: admin/add_train.php");
        exit();
    }

    // User Login
    $sql = "SELECT * FROM users WHERE email='$email'";
    $result = $conn->query($sql);

    if ($result->num_rows === 1) {
        $user = $result->fetch_assoc();
        if (password_verify($pass, $user['password'])) {
            $_SESSION['user_id'] = $user['user_id'];
            $_SESSION['user_name'] = $user['name'];
            header("Location: customer/book_ticket.php");
            exit();
        } else {
            echo "<script>alert('Invalid password.');</script>";
        }
    } else {
        echo "<script>alert('User not found.');</script>";
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Login / Register</title>
    <style>
        body {
            font-family: Arial;
            background: #000;
            color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            position: relative;
            overflow: hidden;
        }

        /* Background video */
        video {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            object-fit: cover;
            z-index: -1;
        }

        .container {
            background: rgba(255, 255, 255, 0.1); /* Glass effect */
            backdrop-filter: blur(10px); /* Adds blur for glass effect */
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            width: 400px;
            text-align: center;
        }

        h2 {
            margin-bottom: 20px;
        }

        input[type="text"], input[type="email"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: rgba(255, 255, 255, 0.8);
            color: #333;
        }

        button {
            width: 100%;
            padding: 10px;
            background: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background: #0056b3;
        }

        .toggle {
            text-align: center;
            margin-top: 15px;
        }

        .toggle a {
            text-decoration: none;
            color: #007bff;
        }

        .form-section {
            display: none;
        }

        .form-section.active {
            display: block;
        }
    </style>
    <script>
        function toggleForm(section) {
            document.getElementById('login-form').classList.remove('active');
            document.getElementById('register-form').classList.remove('active');
            document.getElementById(section).classList.add('active');
        }
        window.onload = () => toggleForm('login-form');
    </script>
</head>
<body>

<video autoplay muted loop>
    <source src="1.mp4" type="video/mp4">
    Your browser does not support the video tag.
</video>

<div class="container">
    <h2>Login / Register</h2>

    <!-- Login Form -->
    <div class="form-section" id="login-form">
        <form method="POST">
            <input type="email" name="login_email" placeholder="Email" required>
            <input type="password" name="login_password" placeholder="Password" required>
            <button type="submit" name="login">Login</button>
        </form>
        <div class="toggle">
            No account? <a href="#" onclick="toggleForm('register-form')">Register</a>
        </div>
    </div>

    <!-- Registration Form -->
    <div class="form-section" id="register-form">
        <form method="POST">
            <input type="text" name="reg_name" placeholder="Full Name" required>
            <input type="email" name="reg_email" placeholder="Email" required>
            <input type="password" name="reg_password" placeholder="Password" required>
            <button type="submit" name="register">Register</button>
        </form>
        <div class="toggle">
            Already have an account? <a href="#" onclick="toggleForm('login-form')">Login</a>
        </div>
    </div>
</div>

</body>
</html>
