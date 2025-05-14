<% SendWebHeadStr();%>
<title><% multilang("249" "LANG_WLAN_STATUS"); %></title>
<script>
var wlanmode, wlanclientnum;
</script>
<style>
  table{
    margin-top: 20px;
  }
.vertical-table {
    width: 100%;
    border-collapse: collapse;
    table-layout: fixed;
}

.vertical-table th,
.vertical-table td {
    text-align: left;
    padding: 8px;
    border: 1px solid #dee2e6;
    width: calc(100% / 7); /* Assuming 7 columns */
    word-wrap: break-word;
}

.vertical-table th {
    background-color: #ebeced;
}
</style>
</head>
<body>
<div class="intro_main">
    <p class="intro_title"><% multilang("249" "LANG_WLAN_STATUS"); %></p>
    <p class="intro_content"><% multilang("250" "LANG_THIS_PAGE_SHOWS_THE_WLAN_CURRENT_STATUS"); %></p>
</div>
<script>
var wlan_num = 1;
var isNewMeshUI = 1;
var wlanMode = new Array();
var networkType = new Array();
var band = new Array();
var ssid_drv = new Array();
var channel_drv = new Array();
var wep = new Array();
var wdsEncrypt = new Array();
var meshEncrypt = new Array();
var bssid_drv = new Array();
var clientnum = new Array();
var state_drv = new Array();
var rp_enabled = new Array();
var rp_mode = new Array();
var rp_encrypt = new Array();
var rp_clientnum = new Array();
var rp_ssid = new Array();
var rp_bssid = new Array();
var rp_state = new Array();
var wlanDisabled = new Array();
var mssid_num;
var mssid_disable = new Array();
var mssid_bssid_drv = new Array();
var mssid_clientnum = new Array();
var mssid_band = new Array();
var mssid_ssid_drv = new Array();
var mssid_wep = new Array();
var Band2G5GSupport;
var is_wlan_qtn = <% checkWrite("is_wlan_qtn"); %>;
<% wlStatus_parm(); %>
if (ssid_drv[0] == "")
    mssid_num = 0;

for (i = 0; i < wlan_num; i++) {
    document.write('<div class="column">');
    document.write('<div class="column_title">');
    document.write('<div class="column_title_left"></div>');
    
    document.write('<div class="column_title_right"></div>');
    document.write('</div>');
    document.write('<div class="data_common">');
    document.write('<table class="vertical-table">');

    // Header Row
    document.write('<tr>');
    document.write('<th><% multilang("134", "LANG_MODE"); %></th>');
    document.write('<th><% multilang("133", "LANG_BAND"); %></th>');
    document.write('<th><% multilang("135", "LANG_SSID"); %></th>');
    document.write('<th><% multilang("145", "LANG_CHANNEL_NUMBER"); %></th>');
    document.write('<th><% multilang("201", "LANG_ENCRYPTION"); %></th>');
    document.write('<th><% multilang("1216", "LANG_BSSID"); %></th>');
    document.write('<th><% multilang("148", "LANG_ASSOCIATED_CLIENTS"); %></th>');
    document.write('</tr>');

    // Data Row
    document.write('<tr>');
    // Mode
    document.write('<td>');
    if (wlanMode[i] == 0) document.write("AP");
    else if (wlanMode[i] == 1) document.write(networkType[0] == 0 ? "Infrastructure Client" : "Ad-hoc Client");
    else if (wlanMode[i] == 2) document.write("WDS");
    else if (wlanMode[i] == 3) document.write("AP+WDS");
    else if (wlanMode[i] == 4) document.write("AP+MESH");
    else if (wlanMode[i] == 5) document.write("MESH");
    document.write('</td>');

    // Band
    document.write('<td>');
    if (band[i] == 1) document.write("2.4 GHz (B)");
    else if (band[i] == 2) document.write("2.4 GHz (G)");
    else if (band[i] == 3) document.write("2.4 GHz (B+G)");
    else if (band[i] == 4) document.write("5 GHz (A)");
    else if (band[i] == 8) document.write(Band2G5GSupport == 1 ? "2.4 GHz (N)" : "5 GHz (N)");
    else if (band[i] == 10) document.write("2.4 GHz (G+N)");
    else if (band[i] == 11) document.write("2.4 GHz (B+G+N)");
    else if (band[i] == 12) document.write("5 GHz (A+N)");
    else if (band[i] == 64) document.write("5 GHz (AC)");
    else if (band[i] == 72) document.write("5 GHz (N+AC)");
    else if (band[i] == 76) document.write("5 GHz (A+N+AC)");
    document.write('</td>');

    // SSID
    document.write('<td class="show_space">');
    if (wlanMode[i] != 2) document.write(ssid_drv[i]);
    document.write('</td>');

    // Channel
    document.write('<td>' + channel_drv[i] + '</td>');

    // Encryption
    document.write('<td>');
    if (wlanMode[i] == 0 || wlanMode[i] == 1) document.write(wep[i]);
    else if (wlanMode[i] == 2) document.write(wdsEncrypt[i]);
    else if (wlanMode[i] == 3) document.write(wep[i] + '(AP), ' + wdsEncrypt[i] + '(WDS)');
    else if (wlanMode[i] == 4 || wlanMode[i] == 6) document.write(wep[i] + '(AP), ' + meshEncrypt[i] + '(Mesh)');
    else if (wlanMode[i] == 5 || wlanMode[i] == 7) document.write(meshEncrypt[i] + '(Mesh)');
    document.write('</td>');

    // BSSID
    document.write('<td>' + bssid_drv[i] + '</td>');

    // Associated Clients
    document.write('<td>');
    if (wlanMode[i] == 0 || wlanMode[i] == 3 || wlanMode[i] == 4) {
        document.write(clientnum[i]);
    } else {
        document.write(state_drv[i]);
    }
    document.write('</td>');

    document.write('</tr>');

    document.write('</table></div></div>');
}
</script>
</body>
</html>