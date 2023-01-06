<?php

    require("../connect.php");

    $_POST["method"] = isset($_POST["method"]) ? $_POST["method"] : null;
    $_POST["id"] = isset($_POST["id"]) ? $_POST["id"] : null;
    $fun = $_POST["method"];
    $id = $_POST["id"];



switch ($fun) {
    case "add":
        add($pdo);
        break;
    case "edit":
        edit($id, $pdo);
        break;
    case "del":
        delete($id, $pdo);
        break;
    default:
        echo "no";
        break;
}

function add($pdo)
{
    $query = "INSERT INTO `mes` (`title`, `messagers`) VALUES ('$_POST[title]', '$_POST[messages]')";
    $pdo->query($query);
    header("location:board.php");
}

function delete($id, $pdo)
{
    $query = "DELETE FROM mes WHERE id=" . "$id";
    $pdo->query($query);
    header("location:board.php");
}

function edit($id, $pdo)
{
    $query = "UPDATE `mes` SET `title` = '$_POST[user]', `messagers` = '$_POST[messages]' WHERE `mes`.`id` = '$id'";
    $pdo->query($query);
    header("location:board.php");
}
