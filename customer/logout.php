<?php
session_start();
session_destroy();
header("Location: ../user_auth.php");
exit();
?>
