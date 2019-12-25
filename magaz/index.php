<?php
require_once 'lib/dbConnection.php';
session_start();

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
    <script src="https://kit.fontawesome.com/4361691883.js" crossorigin="anonymous"></script>
    <title>Magaz</title>
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

<main>
    <div class="container content">
        <div class="row">
            <div class="col-md-4">
                <div class="list-group">
                    <a href="#" class="list-group-item">Популярное</a>
                    <a href="#" class="list-group-item">Новое</a>
                    <a href="#" class="list-group-item">Бестселлеры</a>
                    <a href="#" class="list-group-item">Классика</a>
                    <a href="#" class="list-group-item">Подарки на НГ</a>
                </div>
            </div>
            <div class="col-md-8 products">
                <div class="row">
                    <?php
                    $data = $stmt = $pdo->query('SELECT * FROM books');
                    while ($data = $stmt->fetch()) {
                        $_SESSION['name_book'] = $data['name_book'];
                        $_SESSION['img'] = $data['img'];
                        $_SESSION['price'] = $data['price'];
                        $_SESSION['desck'] = $data['desck'];
                        $_SESSION['fio_authors'] = $data['fio_authors'];
                        echo <<<HTML
                    <div class="col-sm-4">
                        <div class="product">
                            <div class="product-img" id="product-img">
                                <a href="more.php?id=${data['id_book']}"><img src="img/${_SESSION['img']}" alt=""></a>
                            </div>
                            <p class="product-title" id="product-title">${_SESSION['name_book']}</p>
                            <p class="product-desc" id="product-desc">${_SESSION['fio_authors']}</p>
                            <p class="product-price" id="product-price">${_SESSION['price']}₽</p>  
                             <a href="basket.php?id=${data['id_book']}"><i class="fa fa-shopping-basket"></i></a>          
                        </div>
                    </div>
HTML;

                    }
                    ?>
                </div>
            </div>
        </div>

    </div>
    <script src="js/js1.js"></script>

</main>
<footer>
    <a>magaz</a>
</footer>
</body>
</html>

