<%SendWebHeadStr(); %>
<title><% multilang("20" "LANG_PORT_FORWARDING"); %></title>
<style>
input[type="text"], input[type="password"], select{
 margin-left: 0;
}
.size_inpt input{
 width: 75px;
 height: 17px;
 font-size: 10px;
 padding: 0px;
}
.size_inpt select{
 height: 17px;
 font-size: 10px;
 padding: 0px;
}
.size_inpt table td {
    padding: 1px 6px;
}
</style>
<script>
function skip () { this.blur(); }
function addClick(obj)
{
 var mutli_comment = document.formPortFwAdd.elements["comment[]"];
 var mutli_localIPAddr = document.formPortFwAdd.elements["localIPaddr[]"];
 var mutli_localFromPort = document.formPortFwAdd.elements["localFromPort[]"];
 var mutli_localToPort = document.formPortFwAdd.elements["localToPort[]"];
 var mutli_protocol = document.formPortFwAdd.elements["protocol[]"];
 var mutli_remoteIPAddr = document.formPortFwAdd.elements["remoteIPaddr[]"];
 var mutli_remoteFromPort = document.formPortFwAdd.elements["remoteFromPort[]"];
 var mutli_remoteToPort = document.formPortFwAdd.elements["remoteToPort[]"];
 var mutli_interface = document.formPortFwAdd.elements["interface[]"];
 if (document.formPortFwAdd.portFwcap[0].checked){
  obj.isclick = 1;
  postTableEncrypt(document.formPortFwAdd.postSecurityFlag, document.formPortFwAdd);
  return true;
 }
    if (mutli_localIPAddr[0].value=="" && mutli_localFromPort[0].value=="" &&
      mutli_localToPort[0].value=="" && mutli_comment[0].value=="" ) {
     alert('<% multilang("2244" "LANG_LOCAL_SETTINGS_CANNOT_BE_EMPTY"); %>');
   return false;
 }
 for(var i=0;i<mutli_localFromPort.length;i++)
 {
  if (mutli_comment[i].value=="")
   continue;
  if (mutli_localIPAddr[i].value!="")
  {
   if (!checkHostIP(mutli_localIPAddr[i], 1))
   {
    alert('<% multilang("2245" "LANG_INVALID_LOCAL_IP_ADDRESS"); %>');
    mutli_localIPAddr[i].focus();
    return false;
   }
  }
  if ( mutli_remoteIPAddr[i].value!="" ) {
   if (!checkHostIP(mutli_remoteIPAddr[i], 0))
            {
    alert('<% multilang("2246" "LANG_INVALID_REMOTE_IP_ADDRESS"); %>');
    mutli_remoteIPAddr[i].focus();
    return false;
            }
  }
        console.debug("multi_localFromPort "+mutli_localFromPort[i].value);
  if (mutli_localFromPort[i].value!="") {
   if ( validateKey( mutli_localFromPort[i].value ) == 0 ) {
    alert('<% multilang("2247" "LANG_INVALID_PORT_NUMBER_IT_SHOULD_BE_THE_DECIMAL_NUMBER_0_9"); %>');
    mutli_localFromPort[i].focus();
    return false;
   }
   d2 = getDigit(mutli_localFromPort[i].value, 1);
   if (d2 > 65535 || d2 < 1) {
    alert('<% multilang("2248" "LANG_INVALID_PORT_NUMBER_YOU_SHOULD_SET_A_VALUE_BETWEEN_1_65535"); %>');
    mutli_localFromPort[i].focus();
    return false;
   }
  }
        console.debug("multi_remoteFromPort "+mutli_remoteFromPort[i].value);
  if (mutli_remoteFromPort[i].value!="") {
   if ( validateKey( mutli_remoteFromPort[i].value ) == 0 ) {
    alert('<% multilang("2247" "LANG_INVALID_PORT_NUMBER_IT_SHOULD_BE_THE_DECIMAL_NUMBER_0_9"); %>');
    mutli_remoteFromPort[i].focus();
    return false;
   }
   d2 = getDigit(mutli_remoteFromPort[i].value, 1);
   if (d2 > 65535 || d2 < 1) {
    alert('<% multilang("2248" "LANG_INVALID_PORT_NUMBER_YOU_SHOULD_SET_A_VALUE_BETWEEN_1_65535"); %>');
    mutli_remoteFromPort[i].focus();
    return false;
   }
  }
  if (mutli_localToPort[i].value!="") {
   if ( validateKey( mutli_localToPort[i].value ) == 0 ) {
    alert('<% multilang("2247" "LANG_INVALID_PORT_NUMBER_IT_SHOULD_BE_THE_DECIMAL_NUMBER_0_9"); %>');
    mutli_localToPort[i].focus();
    return false;
   }
   d2 = getDigit(mutli_localToPort[i].value, 1);
   if (d2 > 65535 || d2 < 1) {
    alert('<% multilang("2248" "LANG_INVALID_PORT_NUMBER_YOU_SHOULD_SET_A_VALUE_BETWEEN_1_65535"); %>');
    mutli_localToPort[i].focus();
    return false;
   }
  }
  if (mutli_remoteToPort[i].value!="") {
   if ( validateKey( mutli_remoteToPort[i].value ) == 0 ) {
    alert('<% multilang("2247" "LANG_INVALID_PORT_NUMBER_IT_SHOULD_BE_THE_DECIMAL_NUMBER_0_9"); %>');
    mutli_remoteToPort[i].focus();
    return false;
   }
   d2 = getDigit(mutli_remoteToPort[i].value, 1);
   if (d2 > 65535 || d2 < 1) {
    alert('<% multilang("2248" "LANG_INVALID_PORT_NUMBER_YOU_SHOULD_SET_A_VALUE_BETWEEN_1_65535"); %>');
    mutli_remoteToPort[i].focus();
    return false;
   }
  }
 }
 obj.isclick = 1;
 postTableEncrypt(document.formPortFwAdd.postSecurityFlag, document.formPortFwAdd);
 return true;
}
function disableDelButton()
{
  if (verifyBrowser() != "ns") {
 disableButton(document.formPortFwDel.deleteSelPortFw);
 disableButton(document.formPortFwDel.deleteAllPortFw);
  }
}
function updateState()
{
 var mutli_comment = document.formPortFwAdd.elements["comment[]"];
 var mutli_localIPAddr = document.formPortFwAdd.elements["localIPaddr[]"];
 var mutli_localFromPort = document.formPortFwAdd.elements["localFromPort[]"];
 var mutli_localToPort = document.formPortFwAdd.elements["localToPort[]"];
 var mutli_protocol = document.formPortFwAdd.elements["protocol[]"];
 var mutli_remoteIPAddr = document.formPortFwAdd.elements["remoteIPaddr[]"];
 var mutli_remoteFromPort = document.formPortFwAdd.elements["remoteFromPort[]"];
 var mutli_remoteToPort = document.formPortFwAdd.elements["remoteToPort[]"];
 var mutli_interface = document.formPortFwAdd.elements["interface[]"];
 if (document.formPortFwAdd.portFwcap[1].checked)
 {
  for(var i=0;i<mutli_localFromPort.length;i++)
  {
   enableTextField(mutli_comment[i]);
   mutli_comment[i].value = "";
   enableTextField(mutli_localIPAddr[i]);
   mutli_localIPAddr[i].value = "";
   enableTextField(mutli_localFromPort[i]);
   mutli_localFromPort[i].value = "";
   enableTextField(mutli_localToPort[i]);
   mutli_localToPort[i].value = "";
   enableTextField(mutli_protocol[i]);
   mutli_protocol[i].selectedIndex = 0;
   enableTextField(mutli_remoteIPAddr[i]);
   mutli_remoteIPAddr[i].value = "";
   enableTextField(mutli_remoteFromPort[i]);
   mutli_remoteFromPort[i].value = "";
   enableTextField(mutli_remoteToPort[i]);
   mutli_remoteToPort[i].value = "";
   enableTextField(mutli_interface[i]);
   mutli_interface[i].selectedIndex = 0;
  }
  document.formPortFwAdd.app.disabled=false;
  document.formPortFwAdd.fw_enable.disabled=false;
  document.formPortFwAdd.addPortFw.disabled=false;
 }
 else
 {
  for(var i=0;i<mutli_localFromPort.length;i++ )
  {
   disableTextField(mutli_comment[i]);
   mutli_comment[i].value = "";
   disableTextField(mutli_localIPAddr[i]);
   mutli_localIPAddr[i].value = "";
   disableTextField(mutli_localFromPort[i]);
   mutli_localFromPort[i].value = "";
   disableTextField(mutli_localToPort[i]);
   mutli_localToPort[i].value = "";
   disableTextField(mutli_protocol[i]);
   mutli_protocol[i].selectedIndex = 0;
   disableTextField(mutli_remoteIPAddr[i]);
   mutli_remoteIPAddr[i].value = "";
   disableTextField(mutli_remoteFromPort[i]);
   mutli_remoteFromPort[i].value = "";
   disableTextField(mutli_remoteToPort[i]);
   mutli_remoteToPort[i].value = "";
   disableTextField(mutli_interface[i]);
   mutli_interface[i].selectedIndex = 0;
  }
  document.formPortFwAdd.app.disabled=true;
  document.formPortFwAdd.fw_enable.disabled=true;
  document.formPortFwAdd.addPortFw.disabled=true;
 }
}
function portFWClick(url)
{
 var wide=600;
 var high=400;
 if (document.all)
  var xMax = screen.width, yMax = screen.height;
 else if (document.layers)
  var xMax = window.outerWidth, yMax = window.outerHeight;
 else
    var xMax = 640, yMax=480;
 var xOffset = (xMax - wide)/2;
 var yOffset = (yMax - high)/3;
 var settings = 'width='+wide+',height='+high+',screenX='+xOffset+',screenY='+yOffset+',top='+yOffset+',left='+xOffset+', resizable=yes, toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes';
 window.open( url, 'portFWTbl', settings );
}
var app_array =
[
 [
  [3000, 3000, 3000, 3000, 1],
  [5670, 5670, 5670, 5670, 1],
  [7777, 7777, 7777, 7777, 1],
  [7000, 7100, 7000, 7100, 1]
 ],
 [
  [47624, 47624, 47624, 47624, 1],
  [6073, 6073, 6073, 6073, 1],
  [2300, 2400, 2300, 2400, 4]
 ],
 [
  [47624, 47624, 47624, 47624, 1],
  [6073, 6073, 6073, 6073, 1],
  [2300, 2400, 2300, 2400, 4]
 ],
 [
  [47624, 47624, 47624, 47624, 1],
  [6073, 6073, 6073, 6073, 1],
  [2300, 2400, 2300, 2400, 4]
 ],
 [
  [47624, 47624, 47624, 47624, 1],
  [6073, 6073, 6073, 6073, 1],
  [2300, 2400, 2300, 2400, 4]
 ],
 [
  [47624, 47624, 47624, 47624, 1],
  [6073, 6073, 6073, 6073, 1],
  [2300, 2400, 2300, 2400, 4]
 ],
 [
  [47624, 47624, 47624, 47624, 1],
  [6073, 6073, 6073, 6073, 1],
  [2300, 2400, 2300, 2400, 4]
 ],
 [
  [80, 80, 80, 80, 1],
  [2300, 2400, 2300, 2400, 2],
  [8000, 8999, 8000, 8999, 2]
 ],
 [
  [443, 443, 443, 443, 1]
 ],
 [
  [41000, 50000, 41000, 50000, 1],
  [1117, 5190, 1117, 5190, 1]
 ],
 [
  [113, 113, 113, 113, 1],
 ],
 [
  [47624, 47624, 47624, 47624, 4]
 ],
 [
  [47624, 47624, 47624, 47624, 1],
  [47624, 47624, 47624, 47624, 2],
  [2300, 2400, 2300, 2400, 4]
 ],
 [
  [47624, 47624, 47624, 47624, 1],
  [47624, 47624, 47624, 47624, 2],
  [2300, 2400, 2300, 2400, 4]
 ],
 [
  [2611, 2612, 2611, 2612, 1],
  [6667, 6667, 6667, 6667, 1],
  [6500, 6500, 6500, 6500, 2],
  [27900, 27900, 27900, 27900, 2]
 ],
 [
  [4000, 4000, 4000, 4000, 1],
  [6112, 6112, 6112, 6112, 1],
  [6112, 6112, 6112, 6112, 2]
 ],
 [
  [700, 701, 700, 701, 1]
 ],
 [
  [3453, 3453, 3453, 3453, 1]
 ],
 [
  [2047, 2048, 2047, 2048, 1],
  [2047, 2048, 2047, 2048, 2]
 ],
 [
  [47624, 47624, 47624, 47624, 1],
  [6073, 6073, 6073, 6073, 1],
  [2300, 2400, 2300, 2400, 4]
 ],
 [
  [47624, 47624, 47624, 47624, 1],
  [6073, 6073, 6073, 6073, 1],
  [2300, 2400, 2300, 2400, 4]
 ],
 [
  [47624, 47624, 47624, 47624, 1],
  [6073, 6073, 6073, 6073, 1],
  [2300, 2400, 2300, 2400, 4]
 ],
 [
  [47624, 47624, 47624, 47624, 1],
  [6073, 6073, 6073, 6073, 1],
  [2300, 2400, 2300, 2400, 4]
 ],
 [
  [47624, 47624, 47624, 47624, 1],
  [6073, 6073, 6073, 6073, 1],
  [2300, 2400, 2300, 2400, 4]
 ],
 [
  [47624, 47624, 47624, 47624, 1],
  [6073, 6073, 6073, 6073, 1],
  [2300, 2400, 2300, 2400, 4]
 ],
 [
  [1121, 1121, 1121, 1121, 1],
  [3040, 3040, 3040, 3040, 1],
  [28801, 28801, 28801, 28801, 1],
  [28805, 28805, 28805, 28805, 1]
 ],
 [
  [1414, 1414, 1414, 1414, 2],
  [1424, 1424, 1424, 1424, 2],
  [1503, 1503, 1503, 1503, 1],
  [1720, 1720, 1720, 1720, 1],
  [1812, 1813, 1812, 1813, 2],
  [7640, 7640, 7640, 7640, 2],
  [7642, 7642, 7642, 7642, 2],
  [7648, 7648, 7648, 7648, 4],
  [7649, 7649, 7649, 7649, 1],
  [24032, 24032, 24032, 24032, 2],
  [56800, 56800, 56800, 56800, 2]
 ],
 [
        [26214, 26214, 26214, 26214, 1],
        [26214, 26214, 26214, 26214, 2]
 ],
 [
        [3568, 3569, 3568, 3569, 2]
 ],
 [
        [12053, 12053, 12053, 12053, 1],
        [12080, 12080, 12080, 12080, 1],
        [12083, 12083, 12083, 12083, 2],
        [12120, 12120, 12120, 12120, 2],
        [12122, 12122, 12122, 12122, 2],
        [24150, 24179, 24150, 24179, 2]
 ],
 [
        [7170, 7170, 7170, 7170, 1],
        [2092, 2092, 2092, 2092, 2],
        [3445, 3445, 3445, 3445, 2]
 ],
 [
        [3440, 3440, 3440, 3440, 2],
        [3493, 3493, 3493, 3493, 2],
        [3999, 3999, 3999, 3999, 1],
        [4000, 4000, 4000, 4000, 2],
        [7000, 7000, 7000, 7000, 2]
 ],
 [
        [6112, 6112, 6112, 6112, 1],
        [6112, 6112, 6112, 6112, 2]
 ],
 [
        [6112, 6112, 6112, 6112, 4]
 ],
 [
        [1584, 1585, 1584, 1585, 1],
        [7175, 7175, 7175, 7175, 1],
        [8680, 8686, 8680, 8686, 1],
        [51200, 51201, 51200, 51201, 2],
        [51210, 51210, 51210, 51210, 1]
 ],
 [
  [47624, 47624, 47624, 47624, 1],
  [2300, 2400, 2300, 2400, 4]
 ],
 [
  [47624, 47624, 47624, 47624, 1],
  [2300, 2400, 2300, 2400, 2]
 ],
 [
        [53, 53, 53, 53, 4]
 ],
 [
        [666, 666, 666, 666, 4]
 ],
 [
        [1140, 1140, 1140, 1140, 2],
        [4000, 4000, 4000, 4000, 1]
 ],
 [
        [1024, 5000, 1024, 5000, 1],
        [6700, 6702, 6700, 6702, 1],
        [6880, 6880, 6880, 6880, 1],
        [12000, 16090, 12000, 16090, 2]
 ],
 [
        [26000, 26000, 26000, 26000, 2],
        [27500, 27500, 27500, 27500, 2],
        [27910, 27910, 27910, 27910, 2],
        [27960, 27960, 27960, 27960, 2]
 ],
 [
        [1024, 6000, 1024, 6000, 4],
        [6001, 7000, 6001, 7000, 1]
 ],
 [
        [3862, 3863, 3862, 3863, 2]
 ],
 [
        [3875, 3875, 3875, 3875, 2],
        [4533, 4534, 4533, 4534, 2],
        [4660, 4670, 4660, 4670, 2]
 ],
 [
        [3874, 3875, 3874, 3875, 2]
 ],
 [
        [3874, 3875, 3874, 3875, 2]
 ],
 [
        [2934, 2934, 2934, 2934, 2]
 ],
 [
        [50000, 50100, 50000, 50100, 4],
        [47624, 47624, 47624, 47624, 1],
        [6073, 6073, 6073, 6073, 1],
        [2300, 2400, 2300, 2400, 4]
 ],
 [
        [47624, 47624, 47624, 47624, 1],
        [6073, 6073, 6073, 6073, 1],
        [2300, 2400, 2300, 2400, 4]
 ],
 [
        [21300, 21303, 21300, 21303, 2]
    ],
 [
        [21, 21, 21, 21, 1]
    ],
 [
        [6346, 6347, 6346, 6347, 4]
    ],
 [
        [47624, 47624, 47624, 47624, 1],
        [6073, 6073, 6073, 6073, 1],
        [2300, 2400, 2300, 2400, 4]
 ],
 [
        [2090, 2090, 2090, 2090, 4]
 ],
 [
        [6003, 6003, 6003, 6003, 1],
        [6003, 6003, 6003, 6003, 2],
        [7001, 7001, 7001, 7001, 4],
        [27005, 27005, 27005, 27005, 2],
        [27010, 27010, 27010, 27010, 2]
 ],
 [
        [27015, 27015, 27015, 27015, 2]
 ],
 [
  [28910, 28910, 28910, 28910, 4]
 ],
 [
        [21154, 21156, 21154, 21156, 2]
 ],
 [
        [2019, 2019, 2019, 2019, 1],
        [2000, 2000, 2000, 2000, 1],
        [2050, 2051, 2050, 2051, 1],
        [2069, 2069, 2069, 2069, 1],
        [2085, 2085, 2085, 2085, 1],
        [3010, 3030, 3010, 3030, 1]
 ],
 [
        [9943, 9943, 9943, 9943, 2],
  [56768, 56768, 56768, 56768, 2]
 ],
 [
        [500, 500, 500, 500, 2]
 ],
 [
        [1024, 5000, 1024, 5000, 1],
        [6660, 6669, 6660, 6669, 1],
  [113, 113, 113, 113, 2]
 ],
 [
        [8076, 9943, 8077, 8077, 4]
 ],
 [
        [1024, 1024, 1024, 1024, 1]
 ],
 [
        [3855, 3855, 3855, 3855, 4],
        [17437, 17437, 17437, 17437, 4]
 ],
 [
        [1547, 1547, 1547, 1547, 1]
 ],
 [
        [47624, 47624, 47624, 47624, 1],
        [6073, 6073, 6073, 6073, 1],
        [2300, 2400, 2300, 2400, 4]
 ],
 [
        [1352, 1352, 1352, 1352, 1]
 ],
 [
        [110, 110, 110, 110, 1]
 ],
 [
        [25, 25, 25, 25, 1]
 ],
 [
        [47624, 47624, 47624, 47624, 1],
        [6073, 6073, 6073, 6073, 1],
        [2300, 2400, 2300, 2400, 4]
 ],
 [
        [47624, 47624, 47624, 47624, 1],
        [6073, 6073, 6073, 6073, 1],
        [2300, 2400, 2300, 2400, 4]
 ],
 [
        [1755, 1755, 1755, 1755, 1],
        [70, 7000, 70, 7000, 2],
 ],
 [
        [47624, 47624, 47624, 47624, 1],
        [6073, 6073, 6073, 6073, 1],
        [2300, 2400, 2300, 2400, 4]
 ],
 [
        [3862, 3863, 3862, 3863, 2]
 ],
 [
        [47624, 47624, 47624, 47624, 1],
        [6073, 6073, 6073, 6073, 1],
        [2300, 2400, 2300, 2400, 4]
 ],
 [
        [47624, 47624, 47624, 47624, 1],
        [6073, 6073, 6073, 6073, 1],
        [2300, 2400, 2300, 2400, 4]
 ],
 [
        [16000, 16000, 16000, 16000, 1],
        [16000, 16000, 16000, 16000, 2]
 ],
 [
        [6667, 6667, 6667, 6667, 1],
        [28800, 28800, 28800, 28800, 1],
        [47624, 47624, 47624, 47624, 1],
        [6073, 6073, 6073, 6073, 1],
        [2300, 2400, 2300, 2400, 4]
 ],
 [
        [6891, 6901, 6891, 6901, 1],
        [1863, 1963, 1863, 1963, 1],
        [1863, 1863, 1863, 1863, 2],
        [5190, 5190, 5190, 5190, 2],
        [6901, 6901, 6901, 6901, 2]
 ],
 [
        [3453, 3453, 3453, 3453, 1]
 ],
 [
        [3453, 3453, 3453, 3453, 1]
 ],
 [
        [3453, 3453, 3453, 3453, 1]
 ],
 [
  [9442, 9442, 9442, 9442, 1],
        [6112, 6112, 6112, 6112, 2]
 ],
 [
        [21154, 21154, 21154, 21154, 2]
 ],
 [
        [1024, 65534, 1024, 65534, 2],
        [1024, 1502, 1024, 1502, 1],
        [1504, 1730, 1504, 1730, 1],
        [1732, 65534, 1732, 65534, 1],
        [1503, 1503, 1503, 1503, 1],
        [1731, 1731, 1731, 1731, 1]
 ],
 [
        [123, 123, 123, 123, 1]
 ],
 [
        [119, 119, 119, 119, 1]
 ],
 [
        [80, 80, 80, 80, 1],
        [443, 443, 443, 443, 1],
        [5210, 5220, 5210, 5220, 1]
 ],
 [
        [80, 80, 80, 80, 1],
        [1729, 1729, 1729, 1729, 1],
        [1909, 1909, 1909, 1909, 1]
 ],
 [
        [5310, 5310, 5310, 5310, 4]
 ],
 [
        [2090, 2090, 2090, 2090, 4],
        [2091, 2091, 2091, 1729, 4],
        [2095, 2095, 2095, 2095, 1]
 ],
 [
        [5631, 5631, 5631, 5631, 1],
        [5631, 5631, 5631, 5631, 2]
 ],
 [
        [1034, 1035, 1034, 1035, 1],
        [2090, 2090, 2090, 2090, 2],
        [9900, 9901, 9900, 9901, 2],
        [2644, 2644, 2644, 2644, 1],
        [8000, 8000, 8000, 8000, 1]
 ],
 [
        [3230, 3235, 3230, 3235, 1]
 ],
 [
        [3230, 3235, 3230, 3235, 1]
 ],
 [
        [1723, 1723, 1723, 1723, 1]
 ],
 [
        [26000, 26000, 26000, 26000, 4]
 ],
 [
        [27660, 27680, 27660, 27680, 2]
 ],
 [
        [27660, 27680, 27660, 27680, 2]
 ],
 [
        [6790, 32000, 6790, 32000, 2]
 ],
 [
        [7070, 7070, 7070, 7070, 2]
 ],
 [
        [5009, 5009, 5009, 5009, 2]
 ],
 [
        [47624, 47624, 47624, 47624, 4]
 ],
 [
        [3782, 3783, 3782, 3783, 4]
 ],
 [
        [2346, 2346, 2346, 2346, 1]
 ],
 [
        [22, 22, 22, 22, 1]
 ],
 [
        [443, 443, 443, 443, 1]
 ],
 [
        [8000, 8005, 8000, 8005, 1]
 ],
 [
        [161, 161, 161, 161, 2]
 ],
 [
        [162, 162, 161, 161, 2]
 ],
 [
        [2074, 2076, 2074, 2076, 2]
 ],
 [
        [6112, 6112, 6112, 6112, 2]
 ],
 [
        [47624, 47624, 47624, 47624, 1],
        [6073, 6073, 6073, 6073, 1],
        [2300, 2400, 2300, 2400, 4]
 ],
 [
        [47624, 47624, 47624, 47624, 1],
        [6073, 6073, 6073, 6073, 1],
        [2300, 2400, 2300, 2400, 4]
 ],
 [
        [16639, 16639, 16639, 16639, 1],
        [16638, 16638, 16638, 16638, 2]
 ],
 [
        [23, 23, 23, 23, 1]
 ],
 [
        [11677, 11677, 11677, 11677, 2],
        [11679, 11679, 11679, 11679, 2]
 ],
 [
        [69, 69, 69, 69, 1]
 ],
 [
        [1234, 1234, 1234, 1234, 2]
 ],
 [
        [47624, 47624, 47624, 47624, 2]
 ],
 [
        [5001, 5010, 5001, 5010, 1],
        [7775, 7777, 7775, 7777, 1],
        [8800, 8900, 8800, 8900, 1],
        [9999, 9999, 9999, 9999, 1],
        [7875, 7875, 7875, 7875, 1]
 ],
 [
        [7777, 7790, 7777, 7790, 2],
        [27900, 27900, 27900, 27900, 2],
        [8080, 8080, 8080, 8080, 1]
 ],
 [
        [47624, 47624, 47624, 47624, 1],
        [6073, 6073, 6073, 6073, 1],
        [2300, 2400, 2300, 2400, 4]
 ],
 [
        [12380, 12380, 12380, 12380, 1],
        [12380, 12380, 12380, 12380, 2]
 ],
 [
        [912, 912, 912, 912, 1]
 ],
 [
        [80, 80, 80, 80, 1]
 ],
 [
        [21845, 21845, 21845, 21845, 1]
 ],
 [
        [4000, 4000, 4000, 4000, 2],
        [1140, 1234, 1140, 1234, 4]
 ],
 [
        [3389, 3389, 3389, 3389, 4]
 ],
 [
        [80, 80, 80, 80, 1],
        [88, 88, 88, 88, 2],
        [53, 53, 53, 53, 4],
        [3074, 3074, 3074, 3074, 4],
        [1863, 1863, 1863, 1863, 4]
 ],
 [
        [6000, 6000, 6000, 6000, 4]
 ],
 [
        [5050, 5050, 5050, 5050, 1]
 ],
 [
        [5000, 5000, 5000, 5000, 1],
        [5055, 5055, 5055, 5055, 2]
 ]
   ];
function clearPFWD()
{
 var mutli_comment = document.formPortFwAdd.elements["comment[]"];
 var mutli_localIPAddr = document.formPortFwAdd.elements["localIPaddr[]"];
 var mutli_localFromPort = document.formPortFwAdd.elements["localFromPort[]"];
 var mutli_localToPort = document.formPortFwAdd.elements["localToPort[]"];
 var mutli_protocol = document.formPortFwAdd.elements["protocol[]"];
 var mutli_remoteIPAddr = document.formPortFwAdd.elements["remoteIPaddr[]"];
 var mutli_remoteFromPort = document.formPortFwAdd.elements["remoteFromPort[]"];
 var mutli_remoteToPort = document.formPortFwAdd.elements["remoteToPort[]"];
 with ( document.forms[0] )
 {
  for( var i=0;i<mutli_localFromPort.length;i++)
  {
   mutli_comment[i].value = "";
   mutli_localIPAddr[i].value = "";
   mutli_localFromPort[i].value = "";
   mutli_localToPort[i].value = "";
   mutli_protocol[i].value = "";
   mutli_remoteIPAddr[i].value = "";
   mutli_remoteFromPort[i].value = "";
   mutli_remoteToPort[i].value = "";
  }
 }
}
function onAppSelection()
{
 var mutli_comment = document.formPortFwAdd.elements["comment[]"];
 var mutli_localIPAddr = document.formPortFwAdd.elements["localIPaddr[]"];
 var mutli_localFromPort = document.formPortFwAdd.elements["localFromPort[]"];
 var mutli_localToPort = document.formPortFwAdd.elements["localToPort[]"];
 var mutli_protocol = document.formPortFwAdd.elements["protocol[]"];
 var mutli_remoteIPAddr = document.formPortFwAdd.elements["remoteIPaddr[]"];
 var mutli_remoteFromPort = document.formPortFwAdd.elements["remoteFromPort[]"];
 var mutli_remoteToPort = document.formPortFwAdd.elements["remoteToPort[]"];
 clearPFWD();
 with ( document.forms[0] )
 {
  for(var i=0;i<app_array[app.value].length;i++)
  {
   var sel = document.getElementById('app_id');
   mutli_comment[i].value = document.formPortFwAdd.app.options[document.formPortFwAdd.app.selectedIndex].label;
   mutli_localFromPort[i].value = app_array[app.value][i][0].toString();
   mutli_localToPort[i].value = app_array[app.value][i][1].toString();
   mutli_remoteFromPort[i].value = app_array[app.value][i][2].toString();
   mutli_remoteToPort[i].value = app_array[app.value][i][3].toString();
   mutli_protocol[i].value = app_array[app.value][i][4];
  }
 }
}
function on_submit(obj)
{
 obj.isclick = 1;
 postTableEncrypt(document.formPortFwAdd.postSecurityFlag, document.formPortFwAdd);
 return true;
}
function deleteClick(obj)
{
 if ( !confirm('<% multilang("1747" "LANG_CONFIRM_DELETE_ONE_ENTRY"); %>') ) {
  return false;
 }
 else{
  obj.isclick = 1;
  postTableEncrypt(document.formPortFwDel.postSecurityFlag, document.formPortFwDel);
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
  postTableEncrypt(document.formPortFwDel.postSecurityFlag, document.formPortFwDel);
  return true;
 }
}
</script>
</head>
<body>
<div class="intro_main ">
 <p class="intro_title"><% multilang("20" "LANG_PORT_FORWARDING"); %></p>
 <p class="intro_content"> <% multilang("396" "LANG_PAGE_DESC_NAT_FIREWALL_FILTER_TABLE"); %></p>
</div>
<form action=/boaform/formPortFw method=POST name="formPortFwAdd">
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th width="30%"><% multilang("20" "LANG_PORT_FORWARDING"); %>:</th>
   <td width="40%">
    <input type="radio" value="0" name="portFwcap" <% checkWrite("portFw-cap0"); %> onClick="updateState()"><% multilang("247" "LANG_DISABLE"); %>&nbsp;&nbsp;
    <input type="radio" value="1" name="portFwcap" <% checkWrite("portFw-cap1"); %> onClick="updateState()"><% multilang("248" "LANG_ENABLE"); %>&nbsp;&nbsp;
   </td>
   <td>
    <input class="inner_btn" type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="apply" onClick="return on_submit(this)">&nbsp;&nbsp;
   </td>
  </tr>
 </table>
</div>
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th width="30%"><% multilang("248" "LANG_ENABLE"); %>
    <input type="checkbox" name="fw_enable" value="1" checked>
   </th>
   <th width="70%"><% multilang("404" "LANG_APPLICATION"); %>
    <select name="app" id="app_id" onchange="onAppSelection()" >
     <option value=0 label="Active Worlds">Active Worlds</option>
     <option value=1 label="Age of Empires">Age of Empires</option>
     <option value=2 label="Age of Empires Expansion: The Rise of Rome">Age of Empires Expansion: The Rise of Rome</option>
     <option value=3 label="Age of Empires II Expansion: The Conquerors">Age of Empires II Expansion: The Conquerors</option>
     <option value=4 label="Age of Empires II: The Age of Kings">Age of Empires II: The Age of Kings</option>
     <option value=5 label="Age of Kings">Age of Kings</option>
     <option value=6 label="Age of Wonders">Age of Wonders</option>
     <option value=7 label="Aliens vs. Predator">Aliens vs. Predator</option>
     <option value=8 label="AOL Instant Messenger">AOL Instant Messenger</option>
     <option value=9 label="Audiogalaxy Satellite">Audiogalaxy Satellite</option>
     <option value=10 label="AUTH">AUTH</option>
     <option value=11 label="Baldur's Gate">Baldur's Gate</option>
     <option value=12 label="BattleCom">BattleCom</option>
     <option value=13 label="Battlefield Communicator">Battlefield Communicator</option>
     <option value=14 label="Black and White">Black and White</option>
     <option value=15 label="Blizzard Battle.net">Blizzard Battle.net</option>
     <option value=16 label="Buddy Phone">Buddy Phone</option>
     <option value=17 label="Bungie.net">Bungie.net</option>
     <option value=18 label="Camerades">Camerades</option>
     <option value=19 label="CART Precision Racing">CART Precision Racing</option>
     <option value=20 label="Close Combat for Windows">Close Combat for Windows</option>
     <option value=21 label="Close Combat III: The Russian Front">Close Combat III: The Russian Front</option>
     <option value=22 label="Close Combat: A Bridge Too Far">Close Combat: A Bridge Too Far</option>
     <option value=23 label="Combat Flight Simulator 2: WWII Pacific Theater">Combat Flight Simulator 2: WWII Pacific Theater</option>
     <option value=24 label="Combat Flight Simulator: WWII Europe Series">Combat Flight Simulator: WWII Europe Series</option>
     <option value=25 label="Crimson Skies">Crimson Skies</option>
     <option value=26 label="CuSeeMe">CuSeeMe</option>
     <option value=27 label="Dark Reign 2">Dark Reign 2</option>
     <option value=28 label="Delta Force 2">Delta Force 2</option>
     <option value=29 label="Delta Three PC to Phone">Delta Three PC to Phone</option>
     <option value=30 label="Descent 3">Descent 3</option>
     <option value=31 label="Descent Freespace">Descent Freespace</option>
     <option value=32 label="Diablo I">Diablo I</option>
     <option value=33 label="Diablo II">Diablo II</option>
     <option value=34 label="DialPad.Com">DialPad.Com</option>
     <option value=35 label="DirectX 7 Games">DirectX 7 Games</option>
     <option value=36 label="DirectX 8 Games">DirectX 8 Games</option>
     <option value=37 label="Domain Name Server (DNS)">Domain Name Server (DNS)</option>
     <option value=38 label="Doom">Doom</option>
     <option value=39 label="Dune 2000">Dune 2000</option>
     <option value=40 label="Dwyco Video Conferencing">Dwyco Video Conferencing</option>
     <option value=41 label="Elite Force">Elite Force</option>
     <option value=42 label="Everquest">Everquest</option>
     <option value=43 label="F-16">F-16</option>
     <option value=44 label="F-22 Lightning 3">F-22 Lightning 3</option>
     <option value=45 label="F-22 Raptor">F-22 Raptor</option>
     <option value=46 label="F22 Raptor (Novalogic)">F22 Raptor (Novalogic)</option>
     <option value=47 label="Falcon 4.0">Falcon 4.0</option>
     <option value=48 label="Fighter Ace II">Fighter Ace II</option>
     <option value=49 label="Flight Simulator 2000">Flight Simulator 2000</option>
     <option value=50 label="Freetel">Freetel</option>
     <option value=51 label="FTP Server">FTP Server</option>
     <option value=52 label="GNUtella">GNUtella</option>
     <option value=53 label="Golf 2001 Edition">Golf 2001 Edition</option>
     <option value=54 label="Go2Call">Go2Call</option>
     <option value=55 label="Half Life">Half Life</option>
     <option value=56 label="Half Life Server">Half Life Server</option>
     <option value=57 label="Heretic II Server">Heretic II Server</option>
     <option value=58 label="I76">I76</option>
     <option value=59 label="ICUII Client">ICUII Client</option>
     <option value=60 label="Ivisit">Ivisit</option>
     <option value=61 label="IPSEC">IPSEC</option>
     <option value=62 label="IRC">IRC</option>
     <option value=63 label="IStreamVideo2HP">IStreamVideo2HP</option>
     <option value=64 label="KaZaA">KaZaA</option>
     <option value=65 label="Kohan Immortal Sovereigns">Kohan Immortal Sovereigns</option>
     <option value=66 label="LapLink Gold">LapLink Gold</option>
     <option value=67 label="Links 2001">Links 2001</option>
     <option value=68 label="Lotus Notes Server">Lotus Notes Server</option>
     <option value=69 label="Mail (POP3)">Mail (POP3)</option>
     <option value=70 label="Mail (SMTP)">Mail (SMTP)</option>
     <option value=71 label="MechCommander 2.0">MechCommander 2.0</option>
     <option value=72 label="MechWarrior 4">MechWarrior 4</option>
     <option value=73 label="Media Player 7">Media Player 7</option>
     <option value=74 label="Midtown Madness 2">Midtown Madness 2</option>
     <option value=75 label="Mig 29">Mig 29</option>
     <option value=76 label="Monster Truck Madness 2">Monster Truck Madness 2</option>
     <option value=77 label="Motocross Madness 2">Motocross Madness 2</option>
     <option value=78 label="Motorhead Server">Motorhead Server</option>
     <option value=79 label="MSN Gaming Zone">MSN Gaming Zone</option>
     <option value=80 label="MSN Messenger">MSN Messenger</option>
     <option value=81 label="Myth">Myth</option>
     <option value=82 label="Myth II Server">Myth II Server</option>
     <option value=83 label="Myth: The Fallen Lords">Myth: The Fallen Lords</option>
     <option value=84 label="Need for Speed">Need for Speed</option>
     <option value=85 label="NetMech">NetMech</option>
     <option value=86 label="Netmeeting 2.0, 3.0, Intel Video Phone">Netmeeting 2.0, 3.0, Intel Video Phone</option>
     <option value=87 label="Network Time Protocol (NTP)">Network Time Protocol (NTP)</option>
     <option value=88 label="News Server (NNTP)">News Server (NNTP)</option>
     <option value=89 label="OKWeb">OKWeb</option>
     <option value=90 label="OKWin">OKWin</option>
     <option value=91 label="Outlaws">Outlaws</option>
     <option value=92 label="Pal Talk">Pal Talk</option>
     <option value=92 label="pcAnywhere v7.5">pcAnywhere v7.5</option>
     <option value=94 label="PhoneFree">PhoneFree</option>
     <option value=95 label="Polycom ViaVideo H.323">Polycom ViaVideo H.323</option>
     <option value=96 label="Polycom ViaVideo H.324">Polycom ViaVideo H.324</option>
     <option value=97 label="PPTP">PPTP</option>
     <option value=98 label="Quake">Quake</option>
     <option value=99 label="Quake II (Client and Server)">Quake II (Client and Server)</option>
     <option value=100 label="Quake III">Quake III</option>
     <option value=101 label="RealAudio">RealAudio</option>
     <option value=102 label="Real Player 8 Plus">Real Player 8 Plus</option>
     <option value=103 label="Red Alert">Red Alert</option>
     <option value=104 label="Rise of Rome">Rise of Rome</option>
     <option value=105 label="Roger Wilco">Roger Wilco</option>
     <option value=106 label="Rogue Spear">Rogue Spear</option>
     <option value=107 label="Secure Shell Server (SSH)">Secure Shell Server (SSH)</option>
     <option value=108 label="Secure Web Server (HTTPS)">Secure Web Server (HTTPS)</option>
     <option value=109 label="ShoutCast">ShoutCast</option>
     <option value=110 label="SNMP">SNMP</option>
     <option value=111 label="SNMP Trap">SNMP Trap</option>
     <option value=112 label="Speak Freely">Speak Freely</option>
     <option value=113 label="StarCraft">StarCraft</option>
     <option value=114 label="Starfleet Command">Starfleet Command</option>
     <option value=115 label="StarLancer">StarLancer</option>
     <option value=116 label="SWAT3">SWAT3</option>
     <option value=117 label="Telnet Server">Telnet Server</option>
     <option value=118 label="The 4th Coming">The 4th Coming</option>
     <option value=119 label="TFTP">TFTP</option>
     <option value=120 label="Tiberian Sun: C&C III">Tiberian Sun: C&C III"</option>
     <option value=121 label="Total Annihilation">Total Annihilation</option>
     <option value=122 label="Ultima">Ultima</option>
     <option value=123 label="Unreal Tournament">Unreal Tournament</option>
     <option value=124 label="Urban Assault">Urban Assault</option>
     <option value=125 label="VoxPhone 3.0">VoxPhone 3.0</option>
     <option value=126 label="Warbirds 2">Warbirds 2</option>
     <option value=127 label="Web Server (HTTP)">Web Server (HTTP)</option>
     <option value=128 label="WebPhone 3.0">WebPhone 3.0</option>
     <option value=129 label="Westwood Online">Westwood Online</option>
     <option value=130 label="Windows 2000 Terminal Server">Windows 2000 Terminal Server</option>
     <option value=131 label="Xbox LIVE">Xbox LIVE</option>
     <option value=132 label="X Windows">X Windows</option>
     <option value=133 label="Yahoo Pager">Yahoo Pager</option>
     <option value=134 label="Yahoo Messenger Chat">Yahoo Messenger Chat</option>
    </select>
   </th>
  </tr>
 </table>
</div>
<div class="data_common data_common_notitle size_inpt">
<table style ="table-layout:fixed; overflow:hidden;">
    <tr>
  <th width="15%">
   <% multilang("398" "LANG_COMMENT"); %>
  </th>
  <th width="15%">
   <% multilang("405" "LANG_LOCAL_IP"); %>
  </th>
  <th width="10%">
   <% multilang("406" "LANG_LOCAL_PORT_FROM"); %>
  </th>
  <th width="10%">
   <% multilang("407" "LANG_LOCAL_PORT_TO"); %>
  </th>
  <th width="10%">
   <% multilang("95" "LANG_PROTOCOL"); %>
  </th>
   <th width="10%" <% checkWrite("rg_hidden_function"); %>>
   <% multilang("408" "LANG_REMOTE_IP"); %>
  </th>
   <th width="10%">
   <% multilang("409" "LANG_REMOTE_PORT_FROM"); %>
  </th>
   <th width="10%">
   <% multilang("410" "LANG_REMOTE_PORT_TO"); %>
  </th>
   <th>
   <% multilang("70" "LANG_INTERFACE"); %>
  </th>
    </tr>
 <tr> <!-- 0 -->
  <td><input type="text" name="comment[]" size="30" maxlength="15"> </td>
  <td><input type="text" name="localIPaddr[]" size="15" maxlength="15"> </td>
  <td><input type="text" name="localFromPort[]" size="5" style="width:50px;" maxlength="5"></td>
  <td><input type="text" name="localToPort[]" size="5" style="width:50px;" maxlength="5"></td>
  <td>
   <select name="protocol[]">
    <option select value=4><% multilang("397" "LANG_BOTH"); %></option>
    <option value=1>TCP</option>
    <option value=2>UDP</option>
   </select><br>
  </td>
  <td <% checkWrite("rg_hidden_function"); %>><input type="text" name="remoteIPaddr[]" size="15" maxlength="15"></td>
  <td><input type="text" name="remoteFromPort[]" style="width:50px;" size="5" maxlength="5"></td>
  <td><input type="text" name="remoteToPort[]" style="width:50px;" size="5" maxlength="5"></td>
  <td>
   <select name="interface[]">
    <% if_wan_list("rt-any"); %>
   </select>
   <input type="hidden" value="" name="select_id[]">
  </td>
 </tr>
 <tr> <!-- 1 -->
  <td><input type="text" name="comment[]" size="30" maxlength="15"> </td>
  <td> <input type="text" name="localIPaddr[]" size="15" maxlength="15"> </td>
  <td><input style="width:50px;" type="text" name="localFromPort[]" size="5" maxlength="5"></td>
  <td><input type="text" name="localToPort[]" style="width:50px;" size="5" maxlength="5"></td>
  <td>
   <select name="protocol[]">
    <option select value=4><% multilang("397" "LANG_BOTH"); %></option>
    <option value=1>TCP</option>
    <option value=2>UDP</option>
   </select><br>
  </td>
  <td <% checkWrite("rg_hidden_function"); %>><input type="text" name="remoteIPaddr[]" size="15" maxlength="15"></td>
  <td><input type="text" name="remoteFromPort[]" style="width:50px;" size="5" maxlength="5"></td>
  <td><input type="text" name="remoteToPort[]" style="width:50px;" size="5" maxlength="5"></td>
  <td>
   <select name="interface[]">
    <% if_wan_list("rt-any"); %>
   </select>
   <input type="hidden" value="" name="select_id[]">
  </td>
 </tr>
 <tr> <!-- 2 -->
  <td><input type="text" name="comment[]" size="30" maxlength="15"> </td>
  <td> <input type="text" name="localIPaddr[]" size="15" maxlength="15"> </td>
  <td><input type="text" name="localFromPort[]" style="width:50px;" size="5" maxlength="5"></td>
  <td><input type="text" name="localToPort[]" style="width:50px;" size="5" maxlength="5"></td>
  <td>
   <select name="protocol[]">
    <option select value=4><% multilang("397" "LANG_BOTH"); %></option>
    <option value=1>TCP</option>
    <option value=2>UDP</option>
   </select><br>
  </td>
  <td <% checkWrite("rg_hidden_function"); %>><input type="text" name="remoteIPaddr[]" size="15" maxlength="15"></td>
  <td><input type="text" name="remoteFromPort[]" style="width:50px;" size="5" maxlength="5"></td>
  <td><input type="text" name="remoteToPort[]" style="width:50px;" size="5" maxlength="5"></td>
  <td>
   <select name="interface[]">
    <% if_wan_list("rt-any"); %>
   </select>
   <input type="hidden" value="" name="select_id[]">
  </td>
 </tr>
  <tr> <!-- 3 -->
  <td><input type="text" name="comment[]" size="30" maxlength="15"> </td>
  <td><input type="text" name="localIPaddr[]" size="15" maxlength="15"> </td>
  <td><input type="text" name="localFromPort[]" style="width:50px;" size="5" maxlength="5"></td>
  <td><input type="text" name="localToPort[]" style="width:50px;" size="5" maxlength="5"></td>
  <td>
   <select name="protocol[]">
    <option select value=4><% multilang("397" "LANG_BOTH"); %></option>
    <option value=1>TCP</option>
    <option value=2>UDP</option>
   </select><br>
  </td>
  <td <% checkWrite("rg_hidden_function"); %>><input type="text" name="remoteIPaddr[]" size="15" maxlength="15"></td>
  <td><input type="text" name="remoteFromPort[]" style="width:50px;" size="5" maxlength="5"></td>
  <td><input type="text" name="remoteToPort[]" style="width:50px;" size="5" maxlength="5"></td>
  <td>
   <select name="interface[]">
    <% if_wan_list("rt-any"); %>
   </select>
   <input type="hidden" value="" name="select_id[]">
  </td>
   </tr>
  <tr> <!-- 4 -->
  <td><input type="text" name="comment[]" size="30" maxlength="15"> </td>
  <td><input type="text" name="localIPaddr[]" size="15" maxlength="15"> </td>
  <td><input type="text" name="localFromPort[]" style="width:50px;" size="5" maxlength="5"></td>
  <td><input type="text" name="localToPort[]" style="width:50px;" size="5" maxlength="5"></td>
  <td>
   <select name="protocol[]">
    <option select value=4><% multilang("397" "LANG_BOTH"); %></option>
    <option value=1>TCP</option>
    <option value=2>UDP</option>
   </select><br>
  </td>
  <td <% checkWrite("rg_hidden_function"); %>><input type="text" name="remoteIPaddr[]" size="15" maxlength="15"></td>
  <td><input type="text" name="remoteFromPort[]" style="width:50px;" size="5" maxlength="5"></td>
  <td><input type="text" name="remoteToPort[]" style="width:50px;" size="5" maxlength="5"></td>
  <td>
   <select name="interface[]">
    <% if_wan_list("rt-any"); %>
   </select>
   <input type="hidden" value="" name="select_id[]">
  </td>
 </tr>
  <tr> <!-- 5 -->
  <td><input type="text" name="comment[]" size="30" maxlength="15"> </td>
  <td><input type="text" name="localIPaddr[]" size="15" maxlength="15"> </td>
  <td><input type="text" name="localFromPort[]" style="width:50px;" size="5" maxlength="5"></td>
  <td><input type="text" name="localToPort[]" style="width:50px;" size="5" maxlength="5"></td>
  <td>
   <select name="protocol[]">
    <option select value=4><% multilang("397" "LANG_BOTH"); %></option>
    <option value=1>TCP</option>
    <option value=2>UDP</option>
   </select><br>
  </td>
  <td <% checkWrite("rg_hidden_function"); %>><input type="text" name="remoteIPaddr[]" size="15" maxlength="15"></td>
  <td><input type="text" name="remoteFromPort[]" style="width:50px;" size="5" maxlength="5"></td>
  <td><input type="text" name="remoteToPort[]" style="width:50px;" size="5" maxlength="5"></td>
  <td>
   <select name="interface[]">
    <% if_wan_list("rt-any"); %>
   </select>
   <input type="hidden" value="" name="select_id[]">
  </td>
 </tr>
  <tr> <!-- 6 -->
  <td><input type="text" name="comment[]" size="30" maxlength="15"> </td>
        <td> <input type="text" name="localIPaddr[]" size="15" maxlength="15"> </td>
  <td><input type="text" name="localFromPort[]" style="width:50px;" size="5" maxlength="5"></td>
  <td><input type="text" name="localToPort[]" style="width:50px;" size="5" maxlength="5"></td>
  <td>
   <select name="protocol[]">
    <option select value=4><% multilang("397" "LANG_BOTH"); %></option>
    <option value=1>TCP</option>
    <option value=2>UDP</option>
   </select><br>
  </td>
  <td <% checkWrite("rg_hidden_function"); %>><input type="text" name="remoteIPaddr[]" size="15" maxlength="15"></td>
  <td><input type="text" name="remoteFromPort[]" style="width:50px;" size="5" maxlength="5"></td>
  <td><input type="text" name="remoteToPort[]" style="width:50px;" size="5" maxlength="5"></td>
  <td>
   <select name="interface[]">
    <% if_wan_list("rt-any"); %>
   </select>
   <input type="hidden" value="" name="select_id[]">
  </td>
 </tr>
 <tr> <!-- 7 -->
  <td><input type="text" name="comment[]" size="30" maxlength="15"> </td>
  <td><input type="text" name="localIPaddr[]" size="15" maxlength="15"> </td>
  <td><input type="text" name="localFromPort[]" style="width:50px;" size="5" maxlength="5"></td>
  <td><input type="text" name="localToPort[]" style="width:50px;" size="5" maxlength="5"></td>
  <td>
   <select name="protocol[]">
    <option select value=4><% multilang("397" "LANG_BOTH"); %></option>
    <option value=1>TCP</option>
    <option value=2>UDP</option>
   </select><br>
  </td>
  <td <% checkWrite("rg_hidden_function"); %>><input type="text" name="remoteIPaddr[]" size="15" maxlength="15"></td>
  <td><input type="text" name="remoteFromPort[]" style="width:50px;" size="5" maxlength="5"></td>
  <td><input type="text" name="remoteToPort[]" style="width:50px;" size="5" maxlength="5"></td>
  <td>
   <select name="interface[]">
    <% if_wan_list("rt-any"); %>
   </select>
   <input type="hidden" value="" name="select_id[]">
  </td>
 </tr>
 <tr> <!-- 8 -->
  <td><input type="text" name="comment[]" size="30" maxlength="15"> </td>
       <td> <input type="text" name="localIPaddr[]" size="15" maxlength="15"> </td>
  <td><input type="text" name="localFromPort[]" style="width:50px;" size="5" maxlength="5"></td>
  <td><input type="text" name="localToPort[]" style="width:50px;" size="5" maxlength="5"></td>
  <td>
   <select name="protocol[]">
    <option select value=4><% multilang("397" "LANG_BOTH"); %></option>
    <option value=1>TCP</option>
    <option value=2>UDP</option>
   </select><br>
  </td>
  <td <% checkWrite("rg_hidden_function"); %>><input type="text" name="remoteIPaddr[]" size="15" maxlength="15"></td>
  <td><input type="text" name="remoteFromPort[]" style="width:50px;" size="5" maxlength="5"></td>
  <td><input type="text" name="remoteToPort[]" style="width:50px;" size="5" maxlength="5"></td>
  <td>
   <select name="interface[]">
    <% if_wan_list("rt-any"); %>
   </select>
   <input type="hidden" value="" name="select_id[]">
  </td>
 </tr>
 <tr> <!-- 9 -->
  <td><input type="text" name="comment[]" size="30" maxlength="15"> </td>
  <td><input type="text" name="localIPaddr[]" size="15" maxlength="15"> </td>
  <td><input type="text" name="localFromPort[]" style="width:50px;" size="5" maxlength="5"></td>
  <td><input type="text" name="localToPort[]" style="width:50px;" size="5" maxlength="5"></td>
  <td>
   <select name="protocol[]">
    <option select value=4><% multilang("397" "LANG_BOTH"); %></option>
    <option value=1>TCP</option>
    <option value=2>UDP</option>
   </select><br>
  </td>
  <td <% checkWrite("rg_hidden_function"); %>><input type="text" name="remoteIPaddr[]" size="15" maxlength="15"></td>
  <td><input type="text" name="remoteFromPort[]" style="width:50px;" size="5" maxlength="5"></td>
  <td><input type="text" name="remoteToPort[]" style="width:50px;" size="5" maxlength="5"></td>
  <td>
   <select name="interface[]">
    <% if_wan_list("rt-any"); %>
   </select>
   <input type="hidden" value="" name="select_id[]">
  </td>
    </tr>
 <tr> <!-- 10 -->
  <td><input type="text" name="comment[]" size="30" maxlength="15"> </td>
      <td> <input type="text" name="localIPaddr[]" size="15" maxlength="15"> </td>
  <td><input type="text" name="localFromPort[]" style="width:50px;" size="5" maxlength="5"></td>
  <td><input type="text" name="localToPort[]" style="width:50px;" size="5" maxlength="5"></td>
  <td>
   <select name="protocol[]">
    <option select value=4><% multilang("397" "LANG_BOTH"); %></option>
    <option value=1>TCP</option>
    <option value=2>UDP</option>
   </select><br>
  </td>
  <td <% checkWrite("rg_hidden_function"); %>><input type="text" name="remoteIPaddr[]" size="15" maxlength="15"></td>
  <td><input type="text" name="remoteFromPort[]" style="width:50px;" size="5" maxlength="5"></td>
  <td><input type="text" name="remoteToPort[]" style="width:50px;" size="5" maxlength="5"></td>
  <td>
   <select name="interface[]">
    <% if_wan_list("rt-any"); %>
   </select>
   <input type="hidden" value="" name="select_id[]">
  </td>
 </tr>
  <tr> <!-- 11 -->
  <td><input type="text" name="comment[]" size="30" maxlength="15"> </td>
  <td><input type="text" name="localIPaddr[]" size="15" maxlength="15"> </td>
  <td><input type="text" name="localFromPort[]" style="width:50px;" size="5" maxlength="5"></td>
  <td><input type="text" name="localToPort[]" style="width:50px;" size="5" maxlength="5"></td>
  <td>
   <select name="protocol[]">
    <option select value=4><% multilang("397" "LANG_BOTH"); %></option>
    <option value=1>TCP</option>
    <option value=2>UDP</option>
   </select><br>
  </td>
  <td <% checkWrite("rg_hidden_function"); %>><input type="text" name="remoteIPaddr[]" size="15" maxlength="15"></td>
  <td><input type="text" name="remoteFromPort[]" style="width:50px;" size="5" maxlength="5"></td>
  <td><input type="text" name="remoteToPort[]" style="width:50px;" size="5" maxlength="5"></td>
  <td>
   <select name="interface[]">
    <% if_wan_list("rt-any"); %>
   </select>
   <input type="hidden" value="" name="select_id[]">
  </td>
   </tr>
</table>
</div>
<div class="btn_ctl">
 <input class="link_bg" type="submit" value="<% multilang("221" "LANG_ADD"); %>" name="addPortFw" onClick="return addClick(this)">
 <input type="hidden" value="/fw-portfw.asp" name="submit-url">
 <% showPFWAdvForm(); %>
</div>
<input type="hidden" name="postSecurityFlag" value="">
<script> updateState(); </script>
</form>
<form action=/boaform/formPortFw method=POST name="formPortFwDel">
<div class="column">
 <div class="column_title">
  <div class="column_title_left"></div>
  <p> <% multilang("402" "LANG_CURRENT_PORT_FORWARDING_TABLE"); %></p>
  <div class="column_title_right"></div>
 </div>
 <div class="data_common data_vertical">
 <table>
  <% portFwList(); %>
 </table>
 </div>
</div>
<div class="btn_ctl">
 <input class="link_bg" type="submit" value="<% multilang("224" "LANG_DELETE_SELECTED"); %>" name="deleteSelPortFw" onClick="return deleteClick(this)">
 <input class="link_bg" type="submit" value="<% multilang("225" "LANG_DELETE_ALL"); %>" name="deleteAllPortFw" onClick="return deleteAllClick(this)">
</div>
 <script>
  <% checkWrite("portFwNum"); %>
 </script>
 <input type="hidden" value="/fw-portfw.asp" name="submit-url">
 <input type="hidden" name="postSecurityFlag" value="">
</form>
</body>
</html>
