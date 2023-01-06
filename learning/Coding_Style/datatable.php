<?php

/**
 * 連接數據庫
 *
 * @return PDO $db
 */
function dbConnect()
{
    $db_type = 'mysql';  //數據庫類型
    $db_host = 'localhost';  //數據庫主機名
    $db_name = 'guestbook';  //數據庫名稱
    $db_user = 'user';  //用戶名
    $db_password = '';  //密碼
    $dbconnect = $db_type . ":host=" . $db_host . ";dbname=" . $db_name;  //數據源
    $db = new PDO($dbconnect, $db_user, $db_password);  //初始化一個PDO對象(數據源,用戶,密碼)
    $db->query("SET NAMES UTF8");  //資料可能會有亂碼，所以需要設定成 UTF8
    return $db;
}
/**
 * 取得並顯示所有留言
 *
 * @return array $statement
 */
function getAllComments()
{
    $db = dbConnect();
    $statement = $db->prepare("SELECT * FROM guestbook");
    $statement->execute();
    return $statement->fetchAll(PDO::FETCH_ASSOC);
}
/**
 * 新增一留言
 *
 * @param String $name
 * @param String $comment
 * @return boolean $statement
 */
function createComment($name, $comment)
{
    $db = dbConnect();
    $statement = $db->prepare("INSERT INTO guestbook(name, comment) VALUES (?,?)");
    $statement->execute([$name, $comment]);
    return $statement;
}
/**
 * 取得需要被編輯的留言
 *
 * @param String $id
 * @return array $statement
 */
function editComment($id)
{
    $db = dbConnect();
    $statement = $db->prepare("SELECT * FROM guestbook WHERE id=?");
    $statement->execute([$id]);
    return $statement->fetchAll(PDO::FETCH_ASSOC);
}
/**
 * 更改編輯過後的留言
 *
 * @param String $id
 * @param String $name
 * @param String $comment
 * @return boolean $statement
 */
function updateComment($id, $name, $comment)
{
    $db = dbConnect();
    $statement = $db->prepare("UPDATE guestbook SET name=?, comment=? WHERE id=?");
    $statement->execute([$name, $comment, $id]);
    return $statement;
}
/**
 * 刪除留言
 *
 * @param String $id
 * @return boolean $statement
 */
function deleteComment($id)
{
    $db = dbConnect();
    $statement = $db->prepare("DELETE FROM guestbook WHERE id= ?");
    $statement->execute([$id]);
    return $statement;
}
