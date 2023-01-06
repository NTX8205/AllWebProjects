<?php

include("../connect.php");
$id = $_GET["id"];
$query = "SELECT * FROM `mes` WHERE id = '$id'";
$result = $pdo->query($query);
$row = $result->fetch();

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="mes.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous">
    </script>
    <script src="mes.js"></script>
    <title>留言板</title>
</head>

<body>

    <nav class="navbar navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">
                <h2>編輯留言</h2>
            </a>
        </div>
    </nav>
    <div class=" container-fluid">
        <form action="function.php" method="post">
            <div class="mb-3">
                <label class="form-label">名稱</label>
                <input type="text" class="form-control" id="edttitle" name="user" value="<?php echo $row["title"] ?>">
            </div>
            <div class="mb-3">
                <label class="form-label">內容</label>
                <textarea class="form-control" id="edtcontent" name="messages"
                    rows="3"><?php echo $row["messagers"] ?></textarea>
            </div>

            <div class="mb-3">
                <button type="submit" class="btn btn-outline-success" name="method" value="edit">編輯</button>
                <input type="hidden" id="edtidm" name="id" value="<?php echo $id ?>">
            </div>
        </form>
    </div>

</body>
