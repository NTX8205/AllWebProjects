<?php

require "connect.php";
session_start();

$_GET["op"] = isset($_GET["op"]) ? $_GET["op"] : null;
$val = $_GET["op"];

$status = new Message($link);
$resStatus = new Respond($link);
$img = new image($link);
$result = null;
switch ($val) {
    case "add":
        $status->addmessage();
        $img->updateimg();
        break;

    case "edit":
        $status->editMessage();
        break;

    case "delete":
        $status->deleteMessage();
        break;

    case "res":
        $resStatus->respondMessage();
        break;

    case "del":
        $resStatus->deleteresMessage();
        break;

    case "editres":
        $resStatus->editresMessage();
        break;

    case "search":
        $result = $status->getLikelyMessage();
        break;
    default:
        $result = $status->getMessage();
}

class Message
{
    public function __construct($link)
    {
        $this->link = $link;
    }
    public function addMessage()
    {
        $sql = "INSERT INTO `mesboard`(`mesUser`, `title`,`messages`) VALUES ('$_SESSION[username]','$_POST[title]','$_POST[content]')";

        header("location:../ui/index.php");

        if (mysqli_query($this->link, $sql)) {
            return true;
        } else {
            return false;
        }
    }

    public function editMessage()
    {
        $sql = "UPDATE `mesboard` SET `title` = '$_POST[title]', `messages` = '$_POST[content]' WHERE `mesboard`.`id` = '$_POST[id]'";
        header("location:../ui/index.php");
        if (mysqli_query($this->link, $sql)) {
            return true;
        } else {
            return false;
        }
    }

    public function deleteMessage()
    {
        $sql = "DELETE FROM mesboard WHERE id=" . "$_GET[id]";
        header("location:../ui/index.php");
        if (mysqli_query($this->link, $sql)) {
            return true;
        } else {
            return false;
        }

        mysqli_close($this->link);
    }

    public function getMessage()
    {
        $sql = "SELECT title, messages,id,mesUser FROM `mesboard` ORDER BY id ASC";
        return mysqli_query($this->link, $sql);
    }
    public function getLikelyMessage()
    {
        $sql = "SELECT title, messages,id,mesUser FROM `mesboard` WHERE `title` LIKE '%$_POST[search]%' ORDER BY id ASC";
        return mysqli_query($this->link, $sql);
    }
}

class Respond
{
    public function __construct($link)
    {
        $this->link = $link;
    }

    public function respondMessage()
    {
        $sql = "INSERT INTO `resmesboard`(`resname`, `resmes`,`resid`) VALUES ('$_SESSION[username]','$_POST[content]','$_POST[id]')";
        header("location:../ui/fullmes.php?id=" . $_POST['id']);
        if (mysqli_query($this->link, $sql)) {
            return true;
        } else {
            return false;
        }

        mysqli_close($this->link);
    }

    public function deleteresMessage()
    {
        $sql = "DELETE FROM `resmesboard` WHERE `resmesboard`.`id` =" . "$_GET[id]";
        header("location:../ui/fullmes.php?id=" . $_GET["mesid"]);
        if (mysqli_query($this->link, $sql)) {
            return true;
        } else {
            return false;
        }

        mysqli_close($this->link);
    }

    public function editresMessage()
    {
        $sql = "UPDATE `resmesboard` SET `resmes` = '$_POST[content]' WHERE `resmesboard`.`id` = '$_POST[id]'";
        $sql1 = "SELECT * FROM `resmesboard` WHERE `resmesboard`.`id` = '$_POST[id]'";
        //$result1 = mysqli_query($link, $sql1) or die('MySQL query error');
        header("location:../ui/fullmes.php?id=" . $_GET["mesid"]);
        if (mysqli_query($this->link, $sql)) {
            return true;
        } else {
            return false;
        }

        mysqli_close($this->link);
    }
}

class image
{
    public function updateimg()
    {
        if (isset($_POST["add"])) {
            $check = getimagesize($_FILES["file"]["tmp_name"]);
            if ($check !== false) {
                $uploadOk = 1;
            } else {
                echo "File is not an image.";
                $uploadOk = 0;
            }
        }

        if ($_FILES["file"]["error"] > 0) {
            echo "Error: " . $_FILES["file"]["error"];
        } else {
            move_uploaded_file($_FILES["file"]["tmp_name"], "../img/" . $_FILES["file"]["name"]);
        }
    }
}
