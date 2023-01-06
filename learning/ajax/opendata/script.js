var url1 =
  "https://opendata.cwb.gov.tw/api/v1/rest/datastore/F-C0032-001?Authorization=rdec-key-123-45678-011121314";
var url2 = "https://od.moi.gov.tw/api/v1/rest/datastore/301210000T-002000-001";

$(document).ready(function () {
  $.ajax({
    type: "GET",
    url: url2,
    dataType: "json",
    async: true,
    success: function (response) {
      console.log(response);
    },
    error: function (error) {
      alert("request error");
    },
  });
});
