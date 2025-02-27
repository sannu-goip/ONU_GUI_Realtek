
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

<TITLE>Add QoS Classification Rules</TITLE>
<style>
SELECT {width:200px;}
</style>
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
var ipversions = new Array("Please select IP version", "IPv4", "IPv6");
quekeys.add(new it("", ""));
quekeys.add(new it("1", "Queue 1"));
quekeys.add(new it("2", "Queue 2"));
quekeys.add(new it("3", "Queue 3"));
quekeys.add(new it("4", "Queue 4"));

iffs.add(new it(0, ""));
iffs.add(new it(1, "LAN_1"));
iffs.add(new it(2, "LAN_2"));
iffs.add(new it(3, "LAN_3"));
iffs.add(new it(4, "LAN_4"));

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
 with (document.forms[0]) {
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
function on_init()
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
function on_submit()
{
 with (document.forms[0]) {
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
   alert("Please select a Rule Type!");
   return false;
  }
  if (!checkstr(name.value)) {
   name.value = "";
   name.focus();
   alert("Rule Name is invalid!");
   return false;
  }
  if (qos_order.value != "" && (qos_order.value < 1)) {
   qos_order.value = "";
   qos_order.focus();
   alert("Order is invalid!");
   return false;
  }
  if (prio.value == "") {
  prio.focus();
   alert("Please assign used Queue!");
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
    alert("Need to specify one parameter at least!");
    return false;
   }
   sbmtstr = sbmtstr + "&phyport=" + phypt.value;
  } else if (qostype_select_type == 1) {
   if (ethType.value == "") {
    ethType.focus();
    alert("Need to specify one parameter at least!");
    return false;
   }
   if (ethType.value != 0
       && (ethType.value.length < 4
    || ethType.value.length > 4
    || ethType.value < "0800")) {
    ethType.focus();
    alert("Invalid Ethernet Type!");
    return false;
   }
   sbmtstr = sbmtstr + "&ethType=" + ethType.value;
  } else if (qostype_select_type == 2) {
   if (proto.value == 0 && sip.value == "" && dip.value == ""
    && sip6.value == "" && dip6.value == "" && spts.value == "" && dpts.value == "") {
    alert("Need to specify one parameter at least!");
    return false;
   }
   sbmtstr = sbmtstr + "&proto=" + proto.value;
   sbmtstr = sbmtstr + "&matchdscp=" + dscp.value;
   sbmtstr = sbmtstr + "&IPversion=" + IpProtocolType.value;
   if (IpProtocolType.value == 1) {
    if (sip.value != "" && !sji_checkip(sip.value)) {
     sip.value = "";
     sip.focus();
     alert("Src IP is invalid!");
     return false;
    }
    if (smsk.value != "" && !sji_checkmask(smsk.value)) {
     smsk.value = "";
     smsk.focus();
     alert("Src Mask is invalid!");
     return false;
    }
    if (dip.value != "" && !sji_checkip(dip.value)) {
     dip.value = "";
     dip.focus();
     alert("Dst IP is invalid!");
     return false;
    }
    if (dmsk.value != "" && !sji_checkmask(dmsk.value)) {
     dmsk.value = "";
     dmsk.focus();
     alert("Dst Mask is invalid!");
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
      alert("Invalid Source IPv6 address!");
      return false;
     }
     if (sip6PrefixLen.value != "") {
      var prefixlen = getDigit(sip6PrefixLen.value, 1);
      if (prefixlen > 128 || prefixlen < 0) {
       sip6PrefixLen.value = "";
       sip6PrefixLen.focus();
       alert("Invalid Source IPv6 prefix length!");
       return false;
      }
     }
    }
    if (dip6.value != "") {
     if (!isIpv6Address(dip6.value)) {
      dip6.value = "";
      dip6.focus();
      alert("Invalid Destination IPv6 address!");
      return false;
     }
     if (dip6PrefixLen.value != "") {
      var prefixlen = getDigit(dip6PrefixLen.value, 1);
      if (prefixlen > 128 || prefixlen < 0) {
       dip6PrefixLen.value = "";
       dip6PrefixLen.focus();
       alert("Invalid destination IPv6 prefix length!");
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
     alert("Protocol is not TCP/UDP, can not specify port!");
     return false;
    }
   }
   if ((spts.value != "")
       && (spts.value <= 0 || spts.value > 65535)) {
    spts.value = "";
    spts.focus();
    alert("Invalid Src Start Port!");
    return false;
   }
   if ((spte.value != "")
       && (spte.value <= 0 || spte.value > 65535)) {
    spte.value = "";
    spte.focus();
    alert("Invalid Src End Port!;");
    return false;
   }
   if ((dpts.value != "")
       && (dpts.value <= 0 || dpts.value > 65535)) {
    dpts.value = "";
    dpts.focus();
    alert("Invalid Dst Start Port!");
    return false;
   }
   if ((dpte.value != "")
       && (dpte.value <= 0 || dpte.value > 65535)) {
    dpte.value = "";
    dpte.focus();
    alert("Invalid Dst End Port!");
    return false;
   }
   sbmtstr = sbmtstr + "&spts=" + spts.value;
   sbmtstr = sbmtstr + "&spte=" + spte.value;
   sbmtstr = sbmtstr + "&dpts=" + dpts.value;
   sbmtstr = sbmtstr + "&dpte=" + dpte.value;
  } else if (qostype_select_type == 3) {
   if (smac.value == "" && dmac.value == "") {
    alert("Need to specify one parameter at least!");
    return false;
   }
   if (smac.value != "" && !sji_checkmac2(smac.value)) {
    smac.value = "";
    smac.focus();
    alert("Invalid Src MAC!");
    return false;
   }
   if (dmac.value != "" && !sji_checkmac2(dmac.value)) {
    dmac.value = "";
    dmac.focus();
    alert("Invalid Dst MAC!");
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
     alert("vendorclass should not be empty!");
     return false;
    }
    if (!checkString(vendorclass.value)) {
     vendorclass.value = "";
     vendorclass.focus();
     alert("vendorclass is invalid!");
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
     alert("opt61_iaid is invalid!");
     return false;
    }
    if (select_duid_type == 0) {
     duid_ent_num.value = "";
     duid_ent_id.value = "";
     if (duid_hw_type.value != "" && !checkDigit(duid_hw_type.value)) {
      duid_hw_type.value = "";
      duid_hw_type.focus();
      alert("duid_hw_type is invalid!");
      return false;
     }
     if (duid_time.value != "" && !checkDigit(duid_time.value)) {
      duid_time.value = "";
      duid_time.focus();
      alert("duid_time is invalid!");
      return false;
     }
     if (duid_mac.value != "" && !sji_checkmac2(duid_mac.value)) {
      duid_mac.value = "";
      duid_mac.focus();
      alert("duid_mac is invalid!");
      return false;
     }
     if (opt61_iaid.value == "" || duid_hw_type.value == ""
       || duid_time.value == "" || duid_mac.value == "") {
      alert("Need to fill value!!");
      return false;
     }
    } else if (select_duid_type == 1) {
     duid_hw_type.value = "";
     duid_time.value = "";
     duid_mac.value = "";
     if (duid_ent_num.value != "" && !checkDigit(duid_ent_num.value)) {
      duid_ent_num.value = "";
      duid_ent_num.focus();
      alert("duid_ent_num is invalid!");
      return false;
     }
     if (duid_ent_id.value != "" && !checkString(duid_ent_id.value)) {
      duid_ent_id.value = "";
      duid_ent_id.focus();
      alert("duid_ent_id is invalid!");
      return false;
     }
     if (opt61_iaid.value == "" || duid_ent_num.value == ""
       || duid_ent_id.value == "") {
      alert("Need to fill value!!");
      return false;
     }
    } else if (select_duid_type == 2) {
     duid_ent_num.value = "";
     duid_ent_id.value = "";
     duid_time.value = "";
     if (duid_hw_type.value != "" && !checkDigit(duid_hw_type.value)) {
      duid_hw_type.value = "";
      duid_hw_type.focus();
      alert("duid_hw_type is invalid!");
      return false;
     }
     if (duid_mac.value != "" && !checkMac(duid_mac.value)) {
      duid_mac.value = "";
      duid_mac.focus();
      alert("duid_mac is invalid!");
      return false;
     }
     if (opt61_iaid.value == "" || duid_hw_type.value == ""
       || duid_mac.value == "") {
      alert("Need to fill value!!");
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
     alert("opt125_ent_num is invalid!");
     return false;
    }
    if (opt125_manufacturer.value != ""
      && !checkString(opt125_manufacturer.value)) {
     opt125_manufacturer.value = "";
     opt125_manufacturer.focus();
     alert("opt125_ent_num is invalid!");
     return false;
    }
    if (opt125_product_class.value != ""
      && !checkString(opt125_product_class.value)) {
     opt125_product_class.value = "";
     opt125_product_class.focus();
     alert("opt125_product_class is invalid!");
     return false;
    }
    if (opt125_model.value != "" && !checkString(opt125_model.value)) {
     opt125_model.value = "";
     opt125_model.focus();
     alert("opt125_model is invalid!");
     return false;
    }
    if (opt125_serial.value != "" && !checkString(opt125_serial.value)) {
     opt125_serial.value = "";
     opt125_serial.focus();
     alert("opt125_serial is invalid!");
     return false;
    }
    if (opt125_ent_num.value == ""
      || (opt125_manufacturer.value == ""
       && opt125_product_class.value == "" && opt125_model.value == ""
       && opt125_serial.value == "")) {
     alert("Should not be emplty");
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
  postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
  submit();
 }
}
function protocolChange()
{
 if (1) {
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
 if (document.forms[0].IpProtocolType.value == 1) {
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
 else if (document.forms[0].IpProtocolType.value == 2) {
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
    document.forms[0].IpProtocolType.value = 1;
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
<div class="intro_main ">
 <p class="intro_title">Add QoS Classification Rules</p>
 <p class="intro_content"> This page is used to add a IP QoS classification rule.</p>
</div>
<form id="form" action="/boaform/admin/formQosRuleEdit" method="post" name="qosrule">
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th>RuleName:</th>
   <td>
    <input type="text" id="name" size="22" style="width:200px ">
   </td>
  </tr>
  <tr>
   <th>RuleOrder:</th>
   <td>
    <input type="text" id="qos_order" size="22" style="width:200px ">
   </td>
  </tr>
 </table>
</div>
<div class="column">
 <div class="column_title">
  <div class="column_title_left"></div>
   <p>Assign IP Precedence/DSCP/802.1p</p>
  <div class="column_title_right"></div>
 </div>
 <div class="data_common">
  <table>
   <tr><th>Precedence:</th><td><select id="prio" size="1"></select></td></tr>
   <tr><th>DSCP:</th><td><select id="mdscp" size="1"></select></td></tr>
   <tr><th>802.1p:</th><td><select id="m1p" size="1"></select></td></tr>
  </table>
 </div>
</div>
<div class="column">
 <div class="column_title">
  <div class="column_title_left"></div>
   <p>Specify Traffic Classification Rules</p>
  <div class="column_title_right"></div>
 </div>
 <div class="data_common">
  <table>
   <tr>
    <th>IP QoS Rule by type:</th>
    <td><input type="radio" name=qos_rule_type value=0 onClick=ruleType_click();>Port</td>
    <td><input type="radio" name=qos_rule_type value=1 onClick=ruleType_click();>Ethery Type</td>
    <td><input type="radio" name=qos_rule_type value=2 onClick=ruleType_click();>IP/Protocol</td>
    <td><input type="radio" name=qos_rule_type value=3 onClick=ruleType_click();>MAC Address</td>
    
   </tr>
  </table>
 </div>
 <div class="data_common data_common_notitle" id='wan_interface' style="display:none;">
  <table>
   <tr>
    <th width="30%">WAN:</th>
    <td width="70%">
     <select id="outif" size="1" onChange="onchange_sel1();"><option value=65535>Any</option>
</select>
    </td>
   </tr>
  </table>
 </div>
 <div class="data_common data_common_notitle" id="port_base" style="display:none;">
  <table>
   <tr >
    <th width="30%">Physical Port:</th>
    <td width="70%">
     <select id="phypt" size="1" onChange="onchange_sel1();"></select>
    </td>
   </tr>
  </table>
 </div>
 <div class="data_common data_common_notitle" id='ipprotbl' style="display:none">
  <table>
   <tr>
    <th width="30%">IP Version:</th>
    <td width="70%">
     <select id="IpProtocolType" size="1" onChange="protocolChange()" name="IpProtocolType"></select>
    </td>
   </tr>
  </table>
 </div>
 <div class="data_common data_common_notitle" id="ip_proto_base" style="display:none;">
  <table>
   <tr>
    <th width="30%">Protocol:</th>
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
     <th width="30%">Source IP: </th>
     <td width="70%">
      <input type="text" id="sip" size="15" maxlength="15" style="width:200px " onChange="onchange_sel1();">
     </td>
    </tr>
    <tr>
     <th width="30%">Source Mask: </th>
     <td width="70%">
      <input type="text" id="smsk" size="15" maxlength="15" style="width:200px " onChange="onchange_sel1();">
     </td>
    </tr>
    <tr>
     <th width="30%">Destination IP: </th>
     <td width="70%">
      <input type="text" id="dip" size="15" maxlength="15" style="width:200px " onChange="onchange_sel1();">
     </td>
    </tr>
    <tr>
     <th width="30%">Destination Mask: </th>
     <td width="70%">
      <input type="text" id="dmsk" size="15" maxlength="15" style="width:200px " onChange="onchange_sel1();">
     </td>
    </tr>
   </table>
  </div>
  <div id='ip6tbl' style="display:none">
   <table>
    <tr>
     <th width="30%">Source IP: </th>
     <td width="70%"><input type="text" id="sip6" size="36" maxlength="39" style="width:200px " onChange="onchange_sel1();"></td>
    </tr>
    <tr>
     <th width="30%">Source Prefix Length: ></th>
     <td width="70%"><input type="text" id="sip6PrefixLen" size="15" maxlength="15" style="width:200px " onChange="onchange_sel1();"></td>
    </tr>
    <tr>
     <th width="30%">Destination IP: </th>
     <td width="70%"><input type="text" id="dip6" size="36" maxlength="39" style="width:200px " onChange="onchange_sel1();"></td>
    </tr>
    <tr>
     <th width="30%">Destination Prefix Length: </th>
     <td width="70%"><input type="text" id="dip6PrefixLen" size="15" maxlength="15" style="width:200px " onChange="onchange_sel1();"></td>
    </tr>
   </table>
  </div>
  <table>
   <tr>
    <th width="30%">Source Port: </th>
    <td width="70%">
     <input type="text" id="spts" size="5" maxlength="5" style="width:97px" onChange="onchange_sel1();">:
     <input type="text" id="spte" size="5" maxlength="5" style="width:97px" onChange="onchange_sel1();">
    </td>
   </tr>
   <tr>
    <th width="30%">Destination Port: </th>
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
    <th width="30%">Source MAC:</th>
    <td width="70%"><input type="text" id="smac" size="17" maxlength="17" style="width:200px " onChange="onchange_sel1();"></td>
   </tr>
   <tr>
    <th width="30%">Destination MAC:</th>
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
    <th>DHCP Options: </th>
    <td width="160px"><><input type="radio" name=dhcpopt_type value=0 onClick=dhcpopt_click();>Option 60</td>
    <td width="160px"><><input type="radio" name=dhcpopt_type value=1 onClick=dhcpopt_click();>Option 61</td>
    <td width="160px"><><input type="radio" name=dhcpopt_type value=2 onClick=dhcpopt_click();>Option 125</td>
   </tr>
   <div id="dhcp_opt_base_opt60" style="display:none;">
    <tr>
        <td>Option 60:</td>
    </tr>
    <tr>
        <td>Value:</td>
      <td><input type="text" name="vendorclass" size="32" maxlength="100" value=""></td>
    </tr>
   </div>
   <div id="dhcp_opt_base_opt61" style="display:none;">
    <td >DHCP Option 61:</td>
    <tr >
     <td>IAID:</td>
     <td><input type="text" name="opt61_iaid" size="20" maxlength="10"></td>
    </tr>
    <tr >
     <td>DUID Type:</td>
     <td><select size="1" name="duid_type" onChange="update_ui()">
      <option selected value=1>DUID-LLT</option>
      <option value=2>DUID-EN</option>
      <option value=3>DUID-LL</option>
     </td>
    </tr>
    <tr >
     <td>Hardware Type:</td>
     <td><input type="text" name="duid_hw_type" size="20" maxlength="10"></td>
    </tr>
    <tr >
     <td>Time:</td>
     <td><input type="text" name="duid_time" size="20" maxlength="20"></td>
    </tr>
    <tr >
     <td>Link-Layer address:</td>
     <td><input type="text" name="duid_mac" size="20" maxlength="20">(xx:xx:xx:xx:xx:xx)</td>
    </tr>
    <tr >
     <td>Enterprise Number:</td>
     <td><input type="text" name="duid_ent_num" size="20" maxlength="10"></td>
    </tr>
    <tr >
     <td>Identifier:</td>
        <td><input type="text" name="duid_ent_id" size="20" maxlength="32"></td>
    </tr>
   </div>
   <div id="dhcp_opt_base_opt125" style="display:none;">
    <tr>
        <td >DHCP Option 125:</td>
    </tr>
    <tr >
        <td>Enterprise Number:</td>
        <td><input type="text" name="opt125_ent_num" size="20" maxlength="10"></td>
    </tr>
    <tr >
        <td>Manufacturer OUI:</td>
        <td><input type="text" name="opt125_manufacturer" size="20" maxlength="32"></td>
    </tr>
    <tr >
        <td>Product Class:</td>
        <td><input type="text" name="opt125_product_class" size="20" maxlength="32"></td>
    </tr>
    <tr >
        <td>Model Name:</td>
        <td><input type="text" name="opt125_model" size="20" maxlength="32"></td>
    </tr>
    <tr >
        <td>Serial Number:</td>
        <td><input type="text" name="opt125_serial" size="20" maxlength="32"></td>
    </tr>
   </div>
  </table>
 </div>
 <div class="data_common data_common_notitle" id="configuration_2" style="display:none;">
  <table>
   <tr>
    <th>Configuration - 2</th>
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
 <input class="link_bg" type="button" class="button" onClick="on_submit();" value="Apply Changes">
 <input type="hidden" name="submit-url" value="/net_qos_cls.asp">
 <input type="hidden" name="lst" value="">
 <input type="hidden" name="index" value="0">
 <input type="hidden" name="postSecurityFlag" value="">
</div>
</form>
</body>
</html>
