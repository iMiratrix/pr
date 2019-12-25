<?php
session_start();
require_once 'lib/dbConnection.php';
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="style/more.css">
    <script src="https://kit.fontawesome.com/4361691883.js" crossorigin="anonymous"></script>
    <title>Подробнее</title>
</head>
<body>
<header>
    <div class="wrap-logo">
        <a href="index.php" class="logo">Magaz</a>
    </div>
    <nav>
        <a class="" href="index.php">Главная</a>
        <a href="buy2.php">Проверить заказ</a>
        <a href="basket.php">Корзина <i class="fa fa-shopping-basket"></i></a>
    </nav>
</header>
<?php
$sql = ('SELECT * FROM books WHERE id_book =' . $_GET['id']);
$stmt = $pdo->query($sql);
while ($data = $stmt->fetch()) {
    echo <<<HTML
<img  src="img/${data['img']}" alt="">
 <div class="op">Название:${data['name_book']}</div>
 <div class="op">Полное опиcание:${data['fdeck']}</div>
 <div class="op">Цена:${data['price']} ₽</div>

HTML;

}
?>


</body>
</html>

