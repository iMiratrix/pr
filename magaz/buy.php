<?php
require_once 'lib/dbConnection.php';
$login = trim($_POST['login']);
$password = trim($_POST['password']);
$email = trim($_POST['email']);
$fio = trim($_POST['fio']);
$address = trim($_POST['address']);
$number = trim($_POST['number']);
$id_book = $_GET['id'];
if (!empty($login) && !empty($password)) {
    $password = password_hash($password, PASSWORD_DEFAULT);
    $sql = 'INSERT INTO buyers (login,password,email,fio,address,number,id_book) VALUES(:login,:password,:email,:fio,:address,:number,:id_book)';
    $params = ['login' => $login, ':password' => $password, 'email' => $email, 'fio' => $fio, 'address' => $address, 'number' => $number, 'id_book' => $id_book];
    $stmt = $pdo->prepare($sql);
    $stmt->execute($params);
    header('Location: http://magaz/buy2.php ');
}
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="style/style.css">
    <title>Заказ</title>
</head>
<body>
<header>
    <div class="wrap-logo">
        <a href="index.php" class="logo">Magaz</a>
    </div>
    <nav>
        <a class="" href="index.php">Главная</a>
        <a href="buy2.php">Проверить заказ</a>
        <a href="basket.php">Корзина</a>
    </nav>
</header>
<div class="reg">
    <form action="" method="post">
        <input type="text" name="login" placeholder="login" class="form-control">
        <input type="password" name="password" placeholder="password" class="form-control">
        <input type="text" name="fio" placeholder="ФИО" class="form-control">
        <input type="text" name="number" placeholder="Номер телефона" class="form-control">
        <input type="text" name="address " placeholder="Адрес" class="form-control">
        <input type="email" name="email" placeholder="email" class="form-control">
        <button type="submit" name="btn" class="btn btn-lg btn-primary btn-block">Заказать</button>
        <a href="buy2.php">Проверить заказ</a>
    </form>
</div>
</body>
</html>

