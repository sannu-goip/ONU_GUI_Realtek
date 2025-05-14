<% SendWebHeadStr();%>
<title>Mcast-VLAN <% multilang("2748" "LANG_MCAST_VLAN"); %></title>
<style>
  /* General body styling */
  body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      color: #333;
  }
  
  /* Intro section styling */
  .intro_main {
      padding: 5px 15px; /* Compact padding */
      background-color: #fff;
      border-bottom: 1px solid #ddd;
  }
  
  .intro_title {
      font-size: 24px; /* Slightly smaller font size */
   
      color: #f58220;
      margin: 0;
      padding-bottom: 5px;
  }
  
  .intro_content {
      font-size: 12px; /* Smaller font size */
      margin-top: 5px;
      color: #666;
  }
  
  /* Form container styling */
  .data_common {
      margin: 0px 15px; /* Compact margin */
      padding: 0px 10px; /* Compact padding */
      background-color: #fff;
     
  }
  
 
  
  .data_common table {
      width: 100%;
      border-collapse: collapse;
  }
  
  .data_common th {
      text-align: left;
      font-size: 13px; /* Smaller font size */
      color: #333;
      padding: 6px; /* Compact padding */
      width: 40%;
      font-weight: 300;
  }
  
  .data_common td {
      padding: 6px; /* Compact padding */
      width: 60%;
  }
  
  .data_common input[type="text"],
  .data_common input[type="file"],
  .data_common select {
      width: 180px; /* Slightly smaller width */
      padding: 4px; /* Compact padding */
      border: 1px solid #ccc;
      border-radius: 2px; /* Slightly smaller border radius */
      font-size: 12px; /* Smaller font size */
      box-sizing: border-box;
  }
  
  /* Button styling */
  .btn_ctl {
      text-align: right;
      margin: 10px 15px; /* Compact margin */
  }
  
  .link_bg {
      height: 30px;
      background-color: #f58220;
      color: white;
      border: 1px solid #eee;
      border-radius: 3px;
      padding: 4px 10px; /* Compact padding */
      font-size: 12px; /* Smaller font size */
      cursor: pointer;
      transition: background-color 0.3s, color 0.3s;
  }
  
  .link_bg:hover {
    border: 1px solid #f58220;
      background-color: white;
      color: #f58220;
  }
  #lstrc{
    margin-top: 20px;
  }
 #lstrc th, #lstrc td {
    border: 1px solid #ccc; /* Border for table cells */
    font-size: 13px;
    text-align: center; /* Centered text */
  }
  #lstrc th{
    background-color: #e0dddd;
   
  }
  #lstrc th:nth-child(1),
#lstrc td:nth-child(1) {
    width: 40%; /* First column width */
}

#lstrc th:nth-child(2),
#lstrc td:nth-child(2) {
    width: 40%; /* Second column width */
}

#lstrc th:nth-child(3),
#lstrc td:nth-child(3) {
    width: 20%; /* Third column width */
}
  /* Column styling */
  .column {
      margin: 10px 15px; /* Compact margin */
  }
  
   input[type="checkbox"] {
    vertical-align: bottom;
   }
  .table_stats th{
    text-align: center;
    font-weight: bold;
    font-size: 14px;
    background-color: #e0dddd;
  }
  .table_stats tr td{
    font-size: 13px;
  }
  span{
    font-size: 13px;
  }
  </style>
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
   alert("strings initialized fail, please check source code��i = "+i);
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
 return ("<image id=\""+id+"\" onclick=\""+ strmethod +"\" src=\"/img/pen.gif\">");
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
  cell.innerHTML = getImage("img/edit.gif","Modify("+i+")","Btn_Modify"+i);
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
</head>
<body onLoad="on_init();">

<div class="breadcrum_box"> <ul><li><a href="#">APP</a></li><li>IPTV</li><li class="welcom" valign="bottom" align="middle" width="120">Welcome!</li><li valign="bottom"></li> </ul><div class="help_icon"> <a href="/cgi-bin/help_content.asp#UPNP Configuration" target="_blank"> <svg  id="help_icon_svg" xmlns="http://www.w3.org/2000/svg" width="38" height="38" viewBox="0 0 38 38"> <path id="help_Icon" data-name="help_Icon" class="cls-1" d="M18.746,0A19,19,0,1,0,38,18.744,19,19,0,0,0,18.746,0ZM18.69,30.565l-0.1,0a2.766,2.766,0,0,1,.065-5.531l0.094,0A2.766,2.766,0,1,1,18.69,30.565Zm6.8-13.49a12.558,12.558,0,0,1-2.268,2.031l-1.16.8a3.147,3.147,0,0,0-1.165,1.418,2.933,2.933,0,0,0-.18,1.19l0,0.186H16.286l0.013-.375c0.054-1.54.092-2.446,0.73-3.194a18.823,18.823,0,0,1,3.3-2.658,3.485,3.485,0,0,0,.782-0.8,2.816,2.816,0,0,0,.67-1.641,3.2,3.2,0,0,0-.608-1.89,2.531,2.531,0,0,0-2.19-.823,2.389,2.389,0,0,0-2.213,1.023,4.112,4.112,0,0,0-.67,2.21v0.189H11.539l0.008-.2c0.118-2.8,1.116-4.809,2.965-5.984a7.809,7.809,0,0,1,4.295-1.127,9.269,9.269,0,0,1,5.54,1.595A5.531,5.531,0,0,1,26.587,13.8,5.461,5.461,0,0,1,25.487,17.076Z"></path> </svg> </a> </div></div>


<div class="intro_main ">
<div style="
    display: flex;
    align-items: center;
    gap: 5px;
">
<div><img src="/img/gear.png" style="width:38px;"></div>
<div style="padding-top: 7px;"> <p class="intro_title"><% multilang("2748" "LANG_MCAST_VLAN"); %></p></div></div>

 <p class="intro_content"><% multilang("2931" "LANG_THIS_PAGE_IS_USED_TO_CONFIGURE_IPTV_VLAN"); %></p>
</div>
<form id="mcast_vmap" action=/boaform/admin/formMcastVlanMapping method=POST name=mcast_vmap>
<div class="data_common data_common_notitle">
 <table id="mcast_table">
  <tr>
   <th id="Fnt_mcast_vlanA"><% multilang("2749" "LANG_MCAST_VLAN_SETUP"); %></th>
   <td><input name="Frm_mcast_vlan" id="Frm_mcast_vlan" type="text" class="inputId" disabled="true" value="" size="15" /></td>
  </tr>
 </table>
</div>
<div class="btn_ctl">
 <input class="link_bg" type="submit" value="<% multilang("334" "LANG_APPLY"); %>" id="modify" style="display:none" onclick="return ModifyApply();" />
 <input class="link_bg" name="back" type="button" id="back" value="<% multilang("336" "LANG_UNDO"); %>" onclick="back2add()" style="display:none"/>
</div>
<div class="data_common data_vertical">
 <table id="lstrc" style="border: 0.1px solid #ccc; border-collapse: collapse;">
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
</body>
</html>
