<?php
require_once 'dbConnection.php';
$login = trim($_POST['login']);
$password = trim($_POST['password']);
if ($login = 'admin' && $password = 'admin') {
    header('Location: http://magaz/add.php ');
}