<?php

function dbConnect()
{
    $db_type = 'mysql'; //數據庫類型
    $db_host = '127.0.0.1'; //數據庫主機名
    $db_name = 'guestbook'; //數據庫名稱
    $db_user = 'user';  //用戶名
    $db_password = '';  //密碼
    $dbconnect = "mysql:host=" . $db_host . ";dbname=" . $db_name;    //數據源
    $db = new PDO($dbconnect, $db_user, $db_password);    //初始化一個PDO對象(數據源，用戶，密碼)
    $db->query("SET NAMES UTF8");   //資料可能會有亂碼，所以要設定成UTF8
    return $db;
}

function createComment($name, $comment)
{
    $db = dbConnect();  //連線到資料庫
    $statement = $db->prepare("INSERT INTO guestbook(name, comment) VALUE (?,?)");
    $statement->execute([$name, $comment]);
    return $statement;
}

function getAllComments()
{
    $db = dbConnect();  //連線到資料庫
    $statement = $db->prepare("SELECT * FROM guestbook");
    $statement->execute();
    return $statement->fetchAll(PDO::FETCH_ASSOC);
}

function editComment($id)
{
    $db = dbConnect();  //連線到資料庫
    $statement = $db->prepare("SELECT * FROM guestbook WHERE id= ?");
    $statement->execute([$id]);
    return $statement->fetchAll(PDO::FETCH_ASSOC);
}

function updateComment($id, $name, $comment)
{
    $db = dbConnect();  //連線到資料庫
    $statement = $db->prepare("UPDATE guestbook SET name=?, comment=? WHERE id=?");
    $statement->execute([$name, $comment, $id]);
    return $statement;
}

function deleteComment($id)
{
    $db = dbConnect();  //連線到資料庫
    $statement = $db->prepare("DELETE FROM guestbook WHERE id= ?");
    $statement->execute([$id]);
    return $statement;
}
