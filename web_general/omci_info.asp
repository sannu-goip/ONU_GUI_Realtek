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

  <SCRIPT language=javascript src="/Dashboard/JS/util.js"></SCRIPT>
  <script type="text/javascript" src="/JS/jquery.min.js"></script>
	<script type="text/javascript" src="/JS/bootstrap.min.js"></script>
    <script type="text/javascript"  src="/JS/popper.min.js"></script>
    <script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/scoop.min.js"></script>
    <script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/left_menu.js"></script>
<title><% multilang("51" "LANG_OMCI_INFO"); %></title>
<script>
var omci_vendor_id_value = "<% getInfo("omci_vendor_id"); %>";
var omci_sw_ver1_value = "<% getInfo("omci_sw_ver1"); %>";
var omci_sw_ver2_value = "<% getInfo("omci_sw_ver2"); %>";
var omci_tm_opt_value = <% getInfo("omci_tm_opt"); %>;
var omcc_ver_value = <% getInfo("omcc_ver"); %>;
var cwmp_productclass_value = "<% getInfo("cwmp_productclass"); %>";
var cwmp_hw_ver_value = "<% getInfo("cwmp_hw_ver"); %>";
var omci_olt_mode_value = <% fmOmciInfo_checkWrite("omci_olt_mode"); %>;
var isPRACTVersion = "<% checkWrite("isPRACTVersion"); %>"
function applyclick(obj)
{
 if (document.formOmciInfo.omci_sw_ver1.value=="") {
  alert('<% multilang("2557" "LANG_OMCI_SW_VER1_CANNOT_BE_EMPTY"); %>');
  document.formOmciInfo.omci_sw_ver1.focus();
  return false;
 }
 if (document.formOmciInfo.omci_sw_ver2.value=="") {
  alert('<% multilang("2558" "LANG_OMCI_SW_VER2_CANNOT_BE_EMPTY"); %>');
  document.formOmciInfo.omci_sw_ver2.focus();
  return false;
 }
 if (document.formOmciInfo.cwmp_productclass.value=="") {
  alert('<% multilang("2559" "LANG_OMCI_EQID_CANNOT_BE_EMPTY"); %>');
  document.formOmciInfo.cwmp_productclass.focus();
  return false;
 }
 if (document.formOmciInfo.cwmp_hw_ver.value=="") {
  alert('<% multilang("2560" "LANG_OMCI_ONT_VER_CANNOT_BE_EMPTY"); %>');
  document.formOmciInfo.cwmp_hw_ver.focus();
  return false;
 }
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
function on_change()
{
 with (document.forms[0])
 {
  if(omci_olt_mode_value == 0){
   omci_tm_opt.value = omci_tm_opt_value;
  }
 }
}
function on_init()
{
 with (document.forms[0])
 {
  omci_vendor_id.value = omci_vendor_id_value;
  omci_sw_ver1.value = omci_sw_ver1_value;
  omci_sw_ver2.value = omci_sw_ver2_value;
  omci_tm_opt.value = omci_tm_opt_value;
  omcc_ver.value = omcc_ver_value;
  cwmp_productclass.value = cwmp_productclass_value;
  cwmp_hw_ver.value = cwmp_hw_ver_value;
  if(omci_olt_mode_value == 0)
  {
   get_by_id("omci_sw_ver1_text").innerHTML = omci_sw_ver1_value;
   get_by_id("omci_sw_ver1_text").style.display = "";
   get_by_id("omci_sw_ver2_text").innerHTML = omci_sw_ver2_value;
   get_by_id("omci_sw_ver2_text").style.display = "";
   get_by_id("omci_tm_opt_text").innerHTML = omci_tm_opt_value;
   get_by_id("omci_tm_opt_text").style.display = "";
   get_by_id("cwmp_productclass_text").innerHTML = cwmp_productclass_value;
   get_by_id("cwmp_productclass_text").style.display = "";
   get_by_id("cwmp_hw_ver_text").innerHTML = cwmp_hw_ver_value;
   get_by_id("cwmp_hw_ver_text").style.display = "";
   disableTextField(document.forms[0].omci_sw_ver1);
   disableTextField(document.forms[0].omci_sw_ver2);
   disableTextField(document.forms[0].omci_tm_opt);
   disableTextField(document.forms[0].cwmp_productclass);
   disableTextField(document.forms[0].cwmp_hw_ver);
  }
  else
  {
   get_by_id("omci_sw_ver1_input").style.display = "";
   get_by_id("omci_sw_ver2_input").style.display = "";
   get_by_id("omcc_ver_selection").style.display = "";
   get_by_id("omci_tm_opt_selection").style.display = "";
   get_by_id("cwmp_productclass_input").style.display = "";
   get_by_id("cwmp_hw_ver_input").style.display = "";
  }
  if(isPRACTVersion == "1")
  {
   disableTextField(document.forms[0].omci_sw_ver1);
   disableTextField(document.forms[0].omci_sw_ver2);
   disableTextField(document.forms[0].omci_tm_opt);
   disableTextField(document.forms[0].omcc_ver);
   disableTextField(document.forms[0].cwmp_productclass);
   disableTextField(document.forms[0].cwmp_hw_ver);
   disableTextField(document.forms[0].omci_vendor_id);
   disableTextField(document.forms[0].apply);
  }
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
    .left-field-igmp{
        margin-left:-27px;
   width:668px;
   font-weight:300px;
    }
    
.left-field{
    margin-left:-27px;
   width:365px
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
#omci-olt select{
    margin-left:50px !important;
    padding:2px;
    width:160px;    
}
</style>
</head>
<body onLoad="on_init();">

                        <div class="">

                          <div class="scoop-inner-content">
									  	
							  						 
								
								<div class="white_box">
									<h1 class="heading_grey"><img src="/Dashboard/images/device.png" width="45" height="40" class="img_sub" alt=""/><% multilang("51" "LANG_OMCI_INFO"); %></h1>
									<div class="container-fluid">
									<hr class="margin_adjs" />	
								
										<div class="col-md-12 form-group">
											<div class="custom-control">

 <p class="left-field-para"> <% multilang("2932" "LANG_THIS_PAGE_IS_USED_TO_SHOW_OMCI_INFO"); %></p>
</div>
</div>

<form action=/boaform/admin/formOmciInfo method=POST name="formOmciInfo">
<div class="data_common data_common_notitle">
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("63", "LANG_OMCI_VENDOR_ID"); %>:</label>
            <input type="text" name="omci_vendor_id" size="14" maxlength="4" class="right-field">
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control" style="display:flex">
            <label class="left-field"><% multilang("57", "LANG_OMCI_SW_VER1"); %>:</label>
            <div id="omci_sw_ver1_text" style="display:none; margin-left:34px"></div>
            <div id="omci_sw_ver1_input" style="display:none">
                <input type="text" name="omci_sw_ver1" size="14" maxlength="14" class="right-field">
            </div>
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control" style="display:flex">
            <label class="left-field"><% multilang("58", "LANG_OMCI_SW_VER2"); %>:</label>
            <div id="omci_sw_ver2_text" style="display:none; margin-left:34px"></div>
            <div id="omci_sw_ver2_input" style="display:none">
                <input type="text" name="omci_sw_ver2" size="14" maxlength="14" class="right-field">
            </div>
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control" style="display:flex">
            <label class="left-field"><% multilang("59", "LANG_OMCC_VER"); %>:</label>
            <div id="omcc_ver_text" style="display:none; margin-left:34px"></div>
          
                <select id="omcc_ver_selection" name="omcc_ver" onChange="on_change()" class="right-field">
                    <option value="128">0x80</option>
                    <option value="129">0x81</option>
                    <option value="130">0x82</option>
                    <option value="131">0x83</option>
                    <option value="132">0x84</option>
                    <option value="133">0x85</option>
                    <option value="134">0x86</option>
                    <option value="150">0x96</option>
                    <option value="160">0xA0</option>
                    <option value="161">0xA1</option>
                    <option value="162">0xA2</option>
                    <option value="163">0xA3</option>
                    <!--
                    <option value="176">0xB0</option>
                    <option value="177">0xB1</option>
                    <option value="178">0xB2</option>
                    <option value="179">0xB3</option>
                    -->
                </select>
           
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control" style="display:flex">
            <label class="left-field"><% multilang("60", "LANG_OMCI_TM_OPT"); %>:</label>
            <div id="omci_tm_opt_text" style="display:none; margin-left:33px"></div>
            <div id="omci_tm_opt_selection" style="display:none">
                <select name="omci_tm_opt" onChange="on_change()" class="right-field">
                    <option value="0">0</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                </select>
            </div>
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control" style="display:flex">
            <label class="left-field"><% multilang("61", "LANG_OMCI_EQID"); %>:</label>
            <div id="cwmp_productclass_text" style="display:none; margin-left:34px"></div>
            <div id="cwmp_productclass_input" style="display:none">
                <input type="text" name="cwmp_productclass" size="20" maxlength="20" class="right-field">
            </div>
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control" style="display:flex">
            <label class="left-field"><% multilang("62", "LANG_OMCI_ONT_VER"); %>:</label>
            <div id="cwmp_hw_ver_text" style="display:none; margin-left:34px"></div>
            <div id="cwmp_hw_ver_input" style="display:none">
                <input type="text" name="cwmp_hw_ver" size="14" maxlength="14" class="right-field">
            </div>
        </div>
    </div>
</div>
<hr class="margin_adjs">
<div class="form-footer text-right">
      <input class="btn orange_btn" type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="apply" onClick="return applyclick(this)">&nbsp;&nbsp;
      <input type="hidden" value="/omci_info.asp" name="submit-url">
      <input type="hidden" name="postSecurityFlag" value="">
</div>
</form>
</div>
</div>
</div>

<div class="text-center p-3" style="background-color: rgb(235 234 234 / 20%);">
  &copy 2022-2026 Copyright :
<a class="text-white" style="color:#fd7e14 !important;" href="#">Syrotech Networks Pvt. Ltd.</a>
</div>
</body>
</html>
