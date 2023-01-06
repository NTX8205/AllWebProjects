$(document).ready(function () {
    var floor = 0;
    $("#submit").click(function () { 
        getMessages();
        $.ajax({
            type: "get",
            url: "message.html",
            success: function (response) {
                alert(response);
            }
        });
    });

    function getMessages() {
        var title = $("#inputTitle").val();
        var content = $("#content").val();
        checkMessage(title, content);
        
    }

    function checkMessage(title, content) {
        if(title === "" && content === "") {
            alert("缺少標題和內容");
        } else if(title === "" || content === "") {
            alert("缺少標題或內容");
        } else {
            if(confirm("是否送出")) {
                addMessage();
                $("#inputTitle").val("");
                $("#content").val("");
                
            }
        }
    }

    function addMessage() {
        floor++;
        $.each($("form").serializeArray(), function (indexInArray, valueOfElement) { 
            $("#messages").append((indexInArray+1)+":"+valueOfElement.value+" ");
        });
    }
});