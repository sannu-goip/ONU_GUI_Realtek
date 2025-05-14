<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html">
<meta HTTP-EQUIV="Pragma" CONTENT="no-cache">
<meta HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<title>VoIP Register Status</title>
<link rel="stylesheet" href="/admin/style.css">
<link rel="stylesheet" href="/admin/reset.css" />
<link rel="stylesheet" href="/admin/base.css" />
<script language="javascript" src="voip_script.js"></script>
<script language="javascript" src="common.js"></script>
<script language="javascript"></script>

<script>
function on_submit(obj) {
  obj.isclick = 1;
  postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
  return true;
}
</script>

<style>
/* Transpose table layout */
.data_common table {
  display: flex;
  flex-direction: row;
}

.data_common table tbody,
.data_common table tr {
  display: flex;
  flex-direction: column;
}
</style>
</head>
<body>
<form action="voip_sip_status_new_web.asp" method=get>
  <div class="intro_main">
    <p class="intro_title"><% multilang("2935" "LANG_VOIP_REG_STATUS"); %></p>
    <p class="intro_content"><% multilang("2936" "LANG_VOIP_REG_STATUS_EXPLAIN"); %></p>
  </div>
  <br>
  <div class="column_title">
    <div class="column_title_left"></div>
    <p><% multilang("937" "LANG_REGISTER_STATUS"); %></p>
    <div class="column_title_right"></div>
  </div>
  <div class="data_common">
    <table>
      <tr>
        <td width="30%"><b><% multilang("213" "LANG_PORT"); %></b></td>
        <td width="40%"><b><% multilang("926" "LANG_NUMBER"); %></b></td>
        <td width="30%"><b><% multilang("3" "LANG_STATUS"); %></b></td>
      </tr>
      <% voip_general_get("registerStatus"); %>
    </table>
  </div>
  <input type="hidden" value="/voip_sip_status_new_web.asp" name="voip_status_refesh">
  <div style="padding:10px 0;">
    <input class="link_bg" type="submit" value="<% multilang("443" "LANG_REFRESH"); %>" name="refresh" onClick="return on_submit(this)">
  </div>
  <script>
    document.addEventListener("DOMContentLoaded", function () {
    // Select the table
    const table = document.querySelector(".data_common table");

    // Check if the table exists
    if (!table) return;

    // Get all rows in the table
    const rows = table.querySelectorAll("tr");

    // Loop through rows starting from the second row (to skip the header)
    rows.forEach((row, index) => {
        if (index > 0) { // Skip the header row
            const firstTd = row.querySelector("td"); // Get the first <td> in the row
            if (firstTd) {
                console.log("First TD Content:", firstTd.textContent.trim());
            }
        }
    });
});
    </script>
    
</form>

</body>
</html>
