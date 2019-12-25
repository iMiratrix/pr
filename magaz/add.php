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
    <title>adminpanel</title>
</head>
<body>
<div class="reg">
    <form action="lib/checkadd.php" method="post">
        <input type="text" name="name_book" placeholder="Название книги" class="form-control">
        <input type="text" name="fio_authors" placeholder="Авторы" class="form-control">
        <input type="text" name="price" placeholder="Цена" class="form-control">
        <input type="text" name="name_section" placeholder="Название секции" class="form-control">
        <input type="text" name="desck" placeholder="Краткое описание" class="form-control">
        <input type="text" name="fdeck" placeholder="Полное описание" class="form-control">
        <input type="file" name="img" placeholder="Книга" class="form-control">
        <button type="submit" name="btn" class="btn btn-lg btn-primary btn-block">Отправить</button>
    </form>
</div>
</body>
</html>
