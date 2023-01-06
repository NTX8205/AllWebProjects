<?php

session_start();

require("connect.php");


$_GET["id"] = isset($_GET["id"]) ? $_GET["id"] : null;
$val = $_GET["id"];
$status = new registerAccount($link);
$result = null;
switch ($val) {

    case "res":
        $status->signup();
        break;

    case "log":
        $status->login();
        break;

    case "delete":
        $status->del();
        break;
}





class registerAccount
{
    public function __construct($link)
    {
        $this->link = $link;
    }

    public function login()
    {
        $sql = "SELECT `account`, `password` FROM `user`";
        $id = $_POST['username'];
        $pw = $_POST['pw'];
        if ($result = mysqli_query($this->link, $sql)) {
            while ($row = mysqli_fetch_row($result)) {
                if ($id != null && $pw != null && $row[0] == $id && $row[1] == $pw) {
                    $_SESSION['username'] = $id;
                    echo '登入成功!';
                    header("location:/allproject/messageboard/board/ui/index.php");
                    return true;
                    mysqli_close($this->link);
                }
            }
            echo '<h1><p style="text-align: center;">登入失敗</p></h1>
                    <p style="text-align: center;">1秒後返回登入頁面</p>';
            echo '<meta http-equiv="refresh" content="1;url=../ui/login.php">';
            return false;
            mysqli_close($this->link);
        }
    }
    public function signup()
    {
        $sql = "INSERT INTO `user` (`account`, `password`) VALUES ('$_POST[username]','$_POST[pw]')";

        if (mysqli_query($this->link, $sql)) {
            header("location:/allproject/messageboard/board/ui/login.php");
            return true;
        } else {
            echo '<h1><p style="text-align: center;">已有相同帳號名稱</p></h1>
                    <p style="text-align: center;">1秒後返回註冊頁面</p>';
            echo '<meta http-equiv="refresh" content="1;url=../ui/register.php">';
            return false;
        }

        mysqli_close($this->link);
    }

    //test delete session
    public function del()
    {
        if (isset($_SESSION['username'])) {
            unset($_SESSION['username']);
        }
        header("location:/allproject/messageboard/board/ui/index.php");
    }
}
