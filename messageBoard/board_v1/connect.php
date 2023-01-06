<?php

require("datatable.php");

try {
    $pdo = new PDO($connect, $user, $password, $opts);
} catch (PDOException $e) {
    throw new PDOException($e->getMessage(), (int)$e->getCode());
}
