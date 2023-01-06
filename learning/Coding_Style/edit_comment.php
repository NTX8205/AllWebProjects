<?php

include("datatable.php");
include("edit_form.php");
$id = $_GET['id'];
$statement = editComment($id);
