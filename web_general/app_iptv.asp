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
    <script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/left_menu.js"></script><title>Mcast-VLAN <% multilang("2748" "LANG_MCAST_VLAN"); %></title>
<script>
var links = new Array();
<% listWanName(); %>
var index =-1;
function getmsg(id)
{
 var str=new Array();
 str[1]=new Array(102, '<% multilang("2750" "LANG_INPUT_INTEGER"); %>');
 return getMsgFormArray(str,arguments)
}
function getMsgFormArray(str,arg){
 var errid=0;
 var min =0;
 var max=0;
 var param=-1;
 var msg="";
 var num=arg.length;
 if(num==1){
  errid=arg[0];
 }else if(num==3){
  errid=arg[0];
  min =arg[1];
  max=arg[2];
 }else if(num==2){
  errid=arg[0];
  param=arg[1];
 }else return null;
 for(var i=0;i<str.length;i++){
  if(typeof(str[i])=="undefined"){
   alert("strings initialized fail, please check source code£¡i = "+i);
   return null;
  }if(errid==str[i][0]){
   if(min ==max&&min ==0){
    if(param==-1){
     msg=str[i][1];
    }else {
     msg=str[i][1]+param+str[i+1][1];
    }
   }else
    msg=str[i][1]+min +"~"+max+str[i+1][1];
   return msg;
  }
 }
 return null;
}
function getObj(id)
{
 return(document.getElementById(id));
}
function setValue(id,value)
{
 document.getElementById(id).value=value;
}
function getValue(id)
{
 return(document.getElementById(id).value);
}
function getImage(src,strmethod,id)
{
 return ("<image id=\""+id+"\" onclick=\""+ strmethod +"\" src=\"Dashboard/images/edit.gif\">");
}
function on_init()
{
 if(lstrc.rows){while(lstrc.rows.length > 1) lstrc.deleteRow(1);}
 for(var i = 0; i < links.length; i++)
 {
  var row = lstrc.insertRow(i + 1);
  row.nowrap = true;
  row.vAlign = "top";
  row.align = "center";
  var cell = row.insertCell(0);
  cell.innerHTML = links[i].servName;
  cell = row.insertCell(1);
  if(links[i].vlanId == 0)
   cell.innerHTML = "";
  else
   cell.innerHTML = links[i].vlanId;
  cell = row.insertCell(2);
  cell.innerHTML = getImage("image/edit.gif","Modify("+i+")","Btn_Modify"+i);
 }
}
function jslSetValue(src,dst)
{
 var ss=document.getElementById(dst).value;
 document.getElementById(src).value=ss;
}
function setValue(id,value)
{
 document.getElementById(id).value=value;
}
function jslDisable(id)
{
 var i;
 var num=jslDisable.arguments.length;
 if(num==0)
  return;
 for(i=0;i<num;i++){
  document.getElementById(arguments[i]).disabled=true;
 }
}
function jslEnable(id)
{
 var i=0;
 var num=jslEnable.arguments.length;
 if(num==0)
  return;
 for(i=0;i<num;i++)
  document.getElementById(arguments[i]).disabled=false;
}
function Modify(i)
{
 getObj("modify").style.display="";
 document.getElementById("back").style.display="";
 jslEnable("Frm_mcast_vlan");
 ModifyGetValue(i);
 setValue("if_index", i);
 setValue("WanName", links[i].servName);
 index=i;
}
function back2add()
{
 jslDisable("modify","back");
 for(var i=0;i<links.length;i++){
  jslDisable("Btn_Modify"+i);
 }
 setValue("if_index", -1);
 setValue("mVlan",-1);
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 getObj("mcast_vmap").submit();
}
function checkNull(value)
{
 if(value==""||value==null)
  return false;
 else
  return true;
}
function checkInteger(str){
 if(str.charAt(0)=='-')
  str=str.substr(1);
 if(str.match("^[0-9]+\$"))
  return true;
 return false;
}
function checkIntegerRange(value)
{
 if(checkNull(value)==false){
  return -1;
 }
 if(checkInteger(value)!=true)
  return -2;
 return true;
}
function Check_IntegerRange(value,Frm,Fnt)
{
 var msg;
 var tem=checkIntegerRange(value);
 if(tem==-1){
  return true;
 }else if(tem==-2){
  msg=getmsg(102);
  alert(msg);
  getObj(Frm).focus();
  return false;
 }else if(tem==-3){
  msg=getmsg(103);
  alert(msg);
  getObj(Frm).focus();
  return false;
 }
 return true;
}
function pageCheckValue()
{
 var IgmpVlan=getValue("Frm_mcast_vlan");
 if(IgmpVlan!=""){
  if(Check_IntegerRange(IgmpVlan,"Frm_mcast_vlan","Fnt_mcast_vlan")!=true){
   return false;
  }
 }else{
 }
 return true;
}
function RmZero(str)
{
 while(str.indexOf("0")==0&&str.length>1){
  str=str.substr(1);
 }
 return str;
}
function ReSetValueRmZero(ID){
 var num=ReSetValueRmZero.arguments.length;
 var obj;
 if(num==0)
  return;
 for(i=0;i<num;i++){
  obj=document.getElementById(arguments[i]);
  if(obj!=null &&obj.value!=null &&obj.value!=""){
   if(obj.value.length>10){
    return false;
   }
   obj.value=RmZero(obj.value);
  }
 }
}
function pageSetValue()
{
 var vlan;
 if((getValue("Frm_mcast_vlan")!="")&&(getValue("Frm_mcast_vlan")!=null )){
  vlan = getValue("Frm_mcast_vlan");
  setValue("mVlan",vlan);
 }
 else{
  setValue("mVlan",0);
 }
}
function ModifyGetValue(i)
{
}
function ModifyApply()
{
 ReSetValueRmZero("Frm_mcast_vlan");
 if(pageCheckValue()==true){
  pageSetValue();
  postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
  return true;
 }else{
  pageSetValue();
  return false;
 }
 return false;
}
</SCRIPT>
<style> TABLE {width:375} 

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
    margin-left:-10px;
    width:365px;
}
.left-field-para{
    margin-left: -11px;
    width:1248px;
}
.right-field-radio{
    margin-left:165px;
    width:33px; 
    padding:2px
}
.right-field{
    margin-left:178px;
    padding:2px;
    width:200px; 
}
.right-field-checkbox{
    margin-left:178px;
    padding:3px;
     
}
.margin_adjs{
    margin-left:-22px;
    width:102.5%
}
.orange_btn {
    background: #f58220;
    color: #fff;
    font-size: 13px;
    font-weight: 500;
    border: solid 2px #f58220;
}
</style>
</head>
<body onLoad="on_init();">
                        <div class="">
                            

                             
                               <div class="scoop-inner-content">
									  
								
							 
                                                    						 
								<div class="white_box">
									<div class="row justify-content-between">
									<h1 class="heading_grey col-auto"><img src="/Dashboard/images/gear.png"  width="45" height="40" class="img_sub" alt=""/> <% multilang("2748" "LANG_MCAST_VLAN"); %></h1>
										
									</div>	
                                    <hr class="margin_adjs">
                                    	<div class="col-md-12 form-group">
											<div class="custom-control">
  <p class="left-field-para"><% multilang("2931" "LANG_THIS_PAGE_IS_USED_TO_CONFIGURE_IPTV_VLAN"); %></p>
 </div>
 </div>

<form id="mcast_vmap" action=/boaform/admin/formMcastVlanMapping method=POST name=mcast_vmap>
<div class="data_common data_common_notitle">
 <div class="col-md-12 form-group" id="mcast_table">
  <div class="custom-control">


   <label class="left-field"><% multilang("2749" "LANG_MCAST_VLAN_SETUP"); %></label>
   <input class="right-field custom-select" name="Frm_mcast_vlan" id="Frm_mcast_vlan" type="text" class="inputId" disabled="true" value="" size="15" />
 </div>
 </div>
</div>
<hr class="margin_adjs">
<div class="btn_ctl form-footer">
 <input class="link_bg btn orange_btn" type="submit" value="<% multilang("334" "LANG_APPLY"); %>" id="modify" style="display:none" onclick="return ModifyApply();" />
 <input class="link_bg btn orange_btn" name="back" type="button" id="back" value="<% multilang("336" "LANG_UNDO"); %>" onclick="back2add()" style="display:none"/>
</div>
<div class="data_common data_vertical">
 <table id="lstrc" class="table table-bordered table-striped" style="background-color: #f8f9fa; margin-left:25px; width:94%"  >
  <tr class="hdb" align="center" nowrap>
   <th><% multilang("70" "LANG_INTERFACE"); %></th>
   <th><% multilang("2748" "LANG_MCAST_VLAN"); %></th>
   <th><% multilang("331" "LANG_MODIFY"); %></th>
  </tr>
 </table>
</div>
<input type='hidden' name=if_index ID=if_index value=''>
<input type='hidden' name=mVlan ID=mVlan value=''>
<input type='hidden' name=WanName ID=WanName value=''>
<input type="hidden" name="submit-url" value="/app_iptv.asp">
<input type="hidden" name="postSecurityFlag" value="">
</form>
<br><br>
</div>
</div>
</div>
</div>
</div>
<div class="text-center p-3" style="background-color: rgb(235 234 234 / 20%);">
  &copy 2022-2026 Copyright :
<a class="text-white" style="color:#fd7e14 !important;" href="#">Syrotech Networks Pvt. Ltd.</a>
</div>
</body>
</html>
