const xmlhttp = new XMLHttpRequest();
xmlhttp.open("GET", "./other/count_v1.txt", true);
xmlhttp.onload = function() {
  const myObj = JSON.parse(this.responseText);
  document.getElementById("count").innerHTML = myObj.count;
}

xmlhttp.send();