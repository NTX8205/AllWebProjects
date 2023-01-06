<?php

    include("datatable.php");
    $id = $_POST['id'];
    $statement = deleteComment($id);
    header("Location: index.php");

?>