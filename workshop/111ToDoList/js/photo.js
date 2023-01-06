window.onload = function () {
  // 宣告、尋找想要的 ID名稱
  var allMyList = document.getElementById("todoList");
  var allTimes = document.getElementById("time");
  var allName = document.getElementById("name");
  var todoCheck = document.getElementById("todoInput");
  var allPostBtn = document.getElementById("addBtn");

  allPostBtn.onclick = function () {
    if (allTimes.value == "") {
      alert("時間未填寫");
      return false;
    } else if (allName.value == "") {
      alert("標題未填寫");
      return false;
    } else if (todoCheck.value == "") {
      alert("內容未填寫");
      return false;
    } else {
      var allList = document.createElement("tr");

      allList.innerHTML =
        "<tr><td>" +
        allTimes.value +
        "</td><td>" +
        allName.value +
        "</td><td>" +
        todoCheck.value +
        "</td><td>" +
        '<button onClick="deleteRemark(this);" class="btn btn-danger my-2">完成</button></td></tr>';

      allMyList.appendChild(allList);

      deleteRemark = function (obj) {
        alert(obj);
        var row = obj.parentNode.parentNode; //獲取當前行
        var tb = row.parentNode; //獲得當前表格
        var rowIndex = row.rowIndex; //獲取當前行的索引

        tb.deleteRow(rowIndex - 1); //通過行索引刪除行
      };
    }
    //清除 input 值
    document.getElementById("name").value = "";
    document.getElementById("time").value = "";
    document.getElementById("todoInput").value = "";
  };
};

