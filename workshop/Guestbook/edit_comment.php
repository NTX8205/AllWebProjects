<?php

    include("datatable.php");
    $id = $_GET['id'];
    $statement = editComment($id);
    include("edit_form.php");


?>