<?php
require_once 'dbConnection.php';
$login = trim($_POST['login']);
$password = trim($_POST['password']);
if (!empty($login) && !empty($password)) {
    $sql = 'SELECT login, password,id_buyer FROM buyers  WHERE login = :login';
    $params = [':login' => $login];
    $stmt = $pdo->prepare($sql);
    $stmt->execute($params);
    $user = $stmt->fetch(PDO::FETCH_OBJ);
    if ($user) {
        if (password_verify($password, $user->password)) {
            echo 'Логин: ' . $login;
            $data = $stmt = $pdo->query('SELECT * FROM orderss');
            while ($data = $stmt->fetch()) {
                echo "<br>Дата прибытия товара" . $data['date'];
            }

        } else {
            echo "Неверный логин или пароль";
        }
    } else {
        echo "Неверный логин или пароль";
    }
} else {
    echo "Поля пустые";
}
