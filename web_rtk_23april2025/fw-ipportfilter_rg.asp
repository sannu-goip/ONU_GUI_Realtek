<%SendWebHeadStr(); %>
<!DOCTYPE html>
<! Copyright (c) Realtek Semiconductor Corp., 2003. All Rights Reserved. ->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="utf-8">
<meta HTTP-EQUIV="Pragma" CONTENT="no-cache">
<meta HTTP-equiv="Cache-Control" content="no-cache">

<link rel="stylesheet" href="/Dashboard/Modules/fontawesome/css/font-awesome.min.css"> 
    <link href="/Dashboard/Modules/leftmenu/css/scoop-vertical.css" rel="stylesheet">
    <link rel="stylesheet" href="/Dashboard/css/bootstrap.min.css">
    <link href="/Dashboard/Modules/leftmenu/css/simple-line-icons.css" rel="stylesheet">
    <link href="/Dashboard/Modules/leftmenu/css/jquery.mCustomScrollbar.css" rel="stylesheet">
    <link href="/Dashboard/css/custom.css" type="text/css" rel="stylesheet">
      <link href="/css/custom-nav.css" type="text/css" rel="stylesheet">
<script language="javascript" src="common.js"></script>
<script type="text/javascript" src="share.js"></script>
<script language="javascript" src="voip_script.js"></script>
<script type="text/javascript" src="base64_code.js"></script>
 <script language="javascript" src="/Dashboard/JS/menu.js"></script>
  <SCRIPT language=javascript src="/Dashboard/JS/util.js"></SCRIPT>
  <script type="text/javascript" src="/JS/jquery.min.js"></script>
	<script type="text/javascript" src="/JS/bootstrap.min.js"></script>
    <script type="text/javascript"  src="/JS/popper.min.js"></script>
    <script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/scoop.min.js"></script>
    <script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/left_menu.js"></script>


<title>IP/Port <% multilang("379" "LANG_FILTERING"); %></title>
<script>
function skip () { this.blur(); }
function protocolSelection()
{
 if ( document.formFilterAdd.protocol.selectedIndex == 2 )
 {
  document.formFilterAdd.sfromPort.disabled = true;
  document.formFilterAdd.stoPort.disabled = true;
  document.formFilterAdd.dfromPort.disabled = true;
  document.formFilterAdd.dtoPort.disabled = true;
 }
 else
 {
  document.formFilterAdd.sfromPort.disabled = false;
  document.formFilterAdd.stoPort.disabled = false;
  document.formFilterAdd.dfromPort.disabled = false;
  document.formFilterAdd.dtoPort.disabled = false;
 }
}
function addClick(obj)
{
 if (document.formFilterAdd.sip.value == "" && document.formFilterAdd.smask.value == ""
  && document.formFilterAdd.dip.value == "" && document.formFilterAdd.dmask.value == ""
  && document.formFilterAdd.sfromPort.value == "" && document.formFilterAdd.dfromPort.value == "") {
  alert('<% multilang("2225" "LANG_FILTER_RULES_CAN_NOT_BE_EMPTY"); %>');
  document.formFilterAdd.sip.focus();
  return false;
 }
 if (document.formFilterAdd.sip.value!="") {
  if (!checkHostIP(document.formFilterAdd.sip, 0))
   return false;
  if ( document.formFilterAdd.smask.value != "" ) {
   if (!checkNetmask(document.formFilterAdd.smask, 0))
    return false;
  }
 }
 if (document.formFilterAdd.dip.value!="") {
  if (!checkHostIP(document.formFilterAdd.dip, 0))
   return false;
  if ( document.formFilterAdd.dmask.value != "" ) {
   if (!checkNetmask(document.formFilterAdd.dmask, 0))
    return false;
  }
 }
 if ( document.formFilterAdd.sfromPort.value!="" ) {
  if ( validateKey( document.formFilterAdd.sfromPort.value ) == 0 ) {
   alert('<% multilang("2175" "LANG_INVALID_SOURCE_PORT"); %>');
   document.formFilterAdd.sfromPort.focus();
   return false;
  }
  d1 = getDigit(document.formFilterAdd.sfromPort.value, 1);
  if (d1 > 65535 || d1 < 1) {
   alert('<% multilang("2176" "LANG_INVALID_SOURCE_PORT_NUMBER"); %>');
   document.formFilterAdd.sfromPort.focus();
   return false;
  }
  if ( document.formFilterAdd.stoPort.value!="" ) {
   if ( validateKey( document.formFilterAdd.stoPort.value ) == 0 ) {
    alert('<% multilang("2175" "LANG_INVALID_SOURCE_PORT"); %>');
    document.formFilterAdd.stoPort.focus();
    return false;
   }
   d1 = getDigit(document.formFilterAdd.stoPort.value, 1);
   if (d1 > 65535 || d1 < 1) {
    alert('<% multilang("2176" "LANG_INVALID_SOURCE_PORT_NUMBER"); %>');
    document.formFilterAdd.stoPort.focus();
    return false;
   }
  }
 }
 if ( document.formFilterAdd.dfromPort.value!="" ) {
  if ( validateKey( document.formFilterAdd.dfromPort.value ) == 0 ) {
   alert('<% multilang("2177" "LANG_INVALID_DESTINATION_PORT"); %>');
   document.formFilterAdd.dfromPort.focus();
   return false;
  }
  d1 = getDigit(document.formFilterAdd.dfromPort.value, 1);
  if (d1 > 65535 || d1 < 1) {
   alert('<% multilang("2178" "LANG_INVALID_DESTINATION_PORT_NUMBER"); %>');
   document.formFilterAdd.dfromPort.focus();
   return false;
  }
  if ( document.formFilterAdd.dtoPort.value!="" ) {
   if ( validateKey( document.formFilterAdd.dtoPort.value ) == 0 ) {
    alert('<% multilang("2177" "LANG_INVALID_DESTINATION_PORT"); %>');
    document.formFilterAdd.dtoPort.focus();
    return false;
   }
   d1 = getDigit(document.formFilterAdd.dtoPort.value, 1);
   if (d1 > 65535 || d1 < 1) {
    alert('<% multilang("2178" "LANG_INVALID_DESTINATION_PORT_NUMBER"); %>');
    document.formFilterAdd.dtoPort.focus();
    return false;
   }
  }
 }
 obj.isclick = 1;
 postTableEncrypt(document.formFilterAdd.postSecurityFlag, document.formFilterAdd);
 return true;
}
function disableDelButton()
{
  if (verifyBrowser() != "ns") {
 disableButton(document.formFilterDel.deleteSelFilterIpPort);
 disableButton(document.formFilterDel.deleteAllFilterIpPort);
  }
}
function on_submit(obj)
{
 obj.isclick = 1;
 postTableEncrypt(document.formFilterDefault.postSecurityFlag, document.formFilterDefault);
 return true;
}
function deleteClick(obj)
{
 if ( !confirm('<% multilang("1747" "LANG_CONFIRM_DELETE_ONE_ENTRY"); %>') ) {
  return false;
 }
 else{
  obj.isclick = 1;
  postTableEncrypt(document.formFilterDel.postSecurityFlag, document.formFilterDel);
  return true;
 }
}
function deleteAllClick(obj)
{
 if ( !confirm('Do you really want to delete the all entries?') ) {
  return false;
 }
 else{
  obj.isclick = 1;
  postTableEncrypt(document.formFilterDel.postSecurityFlag, document.formFilterDel);
  return true;
 }
}
</script>
<style>
.btn-group-lg>.btn, .btn-lg {
    padding: .5rem 1rem;
    font-size: 1.25rem;
    line-height: 1.5;
    border-radius: .3rem;
}
 .table-bordered {
        border: 1px solid #dee2e6;
    }
    .table-striped tbody tr:nth-of-type(odd) {
        background-color: rgba(0, 0, 0, 0.05);
    }
    .table th,
    .table td {
        border: 1px solid #dee2e6;
    }
    .table thead th {
        background-color: #e9ecef;
    }
.left-field{
    margin-left:-27px;
    width:365px;
}
.left-field-para{
    margin-left:-27px;
    width:1079px;
}
.right-field-radio{
    margin-left:17px;
    width:33px; 
    padding:2px;
    accent-color: #fd5814;
}
.right-field{
    margin-left:29px;
    padding:2px;
    width:160px; 
}
.right-field-checkbox{
    margin-left:178px;
    padding:3px;
      accent-color: #fd5814;
}
.margin_adjs{
    margin-left:-15px;
    width:102.5%
}
</style>
</head>
<body>

                        <div class="">
                        
                                                        
                          <div class="scoop-inner-content">
                          <div class="white_box">
									<h1 class="heading_grey"><img src="/Dashboard/images/mac.png" width="45" height="40" class="img_sub" alt=""/>IP/Port <% multilang("379" "LANG_FILTERING"); %></h1>
									<div class="container-fluid">
									<hr class="margin_adjs" />	
								
										<div class="col-md-12 form-group">
											<div class="custom-control">

 <p class="left-field-para"> <% multilang("380" "LANG_PAGE_DESC_DATA_PACKET_FILTER_TABLE"); %></p>
</div>
</div>
<form action=/boaform/formFilter method=POST name="formFilterDefault">

 <div class="data_common data_common_notitle">
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("395", "LANG_DEFAULT_ACTION"); %>:</label>
            <input type="radio" name="outAct" value="0" class="right-field-radio" <% checkWrite("ipf_out_act0"); %>> <% multilang("382", "LANG_DENY"); %> 
            <input type="radio" name="outAct" value="1" class="right-field-radio" <% checkWrite("ipf_out_act1"); %>> <% multilang("383", "LANG_ALLOW"); %> 

            <input class="btn orange_btn right-field" type="submit" value="<% multilang("150", "LANG_APPLY_CHANGES"); %>" name="setDefaultAction" onClick="return on_submit(this)">
            <input type="hidden" value="/fw-ipportfilter_rg.asp" name="submit-url">
            <input type="hidden" name="postSecurityFlag" value="">
        </div>
         </div>
    </div>
  

</form>

<form action=/boaform/formFilter method=POST name="formFilterAdd">
<div class="data_common data_common_notitle">
 <table class="table table-bordered table-striped" style="background-color: #f8f9fa; width:100%">
  <tr>
   <th width="40%">
    <% multilang("95" "LANG_PROTOCOL"); %>:
    <select name="protocol" onChange="protocolSelection()">
    <option select value=1>TCP</option>
    <option value=2>UDP</option>
    <option value=3>ICMP</option>
    </select>
   </th>
   <th colspan=2><% multilang("388" "LANG_RULE_ACTION"); %>:&nbsp;&nbsp;
    <input type="radio" name="filterMode" value="Deny" checked><% multilang("382" "LANG_DENY"); %>&nbsp;&nbsp;
    <input type="radio" name="filterMode" value="Allow"><% multilang("383" "LANG_ALLOW"); %>
   </th>
  </tr>
  <tr>
   <th width="40%">
    <% multilang("389" "LANG_SOURCE"); %> <% multilang("89" "LANG_IP_ADDRESS"); %>: <input type="text" name="sip" size="10" maxlength="15"></th>
   <th width="30%"><% multilang("90" "LANG_SUBNET_MASK"); %>: <input type="text" name="smask" size="10" maxlength="15"></th>
   <th width="30%"><% multilang("213" "LANG_PORT"); %>:
    <input type="text" name="sfromPort" size="4" maxlength="5">-
    <input type="text" name="stoPort" size="4" maxlength="5">
   </th>
  </tr>
  <tr>
   <th width="40%"><% multilang("390" "LANG_DESTINATION"); %> <% multilang("89" "LANG_IP_ADDRESS"); %>: <input type="text" name="dip" size="10" maxlength="15"></th>
   <th width="30%"><% multilang("90" "LANG_SUBNET_MASK"); %>: <input type="text" name="dmask" size="10" maxlength="15">&nbsp;&nbsp;</th>
   <th width="30%"><% multilang("213" "LANG_PORT"); %>:
    <input type="text" name="dfromPort" size="4" maxlength="5">-
    <input type="text" name="dtoPort" size="4" maxlength="5">&nbsp;&nbsp;
   </th>
  </tr>
 </table>
</div>
<div class="btn_ctl">
 <input class="btn orange_btn" type="submit" value="<% multilang("221" "LANG_ADD"); %>" name="addFilterIpPort" onClick="return addClick(this)">
 <input type="hidden" value="/fw-ipportfilter_rg.asp" name="submit-url">
 <input type="hidden" name="postSecurityFlag" value="">
</div>
</form>
<br>
<form action=/boaform/formFilter method=POST name="formFilterDel">
  <div class="col-md-12 form-group">
        <div class="custom-control">
    <h2 class="sub_heading " style="color:#fd7e14; width:302%; margin-left:-28px"><% multilang("391" "LANG_CURRENT_FILTER_TABLE"); %></h2>
  </div>
 </div>
 <div class="data_common data_vertical">
  <table class="table table-bordered table-striped" style="background-color: #f8f9fa; width:100%">
   <% ipPortFilterList(); %>
  </table>
 </div>
</div>
<hr class="margin_adjs">
<div class="btn_ctl form-footer text-right">
 <input class="btn orange_btn" type="submit" value="<% multilang("224" "LANG_DELETE_SELECTED"); %>" name="deleteSelFilterIpPort" onClick="return deleteClick(this)">&nbsp;&nbsp;
 <input class="btn grey_btn" type="submit" value="<% multilang("225" "LANG_DELETE_ALL"); %>" name="deleteAllFilterIpPort" onClick="return deleteAllClick(this)">&nbsp;&nbsp;&nbsp;
 <input type="hidden" value="/fw-ipportfilter_rg.asp" name="submit-url">
 <input type="hidden" name="postSecurityFlag" value="">
</div>
<hr class="margin_adjs">

 <script>
  <% checkWrite("ipFilterNum"); %>
 </script>
</form>
</div>
</div>
</div>


</body>
</html>
