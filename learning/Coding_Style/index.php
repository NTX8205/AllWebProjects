<?php
    include("datatable.php");
    $statement = getAllComments();
?>

<html>
<head>
    <meta charset="UTF-8">
    <title>Guestbook</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">

    <style>
        .card{
            width: 500px;
            margin: 0 auto;
        }
        
        .form{
            width: 300px;
            margin: 0 auto;
        }
    </style>
</head>

<body  style="background-color:F0F0F0;">
    <div class="card mt-5">
        <h1 class="mt-4 text-center">Guestbook</h1>
        <div class="form p-3">
            <form method="POST" action="/Guestbook/create_comment.php">
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text text-light bg-dark">暱稱: </span>
                    </div>
                    <input class="form-control" type="text" name="name" required="required" placeholder="輸入暱稱">
                </div>
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text text-light bg-dark">評論: </span>
                    </div>
                    <textarea class="form-control" 
                                name="comment" cols="40" rows="5" required="required" placeholder="輸入評論"></textarea>
                </div>
                <input type="hidden" name="id" value="id">
                <input type="submit" name="submit" class="btn btn-dark" value="新增資料">
            </form>
        </div>
    </div>
    
    <div>
        <h2 class="mt-4 text-center">All Comment</h2>
        <?php foreach ($statement as $row) {  ?>
            <div class="card">
                <h5 class="mx-3 mt-2"><?php echo $row['id'] . "." . $row['name'] ?></h5>
                <p class="mx-3"><?php echo $row['comment'] ?></p>
            <div>
                <a href="edit_comment.php?id=<?php echo $row['id'] ?>">
                    <input type="submit" value="修改" class="btn btn-dark mx-3" style="float:right">
                </a>
                <form method="POST" action="delete_comment.php" onsubmit="return myform();">
                    <input type="hidden" name="id" value="<?php echo $row['id']?>">
                    <input type="submit" value="刪除" class="btn btn-danger" style="float:right">
                </form>
            </div>
        <?php } ?>
    </div>
</body>

</html>

<script>
    function myform() {
        var ans = confirm("確認要刪除此筆資料嗎?");

        if (ans == true) {
            return true;
        } else {
            return false;
        }
    }
</script>
