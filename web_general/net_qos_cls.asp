<%SendWebHeadStr(); %>
<TITLE>QoS <% multilang("41" "LANG_CLASSIFICATION"); %></TITLE>
<style>
    background-color: #ccc;
    border: 2px outset #efefef;
    cursor: pointer;
    float: left;
    padding: 1px 2px 2px 0;

    background-color: #ffffff;
    border: 1px outset #999;
    display: none;
    height: 400px;
    margin-left: 1px;
    margin-top: 25px;
    overflow-y: auto;
    padding: 1px;
    position: absolute;
    text-align: left;
    z-index: 200;
 left: 8px;
 top: 38px;

.position_a{
 position: relative;
}
</style>
<style>
  .list_header ul{
    display: flex;
    gap: 80px;
    list-style: none;
    margin-top: 1px;
    margin-left: -22px;
    font-size: 15px;
  }
  .list_header ul a{
    text-decoration: none;
    font-weight: 15px;
    color: #f58220;
    border-bottom: 2px solid transparent;
    transition: color 0.3s, border-bottom 0.3s;
  }
  .list_header ul a:hover, .list_header ul a.active{
    color: #f58220;
    border-bottom: 2px solid #f58220;
  }
  
    #lstrc {
    width: 100%;
    border-collapse: collapse;
    text-align: center;
  }

  #lstrc th, #lstrc td {
    width: 20%;
    padding: 8px;
    background-color: #dddddd;
    border: 1px solid #aaa;
    width:20%;
  }

  #lstrc th {
    width:10%;
  background-color:#ebeced;
    color: solid black;
    text-align: center;
  }

  #lstrc td {
    width:10%;

   background-color:#f8f9fa;
    padding: 8px;
  }
</style>
<SCRIPT language="javascript" type="text/javascript">
var dscps = new it_nr("dscplst",
 new it(0, ""),
 new it(1, "Default(000000)"),
 new it(57, "AF13(001110)"),
 new it(49, "AF12(001100)"),
 new it(41, "AF11(001010)"),
 new it(33, "CS1(001000)"),
 new it(89, "AF23(010110)"),
 new it(81, "AF22(010100)"),
 new it(73, "AF21(010010)"),
 new it(65, "CS2(010000)"),
 new it(121, "AF33(011110)"),
 new it(113, "AF32(011100)"),
 new it(105, "AF31(011010)"),
 new it(97, "CS3(011000)"),
 new it(153, "AF43(100110)"),
 new it(145, "AF42(100100)"),
 new it(137, "AF41(100010)"),
 new it(129, "CS4(100000)"),
 new it(185, "EF(101110)"),
 new it(161, "CS5(101000)"),
 new it(193, "CS6(110000)"),
 new it(225, "CS7(111000)")
);
var iffs = new Array("", "LAN_1", "LAN_2", "LAN_3", "LAN_4");
<!--var protos = new Array("", "ICMP", "TCP", "UDP", "TCP/UDP");-->
var protos = new Array("", "TCP", "UDP", "ICMP", "TCP/UDP");
var rules = new Array();
<% initQosRulePage(); %>
function button_onoff_image(enable)
{
 if (enable)
  return "image src='/img/button-on.png'";
 else
  return "image src='/img/button-off.png'";
}
function button_onoff_html(index, item)
{
 var str;
 str = "<"+button_onoff_image(rules[index].state)+" onClick=on_onoffClick("+index+","+item+"); />";
 return str;
}
function on_chkclick(index)
{
 if(index < 0 || index >= rules.length)
  return;
 rules[index].select = !rules[index].select;
}
function on_onedit(index)
{
 if(index < 0 || index >= rules.length)
  return;
 window.location.href = "net_qos_cls_edit.asp?rule_index="+rules[index].index+"&rule=" + rules[index].enc();
}
function on_onoffClick(index, item)
{
 if(index < 0 || index >= rules.length)
  return;
 rules[index].state = !rules[index].state;
 if (rules[index].state != 0)
  lstrc.rows[index+2].bgColor = "#FFFFFF";
 else
  lstrc.rows[index+2].bgColor = "#EEEEEE";
 lstrc.rows[index+2].cells[item].innerHTML = button_onoff_html(index, item);
}
function on_init()
{
 if(lstrc.rows){while(lstrc.rows.length > 2) lstrc.deleteRow(2);}
 for(var i = 0; i < rules.length; i++)
 {
  var account = 0;
  var row = lstrc.insertRow(i + 2);
  var strprio = "";
  row.nowrap = true;
  row.vAlign = "center";
  var cell = row.insertCell(account);
  account = account +1;
  cell.innerHTML = rules[i].index;
  cell = row.insertCell(account);
  account = account +1;
  cell.innerHTML = rules[i].name;
  cell = row.insertCell(account);
  account = account +1;
  cell.innerHTML = rules[i].qos_order;
  cell = row.insertCell(account);
  account = account +1;
  if (rules[i].mdscp != "0") {
   cell.innerHTML = "0x"+(rules[i].mdscp-1).toString(16);
  } else
   cell.innerHTML = " <br>";
  cell = row.insertCell(account);
  account = account +1;
  if (rules[i].m1p != "0") {
   cell.innerHTML = rules[i].m1p-1;
  } else
   cell.innerHTML = "<br> ";
  cell = row.insertCell(account);
  account = account +1;
  cell.innerHTML = rules[i].prio;
  cell = row.insertCell(account);
  account = account +1;
  cell.innerHTML = rules[i].wanifname;
  cell = row.insertCell(account);
  account = account +1;
  switch(rules[i].ipqos_rule_type)
  {
   case 0:
    cell.innerHTML = "<b>Port Base<br></b>";
    switch(rules[i].phypt)
    {
     case 1:
      cell.innerHTML += "LAN1<br>";
      break;
     case 2:
      cell.innerHTML += "LAN2<br>";
      break;
     case 3:
      cell.innerHTML += "LAN3<br>";
      break;
     case 4:
      cell.innerHTML += "LAN4<br>";
      break;
    }
    break;
   case 1:
    cell.innerHTML = "<b>EtherType Base<br></b>";
    cell.innerHTML +="0x"+rules[i].ethType;
    break;
   case 2:
    cell.innerHTML = "<b>IP/Protocol Base<br></b>";
    switch(rules[i].proto)
    {
     case 0:
      break;
     case 1:
      cell.innerHTML+= "Protocol: "+ "TCP<br>";
      break;
     case 2:
      cell.innerHTML+= "Protocol: "+ "UDP<br>";
      break;
     case 3:
      cell.innerHTML+= "Protocol: "+ "ICMP<br>";
      break;
     case 4:
      cell.innerHTML+= "Protocol: "+ "TCP/UDP<br>";
      break;
    }
    if(rules[i].dscp == 0)
     ;
    else
      cell.innerHTML+= "DSCP: "+dscps[rules[i].dscp]+"<br>";
    switch(rules[i].IpProtocolType)
    {
     case 1:
      if(rules[i].sip!= "0.0.0.0")
       {
        cell.innerHTML += "Source IP: "+ rules[i].sip+"<br>";
        cell.innerHTML += "Source Mask: "+ rules[i].smsk+"<br>";
       }
      if(rules[i].dip!= "0.0.0.0")
       {
        cell.innerHTML += "Destination IP: "+ rules[i].dip+"<br>";
        cell.innerHTML += "Destination Mask: "+ rules[i].dmsk+"<br>";
       }
      break;
     case 2:
      if (rules[i].sip6 != "::")
       {
        if(rules[i].sip6PrefixLen == "")
         cell.innerHTML += "Source IP: "+ rules[i].sip6+"<br>";
        else
         cell.innerHTML += "Source IP: "+ rules[i].sip6 + "/" + rules[i].sip6PrefixLen+"<br>";
       }
      break;
    }
    if(rules[i].spts != "0" || rules[i].spte != "0")
     {
      cell.innerHTML+= "Source Port: ";
      if(rules[i].spte == "0")
       cell.innerHTML+=rules[i].spts + ":"+"<br>";
      else
       cell.innerHTML+=rules[i].spts + ":" + rules[i].spte+"<br>";
     }
    if(rules[i].dpts != "0" || rules[i].dpte != "0")
     {
      cell.innerHTML+= "Destination Port: ";
      if(rules[i].dpte == "0")
       cell.innerHTML+=rules[i].dpts + ":"+"<br>";
      else
       cell.innerHTML+=rules[i].dpts + ":" + rules[i].dpte+"<br>";
     }
    break;
   case 3:
    cell.innerHTML = "<b>MAC Address Base<br></b>";
    cell.innerHTML += "Source MAC: "+ ((rules[i].smac=="00:00:00:00:00:00")?"":rules[i].smac)+"<br>";
    cell.innerHTML += "Destination MAC:"+ ((rules[i].dmac=="00:00:00:00:00:00")?"":rules[i].dmac)+"<br>";
    break;
   case 4:
    cell.innerHTML = "<b>DHCP Option Base<br></b>";
    if(typeof rules[i].dhcpopt_type_select !== "undefined")
    {
     switch(rules[i].dhcpopt_type_select)
     {
      case "0":
       cell.innerHTML += "Option 60<br>";
       cell.innerHTML += "Vendor Class ID:"+rules[i].opt60_vendorclass;
       break;
      case "1":
       cell.innerHTML += "Option 61<br>";
       switch(rules[i].dhcpopt61_DUID_select)
       {
        case "0":
         cell.innerHTML += "DUID Type: DUID_LLT<br>";
         cell.innerHTML += "IAID: "+rules[i].opt61_iaid+"<br>";
         cell.innerHTML += "Hardware Type:"+rules[i].duid_hw_type+"<br>";
         cell.innerHTML += "Time"+rules[i].duid_time+"<br>";
         cell.innerHTML += "Link-layer Address"+rules[i].duid_mac+"<br>";
         break;
        case "1":
         cell.innerHTML += "DUID Type: DUID_EN<br>";
         cell.innerHTML += "IAID: "+rules[i].opt61_iaid+"<br>";
         cell.innerHTML += "Enterprise Number: "+rules[i].duid_ent_num+"<br>";
         cell.innerHTML += "Identifier: "+rules[i].duid_ent_id+"<br>";
         break;
        case "2":
         cell.innerHTML += "DUID Type: DUID_LL<br>";
         cell.innerHTML += "IAID: "+rules[i].opt61_iaid+"<br>";
         cell.innerHTML += "Hardware Type: "+rules[i].duid_hw_type+"<br>";
         cell.innerHTML += "Link-layer Address: "+rules[i].duid_mac+"<br>";
         break;
       }
       break;
      case "2":
       cell.innerHTML += "Option 125<br>";
       cell.innerHTML += "Enterprise Number: "+rules[i].opt125_ent_num+"<br>";
       cell.innerHTML += "Manufacturer OUI: "+rules[i].opt125_manufacturer+"<br>";
       cell.innerHTML += "Product Class: "+rules[i].opt125_product_class+"<br>";
       cell.innerHTML += "Model Name: "+rules[i].opt125_model+"<br>";
       cell.innerHTML += "Serial Number: "+rules[i].opt125_serial+"<br>";
       break;
     }
    }
    break;
   default:
    break;
  }
  cell = row.insertCell(account);
  account = account +1;
  cell.align = "center";
  cell.innerHTML = "<input type=\"checkbox\" onClick=\"on_chkclick(" + i + ");\">";
  cell = row.insertCell(account);
  account = account +1;
  cell.align = "center";
  cell.innerHTML = "<input type=\"button\" onClick=\"on_onedit(" + i + ");\" value=\"Edit\">";
  cell = row.insertCell(account);
  account = account +1;
  cell.innerHTML = button_onoff_html(i, account);
  if (rules[i].state != 0)
   row.bgColor = "#FFFFFF";
  else
   row.bgColor = "#EEEEEE";
 }
 on_init1()
}
function rc2string(it)
{
 return it.index + "," + Number(it.state) + "," + Number(it.select);
}
function on_submit()
{
 var tmplst = "";
 var first = true;
 if (rules.length == 0)
  return;
 with ( document.forms[0] )
 {
  for(var i = 0; i < rules.length; i++)
  {
   if(first)
   {
    first = false;
   }
   else
   {
    tmplst += "&";
   }
   tmplst += rc2string(rules[i]);
  }
  lst.value = tmplst;
  postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
  submit();
 }
}
</SCRIPT>

<SCRIPT language="javascript" type="text/javascript">
  var dscps = new it_nr("dscplst",
   new it(0, ""),
   new it(1, "default(000000)"),
   new it(57, "AF13(001110)"),
   new it(49, "AF12(001100)"),
   new it(41, "AF11(001010)"),
   new it(33, "CS1(001000)"),
   new it(89, "AF23(010110)"),
   new it(81, "AF22(010100)"),
   new it(73, "AF21(010010)"),
   new it(65, "CS2(010000)"),
   new it(121, "AF33(011110)"),
   new it(113, "AF32(011100)"),
   new it(105, "AF31(011010)"),
   new it(97, "CS3(011000)"),
   new it(153, "AF43(100110)"),
   new it(145, "AF42(100100)"),
   new it(137, "AF41(100010)"),
   new it(129, "CS4(100000)"),
   new it(185, "EF(101110)"),
   new it(161, "CS5(101000)"),
   new it(193, "CS6(110000)"),
   new it(225, "CS7(111000)"));
  <!--var protos = new Array("", "ICMP", "TCP", "UDP", "TCP/UDP");-->
  var protos = new Array("", "TCP", "UDP", "ICMP", "TCP/UDP");
  var states = new Array("disable", "enable");
  var md802ps = new Array("", "0", "1", "2", "3", "4", "5", "6", "7");
  var iffs = new it_nr("lanitf");
  var quekeys = new it_nr("queuekey");
  var oifkeys = new it_nr("outifkey");
  var sel1 = new Array("phypt", "proto", "dscp", "sip", "smsk", "spts", "spte", "dip", "dmsk", "dpts", "dpte", "smac", "dmac",
        "sip6", "sip6PrefixLen", "dip6", "dip6PrefixLen");
  var sel2 = new Array("vlan1p");
  var sel3 = new Array("ethType");
  var ipversions = new Array("<% multilang("818" "LANG_PLEASE_SELECT_IP_VERSION"); %>", "IPv4", "IPv6");
  quekeys.add(new it("", ""));
  <% initRulePriority(); %>
  iffs.add(new it(0, ""));
  <% initQosLanif(); %>
  <!--oifkeys.add(new it("65535|255", ""));-->
  var opts = new Array(new Array("prio", quekeys), new Array("proto", protos),
   new Array("mdscp", dscps), new Array("m1p", md802ps), new Array("phypt", iffs),
   new Array("dscp", dscps), new Array("vlan1p", md802ps), new Array("IpProtocolType", ipversions) );
  var rule = new it_nr("rule_");
  var paramrl = sji_queryparam("rule");
  rule.dec(paramrl);
  function checkstr(str)
  {
   var ch="";
   if(typeof str != "string") return 0;
   for(var i =0;i< str.length; i++) {
    ch = str.charAt(i);
    if(!(ch =="_"||(ch<="9"&&ch>="0")||(ch<="z"&&ch>="a")||(ch<="Z"&&ch>="A"))) return 0;
   }
   return 1;
  }
  function update_ip_proto_base()
  {
   with (document.forms[1]) {
    spts.disabled = false;
    spte.disabled = false;
    dpts.disabled = false;
    dpte.disabled = false;
    sip.disabled = false;
    smsk.disabled = false;
    sip6.disabled = false;
    sip6PrefixLen.disabled = false;
    dip.disabled = false;
    dmsk.disabled = false;
    dip6.disabled = false;
    dip6PrefixLen.disabled = false;
    if (proto.value == 3 || proto.value == 5) {
     spts.disabled = true;
     spte.disabled = true;
     dpts.disabled = true;
     dpte.disabled = true;
     spts.value = "";
     spte.value = "";
     dpts.value = "";
     dpte.value = "";
    }
    if (sip.value == "0.0.0.0")
     sip.value = "";
    if (dip.value == "0.0.0.0")
     dip.value = "";
    if (sip6.value == "::")
     sip6.value = "";
    if (dip6.value == "::")
     dip6.value = "";
    if (sip6PrefixLen.value == 0)
     sip6PrefixLen.value = "";
    if (dip6PrefixLen.value == 0)
     dip6PrefixLen.value = "";
    if (spts.value == 0)
     spts.value = "";
    if (spte.value == 0)
     spte.value = "";
    if (dpts.value == 0)
     dpts.value = "";
    if (dpte.value == 0)
     dpte.value = "";
   }
  }
  function onChange_proto()
  {
   for(var n2 in sel2)
   {
    var oin = document.getElementById(sel2[n2]);
    if(typeof oin == "undefined")continue;
    if(oin.tagName == "SELECT")oin.selectedIndex = 0;
    else oin.value = "";
   }
   for(var n1 in sel3)
   {
    var oin = document.getElementById(sel3[n1]);
    if(typeof oin == "undefined")continue;
    if(oin.tagName == "SELECT")oin.selectedIndex = 0;
    else oin.value = "";
   }
   update_ip_proto_base();
  }
  function onchange_sel1()
  {
   for(var n2 in sel2)
   {
    var oin = document.getElementById(sel2[n2]);
    if(typeof oin == "undefined")continue;
    if(oin.tagName == "SELECT")oin.selectedIndex = 0;
    else oin.value = "";
   }
   for(var n1 in sel3)
   {
    var oin = document.getElementById(sel3[n1]);
    if(typeof oin == "undefined")continue;
    if(oin.tagName == "SELECT")oin.selectedIndex = 0;
    else oin.value = "";
   }
  }
  function onchange_sel2()
  {
  }
  function onchange_sel3()
  {
   for(var n1 in sel1)
   {
    var oin = document.getElementById(sel1[n1]);
    if(typeof oin == "undefined")continue;
    if(oin.tagName == "SELECT")oin.selectedIndex = 0;
    else oin.value = "";
   }
   for(var n2 in sel2)
   {
    var oin = document.getElementById(sel2[n2]);
    if(typeof oin == "undefined")continue;
    if(oin.tagName == "SELECT")oin.selectedIndex = 0;
    else oin.value = "";
   }
  }
  function on_init1()
  {
   for(var i in opts)
   {
    var slit = document.getElementById(opts[i][0]);
    if(typeof slit == "undefined")continue;
    for(var j in opts[i][1])
    {
     if(j == "name" || (typeof opts[i][1][j] != "string" && typeof opts[i][1][j] != "number"))continue;
     slit.options.add(new Option(opts[i][1][j], j));
    }
    slit.selectedIndex = 0;
   }
   for(var key in rule)
   {
    if((typeof rule[key] != "string" && typeof rule[key] != "number"))continue;
    if(typeof form[key] == "undefined")continue;
    form[key].value = rule[key];
   }
   displayByType();
  }
  function on_submit1()
  {
   with (document.forms[1]) {
    var sbmtstr;
    var qostype_select_type = -1;
    var sizes = document.all.qos_rule_type;
    if (paramrl != null)
     sbmtstr = "editrule";
    else
     sbmtstr = "addrule";
    for (i = 0; i < sizes.length; i++) {
     if (sizes[i].checked) {
      qostype_select_type = i;
      break;
     }
    }
    if (qostype_select_type < 0 || qostype_select_type > 4) {
     alert("<% multilang("2311" "LANG_PLEASE_SELECT_A_RULE_TYPE"); %>");
     return false;
    }
    if (!checkstr(name.value)) {
     name.value = "";
     name.focus();
     alert("<% multilang("2312" "LANG_RULE_NAME_IS_INVALID"); %>");
     return false;
    }
    if (qos_order.value != "" && (qos_order.value < 1)) {
     qos_order.value = "";
     qos_order.focus();
     alert("<% multilang("2313" "LANG_ORDER_IS_INVALID"); %>");
     return false;
    }
    if (prio.value == "") {
    prio.focus();
     alert("<% multilang("2314" "LANG_PLEASE_ASSIGN_USED_QUEUE"); %>");
     return false;
    }
    sbmtstr = sbmtstr + "&index=" + index.value;
    sbmtstr = sbmtstr + "&qos_rule_type=" + qostype_select_type;
    sbmtstr = sbmtstr + "&name=" + name.value;
    sbmtstr = sbmtstr + "&order=" + qos_order.value;
    sbmtstr = sbmtstr + "&prio=" + prio.value;
    sbmtstr = sbmtstr + "&outif=" + outif.value;
    sbmtstr = sbmtstr + "&mark1p=" + m1p.value;
    sbmtstr = sbmtstr + "&markdscp=" + mdscp.value;
    if (qostype_select_type == 0) {
     if (phypt.value == 0) {
      phypt.focus();
      alert("<% multilang("2315" "LANG_NEED_TO_SPECIFY_ONE_PARAMETER_AT_LEAST"); %>");
      return false;
     }
     sbmtstr = sbmtstr + "&phyport=" + phypt.value;
    } else if (qostype_select_type == 1) {
     if (ethType.value == "") {
      ethType.focus();
      alert("<% multilang("2315" "LANG_NEED_TO_SPECIFY_ONE_PARAMETER_AT_LEAST"); %>");
      return false;
     }
     if (ethType.value != 0
         && (ethType.value.length < 4
      || ethType.value.length > 4
      || ethType.value < "0800")) {
      ethType.focus();
      alert("<% multilang("2318" "LANG_INVALID_ETHERNET_TYPE"); %>");
      return false;
     }
     sbmtstr = sbmtstr + "&ethType=" + ethType.value;
    } else if (qostype_select_type == 2) {
     if (proto.value == 0 && sip.value == "" && dip.value == ""
      && sip6.value == "" && dip6.value == "" && spts.value == "" && dpts.value == "") {
      alert("<% multilang("2315" "LANG_NEED_TO_SPECIFY_ONE_PARAMETER_AT_LEAST"); %>");
      return false;
     }
     sbmtstr = sbmtstr + "&proto=" + proto.value;
     sbmtstr = sbmtstr + "&matchdscp=" + dscp.value;
     sbmtstr = sbmtstr + "&IPversion=" + IpProtocolType.value;
     if (IpProtocolType.value == 1) {
      if (sip.value != "" && !sji_checkip(sip.value)) {
       sip.value = "";
       sip.focus();
       alert("<% multilang("2321" "LANG_SRC_IP_IS_INVALID"); %>");
       return false;
      }
      if (smsk.value != "" && !sji_checkmask(smsk.value)) {
       smsk.value = "";
       smsk.focus();
       alert("<% multilang("2322" "LANG_SRC_MASK_IS_INVALID"); %>");
       return false;
      }
      if (dip.value != "" && !sji_checkip(dip.value)) {
       dip.value = "";
       dip.focus();
       alert("<% multilang("2323" "LANG_DST_IP_IS_INVALID"); %>");
       return false;
      }
      if (dmsk.value != "" && !sji_checkmask(dmsk.value)) {
       dmsk.value = "";
       dmsk.focus();
       alert("<% multilang("2324" "LANG_DST_MASK_IS_INVALID"); %>");
       return false;
      }
      sbmtstr = sbmtstr + "&sip=" + sip.value;
      sbmtstr = sbmtstr + "&smask=" + smsk.value;
      sbmtstr = sbmtstr + "&dip=" + dip.value;
      sbmtstr = sbmtstr + "&dmask=" + dmsk.value;
     } else if (IpProtocolType.value == 2) {
      if (sip6.value != "") {
       if (!isIpv6Address(sip6.value)) {
        sip6.value = "";
        sip6.focus();
        alert("<% multilang("2325" "LANG_INVALID_SOURCE_IPV6_ADDRESS"); %>");
        return false;
       }
       if (sip6PrefixLen.value != "") {
        var prefixlen = getDigit(sip6PrefixLen.value, 1);
        if (prefixlen > 128 || prefixlen < 0) {
         sip6PrefixLen.value = "";
         sip6PrefixLen.focus();
         alert("<% multilang("2326" "LANG_INVALID_SOURCE_IPV6_PREFIX_LENGTH"); %>");
         return false;
        }
       }
      }
      if (dip6.value != "") {
       if (!isIpv6Address(dip6.value)) {
        dip6.value = "";
        dip6.focus();
        alert("<% multilang("2327" "LANG_INVALID_DESTINATION_IPV6_ADDRESS"); %>");
        return false;
       }
       if (dip6PrefixLen.value != "") {
        var prefixlen = getDigit(dip6PrefixLen.value, 1);
        if (prefixlen > 128 || prefixlen < 0) {
         dip6PrefixLen.value = "";
         dip6PrefixLen.focus();
         alert("<% multilang("2328" "LANG_INVALID_DESTINATION_IPV6_PREFIX_LENGTH"); %>");
         return false;
        }
       }
      }
      sbmtstr = sbmtstr + "&sip6=" + sip6.value;
      sbmtstr = sbmtstr + "&dip6=" + dip6.value;
      sbmtstr = sbmtstr + "&sip6PrefixLen=" + sip6PrefixLen.value;
      sbmtstr = sbmtstr + "&dip6PrefixLen=" + dip6PrefixLen.value;
     }
     if (proto.value == 3 || proto.value == 5) {
      if (spts.value != "" || spte.value != ""
       || dpts.value != "" || dpte.value != "") {
       alert("<% multilang("2330" "LANG_PROTOCOL_IS_NOT_TCP_UDP_CAN_NOT_SPECIFY_PORT"); %>");
       return false;
      }
     }
     if ((spts.value != "")
         && (spts.value <= 0 || spts.value > 65535)) {
      spts.value = "";
      spts.focus();
      alert("<% multilang("2329" "LANG_INVALID_SRC_START_PORT"); %>");
      return false;
     }
     if ((spte.value != "")
         && (spte.value <= 0 || spte.value > 65535)) {
      spte.value = "";
      spte.focus();
      alert("<% multilang("2331" "LANG_INVALID_SRC_END_PORT"); %>");
      return false;
     }
     if ((dpts.value != "")
         && (dpts.value <= 0 || dpts.value > 65535)) {
      dpts.value = "";
      dpts.focus();
      alert("<% multilang("2332" "LANG_INVALID_DST_START_PORT"); %>");
      return false;
     }
     if ((dpte.value != "")
         && (dpte.value <= 0 || dpte.value > 65535)) {
      dpte.value = "";
      dpte.focus();
      alert("<% multilang("2333" "LANG_INVALID_DST_END_PORT"); %>");
      return false;
     }
     sbmtstr = sbmtstr + "&spts=" + spts.value;
     sbmtstr = sbmtstr + "&spte=" + spte.value;
     sbmtstr = sbmtstr + "&dpts=" + dpts.value;
     sbmtstr = sbmtstr + "&dpte=" + dpte.value;
    } else if (qostype_select_type == 3) {
     if (smac.value == "" && dmac.value == "") {
      alert("<% multilang("2315" "LANG_NEED_TO_SPECIFY_ONE_PARAMETER_AT_LEAST"); %>");
      return false;
     }
     if (smac.value != "" && !sji_checkmac2(smac.value)) {
      smac.value = "";
      smac.focus();
      alert("<% multilang("2334" "LANG_INVALID_SRC_MAC"); %>");
      return false;
     }
     if (dmac.value != "" && !sji_checkmac2(dmac.value)) {
      dmac.value = "";
      dmac.focus();
      alert("<% multilang("2335" "LANG_INVALID_DST_MAC"); %>");
      return false;
     }
     sbmtstr = sbmtstr + "&smac=" + smac.value;
     sbmtstr = sbmtstr + "&dmac=" + dmac.value;
    } else if (qostype_select_type == 4) {
     var select_dhcpopt_type = -1;
     var sizes = document.all.dhcpopt_type;
     for (i = 0; i < sizes.length; i++) {
      if (sizes[i].checked) {
       select_dhcpopt_type = i;
       break;
      }
     }
     sbmtstr = sbmtstr + "&dhcpopt_type=" + select_dhcpopt_type;
     if (select_dhcpopt_type == 0) {
      if (vendorclass.value == "") {
       vendorclass.focus();
       alert("<% multilang("2336" "LANG_VENDORCLASS_SHOULD_NOT_BE_EMPTY"); %>");
       return false;
      }
      if (!checkString(vendorclass.value)) {
       vendorclass.value = "";
       vendorclass.focus();
       alert("<% multilang("2337" "LANG_VENDORCLASS_IS_INVALID"); %>");
       return false;
      }
      sbmtstr = sbmtstr + "&vender_class=" + vendorclass.value;
     } else if (select_dhcpopt_type == 1) {
      var select_duid_type = -1;
      var sizes = document.all.duid_type;
      for (i = 0; i < sizes.length; i++) {
       if (sizes[i].selected) {
        select_duid_type = i;
        break;
       }
      }
      sbmtstr = sbmtstr + "&dhcpopt_duid_type=" + select_duid_type;
      if (opt61_iaid.value != "" && !checkDigit(opt61_iaid.value)) {
       opt61_iaid.value = "";
       opt61_iaid.focus();
       alert("<% multilang("2338" "LANG_OPT61_IAID_IS_INVALID"); %>");
       return false;
      }
      if (select_duid_type == 0) {
       duid_ent_num.value = "";
       duid_ent_id.value = "";
       if (duid_hw_type.value != "" && !checkDigit(duid_hw_type.value)) {
        duid_hw_type.value = "";
        duid_hw_type.focus();
        alert("<% multilang("2339" "LANG_DUID_HW_TYPE_IS_INVALID"); %>");
        return false;
       }
       if (duid_time.value != "" && !checkDigit(duid_time.value)) {
        duid_time.value = "";
        duid_time.focus();
        alert("<% multilang("2340" "LANG_DUID_TIME_IS_INVALID"); %>");
        return false;
       }
       if (duid_mac.value != "" && !sji_checkmac2(duid_mac.value)) {
        duid_mac.value = "";
        duid_mac.focus();
        alert("<% multilang("2341" "LANG_DUID_MAC_IS_INVALID"); %>");
        return false;
       }
       if (opt61_iaid.value == "" || duid_hw_type.value == ""
         || duid_time.value == "" || duid_mac.value == "") {
        alert("<% multilang("2342" "LANG_NEED_TO_FILL_VALUE"); %>");
        return false;
       }
      } else if (select_duid_type == 1) {
       duid_hw_type.value = "";
       duid_time.value = "";
       duid_mac.value = "";
       if (duid_ent_num.value != "" && !checkDigit(duid_ent_num.value)) {
        duid_ent_num.value = "";
        duid_ent_num.focus();
        alert("<% multilang("2343" "LANG_DUID_ENT_NUM_IS_INVALID"); %>");
        return false;
       }
       if (duid_ent_id.value != "" && !checkString(duid_ent_id.value)) {
        duid_ent_id.value = "";
        duid_ent_id.focus();
        alert("<% multilang("2344" "LANG_DUID_ENT_ID_IS_INVALID"); %>");
        return false;
       }
       if (opt61_iaid.value == "" || duid_ent_num.value == ""
         || duid_ent_id.value == "") {
        alert("<% multilang("2342" "LANG_NEED_TO_FILL_VALUE"); %>");
        return false;
       }
      } else if (select_duid_type == 2) {
       duid_ent_num.value = "";
       duid_ent_id.value = "";
       duid_time.value = "";
       if (duid_hw_type.value != "" && !checkDigit(duid_hw_type.value)) {
        duid_hw_type.value = "";
        duid_hw_type.focus();
        alert("<% multilang("2339" "LANG_DUID_HW_TYPE_IS_INVALID"); %>");
        return false;
       }
       if (duid_mac.value != "" && !checkMac(duid_mac.value)) {
        duid_mac.value = "";
        duid_mac.focus();
        alert("<% multilang("2341" "LANG_DUID_MAC_IS_INVALID"); %>");
        return false;
       }
       if (opt61_iaid.value == "" || duid_hw_type.value == ""
         || duid_mac.value == "") {
        alert("<% multilang("2342" "LANG_NEED_TO_FILL_VALUE"); %>");
        return false;
       }
      }
      sbmtstr = sbmtstr + "&opt61_iaid=" + opt61_iaid.value;
      sbmtstr = sbmtstr + "&duid_hw_type=" + duid_hw_type.value;
      sbmtstr = sbmtstr + "&duid_time=" + duid_time.value;
      sbmtstr = sbmtstr + "&duid_mac=" + duid_mac.value;
      sbmtstr = sbmtstr + "&duid_ent_num=" + duid_ent_num.value;
      sbmtstr = sbmtstr + "&duid_ent_id=" + duid_ent_id.value;
     } else if (select_dhcpopt_type == 2) {
      if (!checkDigit(opt125_ent_num.value)) {
       opt125_ent_num.value = "";
       opt125_ent_num.focus();
       alert("<% multilang("2345" "LANG_OPT125_ENT_NUM_IS_INVALID"); %>");
       return false;
      }
      if (opt125_manufacturer.value != ""
        && !checkString(opt125_manufacturer.value)) {
       opt125_manufacturer.value = "";
       opt125_manufacturer.focus();
       alert("<% multilang("2345" "LANG_OPT125_ENT_NUM_IS_INVALID"); %>");
       return false;
      }
      if (opt125_product_class.value != ""
        && !checkString(opt125_product_class.value)) {
       opt125_product_class.value = "";
       opt125_product_class.focus();
       alert("<% multilang("2347" "LANG_OPT125_PRODUCT_CLASS_IS_INVALID"); %>");
       return false;
      }
      if (opt125_model.value != "" && !checkString(opt125_model.value)) {
       opt125_model.value = "";
       opt125_model.focus();
       alert("<% multilang("2348" "LANG_OPT125_MODEL_IS_INVALID"); %>");
       return false;
      }
      if (opt125_serial.value != "" && !checkString(opt125_serial.value)) {
       opt125_serial.value = "";
       opt125_serial.focus();
       alert("<% multilang("2349" "LANG_OPT125_SERIAL_IS_INVALID"); %>");
       return false;
      }
      if (opt125_ent_num.value == ""
        || (opt125_manufacturer.value == ""
         && opt125_product_class.value == "" && opt125_model.value == ""
         && opt125_serial.value == "")) {
       alert("<% multilang("2350" "LANG_SHOULD_NOT_BE_EMPLTY"); %>");
       return false;
      }
      sbmtstr = sbmtstr + "&opt125_ent_num=" + opt125_ent_num.value;
      sbmtstr = sbmtstr + "&opt125_manufacturer=" + opt125_manufacturer.value;
      sbmtstr = sbmtstr + "&opt125_product_class=" + opt125_product_class.value;
      sbmtstr = sbmtstr + "&opt125_model=" + opt125_model.value;
      sbmtstr = sbmtstr + "&opt125_serial=" + opt125_serial.value;
     }
    }
    sbmtstr = sbmtstr + "&vlan1p=" + vlan1p.value;
    lst.value = sbmtstr;
    postTableEncrypt(document.forms[1].postSecurityFlag, document.forms[1]);
    submit();
   }
  }
  function protocolChange()
  {
   if (<% checkWrite("IPv6Show"); %>) {
    if (document.getElementById)
    {
     document.getElementById('ipprotbl').style.display = 'block';
    } else {
     if (document.layers == false)
     {
      document.all.ipprotbl.style.display = 'block';
     }
    }
   }
   if (document.forms[1].IpProtocolType.value == 1) {
    if (document.getElementById)
    {
     document.getElementById('ip4tbl').style.display = 'block';
     document.getElementById('ip6tbl').style.display = 'none';
    } else {
     if (document.layers == false)
     {
      document.all.ip4tbl.style.display = 'block';
      document.all.ip6tbl.style.display = 'none';
     }
    }
   }
   else if (document.forms[1].IpProtocolType.value == 2) {
    if (document.getElementById)
    {
     document.getElementById('ip4tbl').style.display = 'none';
     document.getElementById('ip6tbl').style.display = 'block';
    } else {
     if (document.layers == false)
     {
      document.all.ip4tbl.style.display = 'none';
      document.all.ip6tbl.style.display = 'block';
     }
    }
   }
  }
  function displayByType()
  {
   var qostype_select_type=rule["ipqos_rule_type"];
   var sizes = document.all.qos_rule_type;
   with (document.all) {
    port_base.style.display = "none";
    ip_proto_base.style.display = "none";
    mac_base.style.display = "none";
    ether_type_base.style.display = "none";
    dhcp_opt_base.style.display = "none";
    ipprotbl.style.display = 'none';
   }
   if(rule["ipqos_rule_type"]== "")
   {
    qostype_select_type=0
   }
    displayEach(qostype_select_type);
  }
  function displayEach(qostype_select_type)
  {
   document.all.port_base.style.display = "none";
   document.all.ip_proto_base.style.display = "none";
   document.all.mac_base.style.display = "none";
   document.all.ether_type_base.style.display = "none";
   document.all.dhcp_opt_base.style.display = "none";
   document.all.ipprotbl.style.display = 'none';
   if(typeof document.all.qos_rule_type[qostype_select_type] !== 'undefined')
    document.all.qos_rule_type[qostype_select_type].checked=true;
   if(qostype_select_type==0)
   {
    document.all.port_base.style.display = "block";
   }
   else if(qostype_select_type==1)
   {
    with (document.all) {
     ether_type_base.style.display = "block";
     if (typeof ethType != "undefined" && ethType.value == "0000")
      ethType.value = "";
    }
   }
   else if(qostype_select_type==2)
   {
    document.all.ip_proto_base.style.display = "block";
    protocolChange();
    update_ip_proto_base();
   }
   else if(qostype_select_type==3)
   {
    with (document.all) {
     mac_base.style.display = "block";
     if (typeof smac != "undefined" && smac.value=="00:00:00:00:00:00")
      smac.value="";
     if (typeof dmac != "undefined" && dmac.value=="00:00:00:00:00:00")
      dmac.value="";
    }
   }
   else if(qostype_select_type==4)
   {
    document.all.dhcp_opt_base.style.display = "block";
    dhcpopt_display_by_type();
   }
  }
  function ruleType_click()
  {
   var qostype_select_type=-1;
   var sizes = document.all.qos_rule_type;
   for (i=0; i < document.all.qos_rule_type.length; i++) {
    if (sizes[i].checked==true) {
     qostype_select_type = i;
     if (qostype_select_type == 2)
      document.forms[1].IpProtocolType.value = 1;
     break;
    }
   }
    displayEach(qostype_select_type);
  }
  function dhcpopt_display_by_type()
  {
   var select_type=rule["dhcpopt_type_select"];
   var sizes = document.all.qos_rule_type;
   document.all.dhcp_opt_base_opt60.style.display = "none";
   document.all.dhcp_opt_base_opt61.style.display = "none";
   document.all.dhcp_opt_base_opt125.style.display = "none";
   if(typeof select_type == "undefined" ||(rule["dhcpopt_type_select"]== ""))
   {
    select_type=0;
   }
   document.qosrule.dhcpopt_type[select_type].checked=true;
   dhcpopt_displayEach(select_type);
  }
  function dhcpopt_click()
  {
   var select_type=-1;
   var sizes = document.all.dhcpopt_type;
   for (i=0; i < document.all.dhcpopt_type.length; i++) {
    if (sizes[i].checked==true) {
     select_type = i;
    }
   }
   dhcpopt_displayEach(select_type);
  }
  function dhcpopt_displayEach(select_type)
  {
   document.all.dhcp_opt_base_opt60.style.display = "none";
   document.all.dhcp_opt_base_opt61.style.display = "none";
   document.all.dhcp_opt_base_opt125.style.display = "none";
   if(select_type==0)
   {
    document.all.dhcp_opt_base_opt60.style.display = "block";
   }
   else if(select_type==1)
   {
    document.all.dhcp_opt_base_opt61.style.display = "block";
   }
   else if(select_type==2)
   {
    document.all.dhcp_opt_base_opt125.style.display = "block";
    if(document.all.opt125_ent_num.value=="0")
     document.all.opt125_ent_num.value="";
   }
   update_ui();
  }
  function hide_by_class(str_class)
  {
   var elements = document.getElementsByClassName(str_class);
   for (var i = 0 ; i < elements.length ; i++)
    elements[i].style.display = 'none';
  }
  function clear_inputs(clear_select)
  {
   with(document.qosrule)
   {
    opt60_enable.checked = false;
    vendorclass.value = "";
    opt61_enable.checked = false;
    opt61_iaid.value = "";
    duid_type.selectedIndex = 0;
    duid_hw_type.value= "";
    duid_time.value= "";
    duid_mac.value = "";
    duid_ent_num.value = "";
    duid_ent_id.value = "";
    opt125_enable.checked = false;
    opt125_ent_num.value = "";
    opt125_manufacturer.value = "";
    opt125_product_class.value = "";
    opt125_model.value = "";
    opt125_serial.value = "";
   }
   update_ui();
  }
  function show_by_class(str_class)
  {
   var elements = document.getElementsByClassName(str_class);
   for (var i = 0 ; i < elements.length ; i++)
       elements[i].style.display = '';
  }
  function update_ui()
  {
   var select_type=-1;
   var sizes = document.all.dhcpopt_type;
   for (i=0; i < document.all.dhcpopt_type.length; i++) {
    if (sizes[i].checked==true) {
     select_type = i;
    }
   }
   if(select_type==1)
   {
    show_by_class('dhcp_opt_61');
    if(document.qosrule.duid_type.selectedIndex == 0)
    {
     hide_by_class('duid_ll');
     hide_by_class('duid_en');
     show_by_class('duid_llt');
    }
    else if(document.qosrule.duid_type.selectedIndex == 1)
    {
     hide_by_class('duid_ll');
     hide_by_class('duid_llt');
     show_by_class('duid_en');
    }
    else if(document.qosrule.duid_type.selectedIndex == 2)
    {
     hide_by_class('duid_llt');
     hide_by_class('duid_en');
     show_by_class('duid_ll');
    }
    else
    {
     document.qosrule.duid_type.selectedIndex == 0;
     hide_by_class('duid_ll');
     hide_by_class('duid_en');
     show_by_class('duid_llt');
    }
   }
   else
    hide_by_class('dhcp_opt_61');
  }
  </SCRIPT>
</HEAD>
<body onLoad="on_init();">
<div class="breadcrum_box"> <ul><li><a href="#">Net</a></li><li>QoS</li><li class="welcom" valign="bottom" align="middle" width="120">Welcome!</li><li valign="bottom"></li> </ul><div class="help_icon"> <a href="/cgi-bin/help_content.asp#UPNP Configuration" target="_blank"> <svg  id="help_icon_svg" xmlns="http://www.w3.org/2000/svg" width="38" height="38" viewBox="0 0 38 38"> <path id="help_Icon" data-name="help_Icon" class="cls-1" d="M18.746,0A19,19,0,1,0,38,18.744,19,19,0,0,0,18.746,0ZM18.69,30.565l-0.1,0a2.766,2.766,0,0,1,.065-5.531l0.094,0A2.766,2.766,0,1,1,18.69,30.565Zm6.8-13.49a12.558,12.558,0,0,1-2.268,2.031l-1.16.8a3.147,3.147,0,0,0-1.165,1.418,2.933,2.933,0,0,0-.18,1.19l0,0.186H16.286l0.013-.375c0.054-1.54.092-2.446,0.73-3.194a18.823,18.823,0,0,1,3.3-2.658,3.485,3.485,0,0,0,.782-0.8,2.816,2.816,0,0,0,.67-1.641,3.2,3.2,0,0,0-.608-1.89,2.531,2.531,0,0,0-2.19-.823,2.389,2.389,0,0,0-2.213,1.023,4.112,4.112,0,0,0-.67,2.21v0.189H11.539l0.008-.2c0.118-2.8,1.116-4.809,2.965-5.984a7.809,7.809,0,0,1,4.295-1.127,9.269,9.269,0,0,1,5.54,1.595A5.531,5.531,0,0,1,26.587,13.8,5.461,5.461,0,0,1,25.487,17.076Z"></path> </svg> </a> </div></div>
  <div class="list_header"> 
    <ul>
      <li><a href="/net_qos_imq_policy.asp">QoS Configuration</a></li>
      <li><a href="/net_qos_cls.asp" class="active" >QoS Classification</a></li>
      <li><a href="/net_qos_traffictl.asp">QoS Traffic Shaping</a></li>
    </ul>
  </div>
<div class="intro_main ">
<div style="
    display: flex;
    align-items: center;
    gap: 5px;
"><div><img src="/img/internet.png" style="width:34px;"></div>
<div style="padding-top:12px;"><p class="intro_title">QoS <% multilang("41" "LANG_CLASSIFICATION"); %></p></div></div>

 <p class="intro_content"> <% multilang("695" "LANG_PAGE_DESC_CLASSICY_QOS_RULE"); %><font color="red">(<% multilang("696" "LANG_PAGE_DESC_CLASSICY_QOS_RULE_EXTRA"); %>)</font></p>
</div>
<form id="form" action="/boaform/admin/formQosRule" method="post">
<div class="data_common data_common_notitle">
 <div class="data_common data_vertical">
  <table id="lstrc" border="1" width="100%" >
   <tr>
    <th colspan="2">&nbsp;</th>
    <th colspan="3" align="center"><% multilang("698" "LANG_MARK"); %></th>
    <th colspan="3"><% multilang("697" "LANG_CLASSIFICATION_RULES"); %></th>
    <th colspan="3" align="center">&nbsp;</th>
   </tr>
   <tr>
    <td><% multilang("699" "LANG_ID"); %></td>
    <td><% multilang("701" "LANG_NAME"); %></td>
    <td>Order</td>
    <!--<td><% multilang("124" "LANG_VLAN_ID"); %></td>-->
    <td>DSCP <% multilang("698" "LANG_MARK"); %></td>
    <td><% multilang("705" "LANG_802_1P"); %></td>
    <td> <% multilang("690" "LANG_QUEUE"); %></td>
    <td> <% multilang("706" "LANG_WANIF"); %></td>
    <td><% multilang("707" "LANG_RULE_DETAIL"); %></td>
    <td><% multilang("308" "LANG_DELETE"); %></td>
    <td><% multilang("703" "LANG_EDIT"); %></td>
    <td>&nbsp;</td>
   </tr>
  </table>
 </div>
</div>
<div class=btn_ctl>
 <input class=link_bg type="button" class="button" onClick="display_cls_edit()" value="<% multilang("221" "LANG_ADD"); %>">
 <input class=link_bg type="button" class="button" onClick="on_submit();" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>">
 <input type="hidden" id="lst" name="lst" value="">
 <input type="hidden" name="submit-url" value="/net_qos_cls.asp">
 <input type="hidden" name="postSecurityFlag" value="">
</div>
</form>

<div id="cls_edit" style="display: none;">
  <div class="intro_main ">
    <p class="intro_title"><% multilang("817" "LANG_ADD_QOS_CLASSIFICATION_RULES"); %></p>
    <p class="intro_content"> <% multilang("819" "LANG_THIS_PAGE_IS_USED_TO_ADD_A_IP_QOS_CLASSIFICATION_RULE"); %></p>
   </div>
   <form id="form" action="/boaform/admin/formQosRuleEdit" method="post" name="qosrule">
   <div class="data_common data_common_notitle">
    <table>
     <tr>
      <th><% multilang("820" "LANG_RULE"); %><% multilang("701" "LANG_NAME"); %>:</th>
      <td>
       <input type="text" id="name" size="22" style="width:200px ">
      </td>
     </tr>
     <tr>
      <th><% multilang("820" "LANG_RULE"); %>Order:</th>
      <td>
       <input type="text" id="qos_order" size="22" style="width:200px ">
      </td>
     </tr>
    </table>
   </div>
   <div class="column">
    <div class="column_title">
     <div class="column_title_left"></div>
      <p class="intro_title1"><% multilang("821" "LANG_ASSIGN"); %> IP <% multilang("657" "LANG_PRECEDENCE"); %>/DSCP/802.1p</p>
     <div class="column_title_right"></div>
    </div>
    <div class="data_common">
     <table>
      <tr><th><% multilang("657" "LANG_PRECEDENCE"); %>:</th><td><select id="prio" size="1"></select></td></tr>
      <tr><th>DSCP:</th><td><select id="mdscp" size="1"></select></td></tr>
      <tr><th>802.1p:</th><td><select id="m1p" size="1"></select></td></tr>
     </table>
    </div>
   </div>
   <div class="column">
    <div class="column_title">
     <div class="column_title_left"></div>
      <p class="intro_title1"><% multilang("661" "LANG_SPECIFY_TRAFFIC_CLASSIFICATION_RULES"); %></p>
     <div class="column_title_right"></div>
    </div>
    <div class="data_common">
     <table>
      <tr>
       <th><% multilang("700" "LANG_IP_QOS_RULE"); %>:</th>
       <td><input type="radio" name=qos_rule_type value=0 onClick=ruleType_click();><% multilang("213" "LANG_PORT"); %></td>
       <td><input type="radio" name=qos_rule_type value=1 onClick=ruleType_click();><% multilang("1182" "LANG_ETHERY_TYPE"); %></td>
       <td><input type="radio" name=qos_rule_type value=2 onClick=ruleType_click();><% multilang("1183" "LANG_IP_PROTOCOL"); %></td>
       <td><input type="radio" name=qos_rule_type value=3 onClick=ruleType_click();><% multilang("92" "LANG_MAC_ADDRESS"); %></td>
       <% ipqos_dhcpopt(); %>
      </tr>
     </table>
    </div>
    <div class="data_common data_common_notitle" id='wan_interface' style="display:<% check_display("wan_interface"); %>;">
     <table>
      <tr>
       <th width="30%"><% multilang("11" "LANG_WAN"); %>:</th>
       <td width="70%">
        <select id="outif" size="1" onChange="onchange_sel1();"><% if_wan_list("queueITF"); %></select>
       </td>
      </tr>
     </table>
    </div>
    <div class="data_common data_common_notitle" id="port_base" style="display:none;">
     <table>
      <tr >
       <th width="30%"><% multilang("664" "LANG_PHYSICAL_PORT"); %>:</th>
       <td width="70%">
        <select id="phypt" size="1" onChange="onchange_sel1();"></select>
       </td>
      </tr>
     </table>
    </div>
    <div class="data_common data_common_notitle" id='ipprotbl' style="display:none">
     <table>
      <tr>
       <th width="30%">IP <% multilang("704" "LANG_VERSION"); %>:</th>
       <td width="70%">
        <select id="IpProtocolType" size="1" onChange="protocolChange()" name="IpProtocolType"></select>
       </td>
      </tr>
     </table>
    </div>
    <div class="data_common data_common_notitle" id="ip_proto_base" style="display:none;">
     <table>
      <tr>
       <th width="30%"><% multilang("95" "LANG_PROTOCOL"); %>:</th>
       <td width="70%">
        <select id="proto" size="1" onChange="onChange_proto();"></select>
       </td>
      </tr>
      <tr>
       <th width="30%">DSCP:</th>
       <td width="70%">
        <select id="dscp" size="1" onChange="onchange_sel1();"></select>
       </td>
      </tr>
     </table>
     <div id='ip4tbl' style="display:block;">
      <table>
       <tr>
        <th width="30%"><% multilang("389" "LANG_SOURCE"); %> IP: </th>
        <td width="70%">
         <input type="text" id="sip" size="15" maxlength="15" style="width:200px " onChange="onchange_sel1();">
        </td>
       </tr>
       <tr>
        <th width="30%"><% multilang("662" "LANG_SOURCE_MASK"); %>: </th>
        <td width="70%">
         <input type="text" id="smsk" size="15" maxlength="15" style="width:200px " onChange="onchange_sel1();">
        </td>
       </tr>
       <tr>
        <th width="30%"><% multilang("390" "LANG_DESTINATION"); %> IP: </th>
        <td width="70%">
         <input type="text" id="dip" size="15" maxlength="15" style="width:200px " onChange="onchange_sel1();">
        </td>
       </tr>
       <tr>
        <th width="30%"><% multilang("663" "LANG_DESTINATION_MASK"); %>: </th>
        <td width="70%">
         <input type="text" id="dmsk" size="15" maxlength="15" style="width:200px " onChange="onchange_sel1();">
        </td>
       </tr>
      </table>
     </div>
     <div id='ip6tbl' style="display:none">
      <table>
       <tr>
        <th width="30%"><% multilang("389" "LANG_SOURCE"); %> IP: </th>
        <td width="70%"><input type="text" id="sip6" size="36" maxlength="39" style="width:200px " onChange="onchange_sel1();"></td>
       </tr>
       <tr>
        <th width="30%"><% multilang("804" "LANG_SOURCE_PREFIX_LENGTH"); %>: ></th>
        <td width="70%"><input type="text" id="sip6PrefixLen" size="15" maxlength="15" style="width:200px " onChange="onchange_sel1();"></td>
       </tr>
       <tr>
        <th width="30%"><% multilang("390" "LANG_DESTINATION"); %> IP: </th>
        <td width="70%"><input type="text" id="dip6" size="36" maxlength="39" style="width:200px " onChange="onchange_sel1();"></td>
       </tr>
       <tr>
        <th width="30%"><% multilang("805" "LANG_DESTINATION_PREFIX_LENGTH"); %>: </th>
        <td width="70%"><input type="text" id="dip6PrefixLen" size="15" maxlength="15" style="width:200px " onChange="onchange_sel1();"></td>
       </tr>
      </table>
     </div>
     <table>
      <tr>
       <th width="30%"><% multilang("392" "LANG_SOURCE_PORT"); %>: </th>
       <td width="70%">
        <input type="text" id="spts" size="5" maxlength="5" style="width:97px" onChange="onchange_sel1();">:
        <input type="text" id="spte" size="5" maxlength="5" style="width:97px" onChange="onchange_sel1();">
       </td>
      </tr>
      <tr>
       <th width="30%"><% multilang("393" "LANG_DESTINATION_PORT"); %>: </th>
       <td width="70%">
        <input type="text" id="dpts" size="5" maxlength="5" style="width:97px" onChange="onchange_sel1();">:
        <input type="text" id="dpte" size="5" maxlength="5" style="width:97px" onChange="onchange_sel1();">
       </td>
      </tr>
     </table>
    </div>
    <div class="data_common data_common_notitle" id="mac_base" style="display:none;">
     <table>
      <tr>
       <th width="30%"><% multilang("389" "LANG_SOURCE"); %> MAC:</th>
       <td width="70%"><input type="text" id="smac" size="17" maxlength="17" style="width:200px " onChange="onchange_sel1();"></td>
      </tr>
      <tr>
       <th width="30%"><% multilang("390" "LANG_DESTINATION"); %> MAC:</th>
       <td width="70%"><input type="text" id="dmac" size="17" maxlength="17" style="width:200px " onChange="onchange_sel1();"></td>
      </tr>
     </table>
    </div>
    <div class="data_common data_common_notitle" id="ether_type_base" style="display:none;">
     <table>
      <tr>
       <th width="30%">Ethernet Type:</th>
       <td width="70%"><b>0x</b><input type="text" id="ethType" size="5" maxlength="5" style="width:97px" onChange="onchange_sel3();"></td>
      </tr>
     </table>
    </div>
    <div class="data_common data_common_notitle" id="dhcp_opt_base" style="display:none;">
     <table>
      <tr>
       <th><% multilang("1184" "LANG_DHCP_OPTIONS"); %>: </th>
       <td width="160px"><><input type="radio" name=dhcpopt_type value=0 onClick=dhcpopt_click();><% multilang("1185" "LANG_OPTION_60"); %></td>
       <td width="160px"><><input type="radio" name=dhcpopt_type value=1 onClick=dhcpopt_click();><% multilang("1186" "LANG_OPTION_61"); %></td>
       <td width="160px"><><input type="radio" name=dhcpopt_type value=2 onClick=dhcpopt_click();><% multilang("1187" "LANG_OPTION_125"); %></td>
      </tr>
      <div id="dhcp_opt_base_opt60" style="display:none;">
       <tr>
           <td><% multilang("1185" "LANG_OPTION_60"); %>:</td>
       </tr>
       <tr>
           <td><% multilang("1012" "LANG_VALUE"); %>:</td>
         <td><input type="text" name="vendorclass" size="32" maxlength="100" value="<% ipqos_dhcpopt_getoption60(); %>"></td>
       </tr>
      </div>
      <div id="dhcp_opt_base_opt61" style="display:none;">
       <td ><% multilang("1188" "LANG_DHCP_OPTIONS_61"); %>:</td>
       <tr >
        <td><% multilang("1121" "LANG_IAID"); %>:</td>
        <td><input type="text" name="opt61_iaid" size="20" maxlength="10"></td>
       </tr>
       <tr >
        <td><% multilang("1189" "LANG_DUID_TYPE"); %>:</td>
        <td><select size="1" name="duid_type" onChange="update_ui()">
         <option selected value=1><% multilang("1190" "LANG_DUID_LLT"); %></option>
         <option value=2><% multilang("1191" "LANG_DUID_EN"); %></option>
         <option value=3><% multilang("1192" "LANG_DUID_LL"); %></option>
        </td>
       </tr>
       <tr >
        <td><% multilang("1193" "LANG_HARDWARE_TYPE"); %>:</td>
        <td><input type="text" name="duid_hw_type" size="20" maxlength="10"></td>
       </tr>
       <tr >
        <td><% multilang("78" "LANG_TIME"); %>:</td>
        <td><input type="text" name="duid_time" size="20" maxlength="20"></td>
       </tr>
       <tr >
        <td><% multilang("1127" "LANG_LINKLAYER_ADDRESS"); %>:</td>
        <td><input type="text" name="duid_mac" size="20" maxlength="20">(xx:xx:xx:xx:xx:xx)</td>
       </tr>
       <tr >
        <td><% multilang("1125" "LANG_ENTERPRISE_NUMBER"); %>:</td>
        <td><input type="text" name="duid_ent_num" size="20" maxlength="10"></td>
       </tr>
       <tr >
        <td><% multilang("1126" "LANG_IDENTIFIER"); %>:</td>
           <td><input type="text" name="duid_ent_id" size="20" maxlength="32"></td>
       </tr>
      </div>
      <div id="dhcp_opt_base_opt125" style="display:none;">
       <tr>
           <td ><% multilang("1194" "LANG_DHCP_OPTIONS_125"); %>:</td>
       </tr>
       <tr >
           <td><% multilang("1125" "LANG_ENTERPRISE_NUMBER"); %>:</td>
           <td><input type="text" name="opt125_ent_num" size="20" maxlength="10"></td>
       </tr>
       <tr >
           <td><% multilang("1129" "LANG_MANUFACTURER_OUI"); %>:</td>
           <td><input type="text" name="opt125_manufacturer" size="20" maxlength="32"></td>
       </tr>
       <tr >
           <td><% multilang("1130" "LANG_PRODUCT_CLASS"); %>:</td>
           <td><input type="text" name="opt125_product_class" size="20" maxlength="32"></td>
       </tr>
       <tr >
           <td><% multilang("1131" "LANG_MODEL_NAME"); %>:</td>
           <td><input type="text" name="opt125_model" size="20" maxlength="32"></td>
       </tr>
       <tr >
           <td><% multilang("542" "LANG_SERIAL_NUMBER"); %>:</td>
           <td><input type="text" name="opt125_serial" size="20" maxlength="32"></td>
       </tr>
      </div>
     </table>
    </div>
    <div class="data_common data_common_notitle" id="configuration_2" style="display:none;">
     <table>
      <tr>
       <th><% multilang("238" "LANG_CONFIGURATION"); %> - 2</th>
      </tr>
      <tr>
       <th>802.1p:</th>
       <td>
        <select id="vlan1p" size="1" onChange="onchange_sel2();"></select>
       </td>
      </tr>
     </table>
    </div>
   </div>
   <div class="btn_ctl">
    <input class="link_bg" type="button" class="button" onClick="on_submit1();" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>">
    <input type="hidden" name="submit-url" value="/net_qos_cls.asp">
    <input type="hidden" name="lst" value="">
    <input type="hidden" name="index" value="0">
    <input type="hidden" name="postSecurityFlag" value="">
   </div>
   </form>
</div>
<script>
  const cls_edit = document.getElementById('cls_edit');
  function display_cls_edit() {
        cls_edit.style.display = 'block';
    
  }
</script>
</body>
</html>
