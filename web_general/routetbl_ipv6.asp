
<!DOCTYPE html>
<! Copyright (c) Realtek Semiconductor Corp., 2003. All Rights Reserved. ->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="utf-8">
<meta HTTP-EQUIV="Pragma" CONTENT="no-cache">
<meta HTTP-equiv="Cache-Control" content="no-cache">
<link rel="stylesheet" href="/admin/reset.css">
<link rel="stylesheet" href="/admin/base.css">
<link rel="stylesheet" href="/admin/style.css">
<script language="javascript" src="common.js"></script>
<script type="text/javascript" src="share.js"></script>

<title>IP Route Table</title>
<SCRIPT>
function on_submit()
{
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
</SCRIPT>
</head>
<body>
<div class="col-md-12 form-group">
        <div class="custom-control">
<h2 class="sub_heading " style="color:#fd7e14; width:250px">IP Route Table</h2>
<p>This table shows a list of destination routes commonly accessed by your network.</p>
</div>
</div>
<form action=/boaform/formIPv6RefleshRouteTbl method=POST name="formIPv6RouteTbl">
<div class="col-md-12 form-group">
        <div class="custom-control">
 <table class="table tab15-bordered table-striped" style="background-color: #f8f9fa; margin-left:-14px; width:98%">
  <tr>
<th align=center width="15%">Destination</th>
<th align=center width="15%">Next Hop</th>
<th align=center width="15%">Flags</th>
<th align=center width="15%">Metric</th>
<th align=center width="15%">Ref</th>
<th align=center width="15%">Use</th>
<th align=center width="15%">Interface</th></tr>
<tr><td align=center width="8%">fe80::/64</td>
<td align=center width="8%">::</td>
<td align=center width="8%">U</td>
<td align=center width="8%">256</td>
<td align=center width="8%">0</td>
<td align=center width="8%">0</td>
<td align=center width="8%">br0</td></tr>
<tr><td align=center width="8%">fe80::/64</td>
<td align=center width="8%">::</td>
<td align=center width="8%">U</td>
<td align=center width="8%">256</td>
<td align=center width="8%">0</td>
<td align=center width="8%">0</td>
<td align=center width="8%">eth0</td></tr>
<tr><td align=center width="8%">fe80::/64</td>
<td align=center width="8%">::</td>
<td align=center width="8%">U</td>
<td align=center width="8%">256</td>
<td align=center width="8%">0</td>
<td align=center width="8%">0</td>
<td align=center width="8%">nas0</td></tr>
<tr><td align=center width="8%">fe80::/64</td>
<td align=center width="8%">::</td>
<td align=center width="8%">U</td>
<td align=center width="8%">256</td>
<td align=center width="8%">0</td>
<td align=center width="8%">0</td>
<td align=center width="8%">wlan0</td></tr>
<tr><td align=center width="8%">fe80::/64</td>
<td align=center width="8%">::</td>
<td align=center width="8%">U</td>
<td align=center width="8%">256</td>
<td align=center width="8%">0</td>
<td align=center width="8%">0</td>
<td align=center width="8%">wlan0-vap0</td></tr>
<tr><td align=center width="8%">fe80::/64</td>
<td align=center width="8%">::</td>
<td align=center width="8%">U</td>
<td align=center width="8%">256</td>
<td align=center width="8%">0</td>
<td align=center width="8%">0</td>
<td align=center width="8%">wlan1</td></tr>
<tr><td align=center width="8%">fe80::/64</td>
<td align=center width="8%">::</td>
<td align=center width="8%">U</td>
<td align=center width="8%">256</td>
<td align=center width="8%">0</td>
<td align=center width="8%">0</td>
<td align=center width="8%">wlan1-vap0</td></tr>
<tr><td align=center width="8%">fe80::/64</td>
<td align=center width="8%">::</td>
<td align=center width="8%">U</td>
<td align=center width="8%">256</td>
<td align=center width="8%">0</td>
<td align=center width="8%">0</td>
<td align=center width="8%">nas0_0</td></tr>
<tr><td align=center width="8%">::1/128</td>
<td align=center width="8%">::</td>
<td align=center width="8%">U</td>
<td align=center width="8%">0</td>
<td align=center width="8%">1</td>
<td align=center width="8%">0</td>
<td align=center width="8%">lo</td></tr>
<tr><td align=center width="8%">fe80::/128</td>
<td align=center width="8%">::</td>
<td align=center width="8%">U</td>
<td align=center width="8%">0</td>
<td align=center width="8%">1</td>
<td align=center width="8%">0</td>
<td align=center width="8%">lo</td></tr>
<tr><td align=center width="8%">fe80::/128</td>
<td align=center width="8%">::</td>
<td align=center width="8%">U</td>
<td align=center width="8%">0</td>
<td align=center width="8%">1</td>
<td align=center width="8%">0</td>
<td align=center width="8%">lo</td></tr>
<tr><td align=center width="8%">fe80::/128</td>
<td align=center width="8%">::</td>
<td align=center width="8%">U</td>
<td align=center width="8%">0</td>
<td align=center width="8%">1</td>
<td align=center width="8%">0</td>
<td align=center width="8%">lo</td></tr>
<tr><td align=center width="8%">fe80::/128</td>
<td align=center width="8%">::</td>
<td align=center width="8%">U</td>
<td align=center width="8%">0</td>
<td align=center width="8%">1</td>
<td align=center width="8%">0</td>
<td align=center width="8%">lo</td></tr>
<tr><td align=center width="8%">fe80::/128</td>
<td align=center width="8%">::</td>
<td align=center width="8%">U</td>
<td align=center width="8%">0</td>
<td align=center width="8%">1</td>
<td align=center width="8%">0</td>
<td align=center width="8%">lo</td></tr>
<tr><td align=center width="8%">fe80::/128</td>
<td align=center width="8%">::</td>
<td align=center width="8%">U</td>
<td align=center width="8%">0</td>
<td align=center width="8%">1</td>
<td align=center width="8%">0</td>
<td align=center width="8%">lo</td></tr>
<tr><td align=center width="8%">fe80::/128</td>
<td align=center width="8%">::</td>
<td align=center width="8%">U</td>
<td align=center width="8%">0</td>
<td align=center width="8%">1</td>
<td align=center width="8%">0</td>
<td align=center width="8%">lo</td></tr>
<tr><td align=center width="8%">fe80::1/128</td>
<td align=center width="8%">::</td>
<td align=center width="8%">U</td>
<td align=center width="8%">0</td>
<td align=center width="8%">1</td>
<td align=center width="8%">0</td>
<td align=center width="8%">lo</td></tr>
<tr><td align=center width="8%">fe80::611:19ff:fe5d:84e8/128</td>
<td align=center width="8%">::</td>
<td align=center width="8%">U</td>
<td align=center width="8%">0</td>
<td align=center width="8%">1</td>
<td align=center width="8%">0</td>
<td align=center width="8%">lo</td></tr>
<tr><td align=center width="8%">fe80::611:19ff:fe5d:84e8/128</td>
<td align=center width="8%">::</td>
<td align=center width="8%">U</td>
<td align=center width="8%">0</td>
<td align=center width="8%">1</td>
<td align=center width="8%">0</td>
<td align=center width="8%">lo</td></tr>
<tr><td align=center width="8%">fe80::611:19ff:fe5d:84e8/128</td>
<td align=center width="8%">::</td>
<td align=center width="8%">U</td>
<td align=center width="8%">0</td>
<td align=center width="8%">1</td>
<td align=center width="8%">0</td>
<td align=center width="8%">lo</td></tr>
<tr><td align=center width="8%">fe80::611:19ff:fe5d:84e8/128</td>
<td align=center width="8%">::</td>
<td align=center width="8%">U</td>
<td align=center width="8%">0</td>
<td align=center width="8%">1</td>
<td align=center width="8%">0</td>
<td align=center width="8%">lo</td></tr>
<tr><td align=center width="8%">fe80::611:19ff:fe5d:84e9/128</td>
<td align=center width="8%">::</td>
<td align=center width="8%">U</td>
<td align=center width="8%">0</td>
<td align=center width="8%">1</td>
<td align=center width="8%">0</td>
<td align=center width="8%">lo</td></tr>
<tr><td align=center width="8%">fe80::611:19ff:fe5d:84e9/128</td>
<td align=center width="8%">::</td>
<td align=center width="8%">U</td>
<td align=center width="8%">0</td>
<td align=center width="8%">1</td>
<td align=center width="8%">0</td>
<td align=center width="8%">lo</td></tr>
<tr><td align=center width="8%">fe80::611:19ff:fe5d:84ec/128</td>
<td align=center width="8%">::</td>
<td align=center width="8%">U</td>
<td align=center width="8%">0</td>
<td align=center width="8%">1</td>
<td align=center width="8%">0</td>
<td align=center width="8%">lo</td></tr>
<tr><td align=center width="8%">fe80::611:19ff:fe5d:84ed/128</td>
<td align=center width="8%">::</td>
<td align=center width="8%">U</td>
<td align=center width="8%">0</td>
<td align=center width="8%">1</td>
<td align=center width="8%">0</td>
<td align=center width="8%">lo</td></tr>
<tr><td align=center width="8%">ff00::/8</td>
<td align=center width="8%">::</td>
<td align=center width="8%">U</td>
<td align=center width="8%">256</td>
<td align=center width="8%">0</td>
<td align=center width="8%">0</td>
<td align=center width="8%">br0</td></tr>
<tr><td align=center width="8%">ff00::/8</td>
<td align=center width="8%">::</td>
<td align=center width="8%">U</td>
<td align=center width="8%">256</td>
<td align=center width="8%">0</td>
<td align=center width="8%">0</td>
<td align=center width="8%">eth0</td></tr>
<tr><td align=center width="8%">ff00::/8</td>
<td align=center width="8%">::</td>
<td align=center width="8%">U</td>
<td align=center width="8%">256</td>
<td align=center width="8%">0</td>
<td align=center width="8%">0</td>
<td align=center width="8%">nas0</td></tr>
<tr><td align=center width="8%">ff00::/8</td>
<td align=center width="8%">::</td>
<td align=center width="8%">U</td>
<td align=center width="8%">256</td>
<td align=center width="8%">0</td>
<td align=center width="8%">0</td>
<td align=center width="8%">wlan0</td></tr>
<tr><td align=center width="8%">ff00::/8</td>
<td align=center width="8%">::</td>
<td align=center width="8%">U</td>
<td align=center width="8%">256</td>
<td align=center width="8%">0</td>
<td align=center width="8%">0</td>
<td align=center width="8%">wlan0-vap0</td></tr>
<tr><td align=center width="8%">ff00::/8</td>
<td align=center width="8%">::</td>
<td align=center width="8%">U</td>
<td align=center width="8%">256</td>
<td align=center width="8%">0</td>
<td align=center width="8%">0</td>
<td align=center width="8%">wlan1</td></tr>
<tr><td align=center width="8%">ff00::/8</td>
<td align=center width="8%">::</td>
<td align=center width="8%">U</td>
<td align=center width="8%">256</td>
<td align=center width="8%">0</td>
<td align=center width="8%">0</td>
<td align=center width="8%">wlan1-vap0</td></tr>
<tr><td align=center width="8%">ff00::/8</td>
<td align=center width="8%">::</td>
<td align=center width="8%">U</td>
<td align=center width="8%">256</td>
<td align=center width="8%">0</td>
<td align=center width="8%">0</td>
<td align=center width="8%">nas0_0</td></tr>

 </table>
</div>
</div>
<br>
<div class="col-md-12 form-group">
        <div class="custom-control">
 <input type="hidden" value="/routetbl_ipv6.asp" name="submit-url">
 <input type="submit" value="Refresh" onClick="return on_submit()" class="link_bg">&nbsp;&nbsp;
 <input type="button" value="Close" name="close" onClick="javascript: window.close();" class="link_bg">
 <input type="hidden" name="postSecurityFlag" value="">
</div>
</div>

</form>
<br><br>
</body>
</html>
