var input, yourname,text,edtname;
$(document).ready(function () {
    $("#tap").click(function () {
        input = $("#comment").val();
        yourname = $("#yourname").val();
        tap();
        $("#yourname").val("");
        $("#comment").val("");
    });
});

function tap() {
    var floor = $("<div class='container mt-3 mes'>");
    floor.attr("id", "message");
    floor.append(
        $("<p class=firstname >").html("姓名: "),
        $("<p class=conname id=conname>").html(yourname),
        $("<p class=text >").html("內容: "),
        $("<p class=context id=context>").html(input),
        $("<button class='btn btn-outline-danger delete'>").html("刪除").attr("id", "del"),
        $("<button class='btn btn-outline-success edt'>").html("編輯").attr("id", "edit")
    );
    $("#messages").append(floor);
    $("#messages").on("click", "#del", function () {
        $(this).parents("#message").remove();
    });
    $("#messages").on("click","#edit",function () {
        text=$(this).parents("#message").find("#context").text();
        edtname=$(this).parents("#message").find("#conname").text();
        $(this).parents("#message").find("#context").append("<textarea class=form-control rows=3 id=content name=text>"+text+"</textarea>");
        $(this).parents("#message").find("#conname").append("<input type=text class=form-control id=yourname1 value="+edtname+">");
        $(this).parents("#message").find("#del").replaceWith("<button class='btn btn-outline-primary' id=send>更改");
        $(this).parents("#message").find("#edit").replaceWith("<button class='btn btn-outline-danger' id=cancel>取消");
    });
    $("#messages").on("click","#send",function () {
        edtname = $(this).parents("#message").find("#yourname1").val();
        text = $(this).parents("#message").find("#content").val();
        $(this).parents("#message").find("#content").remove();
        $(this).parents("#message").find("#yourname1").remove();
        $(this).parents("#message").find("#conname").replaceWith("<p class=conname id=conname>"+ edtname);
        $(this).parents("#message").find("#context").replaceWith("<p class=context id=context>"+text);
        $(this).parents("#message").find("#cancel").replaceWith("<button class='btn btn-outline-success' id=edit>編輯");
        $(this).parents("#message").find("#send").replaceWith("<button class='btn btn-outline-danger' id=del>刪除");
        
    });
    $("#messages").on("click","#cancel",function () {
        
        $(this).parents("#message").find("#content").remove();
        $(this).parents("#message").find("#yourname1").remove();
        $(this).parents("#message").find("#send").replaceWith("<button class='btn btn-outline-danger' id=del>刪除");
        $(this).parents("#message").find("#cancel").replaceWith("<button class='btn btn-outline-success' id=edit>編輯");
        
    });


} 
