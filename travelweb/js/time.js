$(document).ready(function () {
    
    function show() {
        var date = new Date();
        var now = "";
        now = now + date.getHours() + "點";
        now = now + date.getMinutes() + "分";
        now = now + date.getSeconds() + "秒";
        document.getElementById("now").innerHTML = "現在時間 :" + now;
    }
    setInterval(() => {
        show();
    }, 1000);
});
