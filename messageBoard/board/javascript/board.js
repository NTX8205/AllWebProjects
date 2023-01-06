$(document).ready(function () {
    $("#preview").click(function () {
        input = $("#borad").val();
        title = $("#main").val();
        $("#previewTitle").html(title),
        $("#previewContent").html(input)
    });
});