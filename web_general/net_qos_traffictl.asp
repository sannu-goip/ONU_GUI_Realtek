


<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="0" type="image/x-icon">
    <link rel="stylesheet" href="/Dashboard/Modules/fontawesome/css/font-awesome.min.css">
    <title>Route</title>
    <link href="/Dashboard/Modules/leftmenu/css/scoop-vertical.css" rel="stylesheet">
    <link rel="stylesheet" href="/Dashboard/css/bootstrap.min.css">
    <link href="/Dashboard/Modules/leftmenu/css/simple-line-icons.css" rel="stylesheet">
    <link href="/Dashboard/Modules/leftmenu/css/jquery.mCustomScrollbar.css" rel="stylesheet">
    <link href="/Dashboard/css/custom.css" type="text/css" rel="stylesheet">
      <link href="/css/custom-nav.css" type="text/css" rel="stylesheet">

        <script language="javascript" src="/Dashboard/JS/menu.js"></script>
     <script language="javascript" src="/Dashboard/JS/util.js"></script>
<script language="javascript" src="common.js"></script>
<script type="text/javascript" src="share.js"></script>
<style>
.left-field{
    margin-left:-15px;
    width:195px;
}
.right-field{
    margin-left:50px
}
.data_common{
	width:150px
}
</style>
<script language="javascript" type="text/javascript">
var policy = 1;
var rules = new Array();
var queues = new Array();
var totalBandwidth = 1000;
userDefinedBandwidth=0;
totalBandwidth=100000;
qosEnable=0;
policy=0;
queues.push(new it_nr("0",new it("qname","Q1"),new it("prio",1),new it("weight", 40),new it("enable", 0)));
queues.push(new it_nr("1",new it("qname","Q2"),new it("prio",2),new it("weight", 30),new it("enable", 0)));
queues.push(new it_nr("2",new it("qname","Q3"),new it("prio",3),new it("weight", 20),new it("enable", 0)));
queues.push(new it_nr("3",new it("qname","Q4"),new it("prio",4),new it("weight", 10),new it("enable", 0)));

function queue_display1() {
 var hrow=lstrc.rows[0];
 var hcell=hrow.cells[1];
 if(lstrc.rows){while(lstrc.rows.length > 1) lstrc.deleteRow(1);}
 for(var i = 0; i < queues.length; i++) {
  var row = lstrc.insertRow(i + 1);
  row.nowrap = true;
  row.vAlign = "center";
  row.align = "center";
  var cell = row.insertCell(0);
  cell.innerHTML = queues[i].qname;
  cell = row.insertCell(1);
  if (document.forms[0].queuepolicy[0].checked)
   cell.innerHTML = '<p>PRIO</p>';
  else if(document.forms[0].queuepolicy[1].checked)
   cell.innerHTML = '<p>WRR</p>';
  cell = row.insertCell(2);
  if (document.forms[0].queuepolicy[0].checked)
   cell.innerHTML = queues[i].prio;
  else if(document.forms[0].queuepolicy[1].checked)
   cell.innerHTML = '<p>--</p>';
  cell = row.insertCell(3);
  if (document.forms[0].queuepolicy[0].checked)
   cell.innerHTML = '<p>--</p>';
  else if(document.forms[0].queuepolicy[1].checked)
   cell.innerHTML = "<input type=\"text\" name=w" + i + " value=" + queues[i].weight + " size=3>";
  cell = row.insertCell(4);
  qcheck= queues[i].enable? " checked":"";
  cell.innerHTML = "<input type=\"checkbox\" name=qen" + i + qcheck + ">";
 }
 document.forms[0].totalbandwidth.value = totalBandwidth;
 document.all.bandwidth_defined[userDefinedBandwidth].checked = true;
}
function bandwidth_defined_check(){
 if (document.all.bandwidth_defined[1].checked)
 {
  document.forms[0].totalbandwidth.disabled = false;
 }
 else
 {
  document.forms[0].totalbandwidth.disabled = true;
 }
}
function on_init(){
 with(document.forms[0]){
  if(policy != 0 && policy !=1)
   policy = 0;
  queuepolicy[policy].checked = true;
  qosen[qosEnable].checked = true;
  qosPly.style.display = qosEnable==0 ? "none":"block";
 }
 queue_display1();
 bandwidth_defined_check();
}
function on_save() {
 with(document.forms[0]) {
  var sbmtstr = "";
  if(queuepolicy[0].checked==true)
   sbmtstr = "policy=0";
  else
   sbmtstr = "policy=1";
  d = parseInt(document.forms[0].totalbandwidth.value, 10);
  if(d<=0){
   alert("Invalid totalbandwidth number!");
   document.forms[0].totalbandwidth.focus();
   return false;
  }
  lst.value = sbmtstr;
  postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
  submit();
 }
}
function qosen_click() {
 document.all.qosPly.style.display = document.all.qosen[0].checked ? "none":"block";
}
function qpolicy_click() {
 queue_display1();
 bandwidth_defined_check();
}
</script>
</head>
<body onload="FinishLoad();if(getElById('ConfigForm') != null)LoadFrame()" onunload="DoUnload()">
<INPUT id=Selected_Menu type=hidden 
            value="Net->QoS" name=Net_Qos>
    <div id="scoop" class="scoop iscollapsed" theme-layout="vertical" vertical-placement="left"
        vertical-layout="wide" scoop-device-type="desktop" vertical-nav-type="compact"
        vertical-effect="shrink" vnavigation-view="view1">
        <div class="scoop-overlay-box">
        </div>
        <div class="scoop-container">
            <div class="scoop-main-container">
                <div class="scoop-wrapper">
                    <nav class="scoop-navbar is-hover" navbar-theme="theme4" active-item-theme="theme0"
                        sub-item-theme="theme2" active-item-style="style0" scoop-navbar-position="absolute">  
							<div class="sidebar_toggle"><a href="#"><i class="icon-close icons"></i></a></div>
							<div class="scoop-inner-navbar"> 
								<div class="scoop-logo"> 
								<a href="https://www.syrotech.com/" target="_blank"><span class="logo-text"><img src="/img/logo.png" class="img-fluid" alt=""/></span></a>
							</div> 
							    <div id="LeftMenu">
							        <SCRIPT language=javascript>
							        MakeLeftMenu('Net','QoS')
							        </SCRIPT>
							    </div>
							</div> 
						</nav>
                    <div class="scoop-content">
                        <div id="Header">
                            <SCRIPT language=javascript>
                            MakeHeader('Gateway Name:','Gateway Type:','Net','QoS','Welcome!','#');
                            </SCRIPT>
                        </div>
                        <div class="">
                            

                             
                                <div class="scoop-inner-content">
									  
								
							  							 
								 <form name="ConfigForm" action="/cgi-bin/net-qos.asp" method="post">
								 <div class="white_box">
									<h1 class="heading_grey heading_margin"><img src="/Dashboard/images/internet.png" width="45" height="40" class="img_sub" alt=""/> QoS</h1>
									<div class="container-fluid">
										<hr class="margin_adjs" />
				<div class="col-md-12 form-group left-field">
        <h2 class="sub_heading " style="color:#fd7e14; width:250px" id="ip_text">IP QoS Configuration</h2>
		</div>
										  <div class="col-md-12 form-group" >

                                                  <div class="custom-control custom-radio">
                                                              
                                                                            <label class="left-field" >IP Qos:</label>
                                                                           <input class="right-field" type="radio" name="qosen" value="0" onclick="qosen_click();">Disable
                                                                  <input class="right-field" type="radio" name="qosen" value="1" onclick="qosen_click();">Enable
                                                                                                </div>
                                                                                </div>
      
            <div class="col-md-12 form-group left-field" id="qosPly">
         <h2 class="sub_heading " style="color:#fd7e14; width:250px" id="ip_text">QoS Queue Config</h2>
            
        <div class="data_common">
            <div class="col-md-12 form-group">
                <div class="custom-control">
                    <p class="left-field">This page is used to configure the QoS policy and Queue. If select PRIO of policy, the lower numbers imply greater precedence. If select WRR of policy, please input the weight of this queue. Default is 40:30:20:10. After configuration, please click 'Apply Changes'</p>
                </div>
            </div>
            <div class="col-md-12 form-group">
                <div class="custom-control">
                    <label class="left-field">Policy:</label>
                    <input type="radio" name="queuepolicy" value="prio" onClick="qpolicy_click();" class="right-field">PRIO
                    <input type="radio" name="queuepolicy" value="wrr" onClick="qpolicy_click();" class="right-field">WRR
                </div>
            </div>
        </div>
        <div class="data_common data_vertical">
            <div class="col-md-12 form-group" id="lstrc">
                <div class="row hdb" align="center">
                    <div class="col-md-2">Queue</div>
                    <div class="col-md-2">Policy</div>
                    <div class="col-md-2">Priority</div>
                    <div class="col-md-2">Weight</div>
                    <div class="col-md-2">Enable</div>
                </div>
                <!-- Add rows dynamically using JavaScript -->
            </div>
        </div>
  
     <div class="col-md-12 form-group left-field" >
            <h2 class="sub_heading " style="color:#fd7e14; width:250px" id="ip_text">QoS Bandwidth Config</p>
            
        </div>
        <div class="data_common">
            <div class="col-md-12 form-group">
                <div class="custom-control">
                    <p class="left-field">This part is used to configure the bandwidth of different type of WAN. If select Disable, CPE will select the appropriate bandwidth based on WAN. If select Enable, User is allowed to configure specific bandwidth of WAN.</p>
                </div>
            </div>
            <div class="col-md-12 form-group">
                <div class="custom-control">
                    <label class="left-field">User Defined Bandwidth:</label>
                    <input type="radio" name="bandwidth_defined" value="0" onClick="bandwidth_defined_check();" class="right-field">Disable
                    <input type="radio" name="bandwidth_defined" value="1" onClick="bandwidth_defined_check();" class="right-field">Enable
                </div>
            </div>
            <div class="col-md-12 form-group">
                <div class="custom-control">
                    <label class="left-field">Total Bandwidth Limit:</label>
                    <input type="text" name="totalbandwidth" id="totalbandwidth" value="1005" class="right-field" style="width:150px">Kb
                </div>
            </div>
        </div>
  
<div class="btn_ctl">
    <input class="link_bg button right-field" type="button" value="Apply Changes" onClick="on_save();">
    <input type="hidden" id="lst" name="lst" value="">
    <input type="hidden" name="submit-url" value="/net_qos_imq_policy.asp">
    <input type="hidden" name="postSecurityFlag" value="">
</div>

                                        <div class="row col-md-12" id="QOSGlobe">
                                        <div class="col-md-4 form-group">
											<label>Uplink Bandwidth:</label>
                                            <input id=Bandwidth class="form-control" maxlength="10" size="16" value="0" name="Bandwidth">
											<label>(8192-1000000000)bps</label>
										</div>

                                        <div class="col-md-12 form-group" >
											<label>Scheduling Policy:</label>
											<div class="col-md-4 form-group">
											<div class=" custom-radio custom-control-inline">
											<!--	  <input type="radio" id="customRadioInline1" name="customRadioInline1" class="custom-control-input">
												  <label class="custom-control-label" for="customRadioInline1">PQ</label>-->
                                                  <input id="Plan" onclick="PlanChange()" type="radio" value="priority" name="Plan" checked/> PQ
												</div>
												<div class="custom-control custom-radio custom-control-inline">
												  <!--<input type="radio" id="customRadioInline2" name="customRadioInline1" class="custom-control-input">
												  <label class="custom-control-label" for="customRadioInline2">WRR</label>-->
                                                  <INPUT id="Plan" onclick="PlanChange()" type=radio value="weight" name="Plan" /> WRR
												</div>
											<div class="custom-control custom-radio custom-control-inline">
												 <!-- <input type="radio" id="customRadioInline3" name="customRadioInline1" class="custom-control-input">
												  <label class="custom-control-label" for="customRadioInline3">CAR</label>-->
                                                  <INPUT id="Plan" onclick="PlanChange()"  type=radio value="car" name="Plan" /> CAR
												</div>
											</div>
										</div>
                                    <div class="col-md-4 form-group" id="EnableForce">
											<div class="custom-control custom-checkbox">
                                            <input class="custom-control-input" id="EnableForceWeight" type="checkbox" value="0" name="EnableForceWeight" />
                                            <label class="custom-control-label" for="EnableForceWeight">Enable Forced Bandwidth:</label>
                                    <input type="hidden" id="EnableForceFlag" name="EnableForceFlag" value="No"/>
											</div>
										</div>

                                        <div class="col-md-4 form-group">
											<div class="custom-control custom-checkbox">
												<label ></label>
                                       <input id="EnableDSCPMark" type="checkbox"  class="custom-control-input" value="0"  name="EnableDSCPMark" />
                                    <input type="hidden" id="EnDscpFlag" name="EnDscpFlag" value="No">
                                            <label class="custom-control-label" for="EnableDSCPMark">Enable DSCP/TC Flag</label>
                                    <input type="hidden" id="Hidden1" name="EnableForceFlag" value="No"/>
											</div>
										</div>

										<div class="col-md-4 form-group">
											<label>Enable 802.1P Flag:</label>
                                            <SELECT id="Enable8021P" size=1 name="Enable8021P" class="custom-select"> 
                          <OPTION value="0" selected>0 Flag</OPTION> 
						  <OPTION value="1" >Transparent Transmission</OPTION> 
						  <OPTION value="2" >Repeated Mark</OPTION>
						  </SELECT>
										</div>
                                        </div>
										
										
										<div class="col-md-12 form-group" id="COMVlanBtn">
                                            <INPUT id="COMVlanCls" class="btn orange_border_btn" onclick="VlanSubmit('/cgi-bin/qos-comvlan.asp')" type=button value="Setting VLAN " name="COMVlanCls">
										</div>

                                        <div class="row col-md-12" id="QueueEdit">
                                        <div class="col-md-12 table-responsive" id="PQEdit"> 
										 <TABLE  class="table table-bordered table_text_center">
                    <TBODY>
                    <TR>
                      <th >Queue</th>
                      <th>Priority</th>
                      <th >Enable</th>
                      </TR>
                    <TR>
                      <TD>Q1</TD>
                      <TD>Highest</TD>
                      <TD>
                      <div class="custom-control custom-checkbox">
                       <INPUT  class="custom-control-input" id="Q1Enable" name="Q1Enable" type="checkbox" value="0" checked/>
                       <label class="custom-control-label" for="Q1Enable"></label>
											</div>
                      </TD></TR>
                    <TR>
                      <TD >Q2</TD>
                      <TD>High</TD>
                      <TD >
                       <div class="custom-control custom-checkbox">
                      <INPUT  class="custom-control-input" id="Q2Enable" name="Q2Enable" type="checkbox" value=0 checked/>
                       <label class="custom-control-label" for="Q2Enable"></label>
											</div>
                      </TD></TR>
                    <TR>
                      <TD>Q3</TD>
                      <TD>Middle</TD>
                      <TD>
                       <div class="custom-control custom-checkbox">
                      <INPUT  class="custom-control-input" id="Q3Enable" name="Q3Enable" type="checkbox" value=0 checked/>
                      <label class="custom-control-label" for="Q3Enable"></label>
											</div>
                      </TD></TR>
                    <TR>
                      <TD>Q4</TD>
                      <TD>Low</TD>
                      <TD>
                       <div class="custom-control custom-checkbox">
                      <INPUT   class="custom-control-input" id="Q4Enable" name="Q4Enable" type=checkbox value=0 />
                         <label class="custom-control-label" for="Q4Enable"></label>
											</div>
                      </TD></TR>

					  </TBODY></TABLE>
										</div>

                                         <div class="col-md-12 table-responsive" id="WRREdit"> 
                                         <TABLE class="table table-bordered table_text_center">
                    <TBODY>
                    <TR>
                      <th >Queue</th>
                      <th  >Weight</th>
                      <th >Enable</th></TR>
                    <TR>
                      <TD >Q1</TD>
                      <TD  ><INPUT class="form-control" id="Q1Weight" name="Q1Weight" size=3 value=""/></TD>
                      <TD >
                        <div class="custom-control custom-checkbox">
                      <INPUT id="Q5Enable" class="custom-control-input" name="Q5Enable" type="checkbox" value=0 checked/>
                        <label class="custom-control-label" for="Q5Enable"></label>
											</div>
                      </TD></TR>
                    <TR>
                      <TD >Q2</TD>
                      <TD ><INPUT class="form-control" id=Q2Weight name="Q2Weight" size=3 value=""/> 
                      <TD >
                        <div class="custom-control custom-checkbox">
                      <INPUT id="Q6Enable" class="custom-control-input" name="Q6Enable" type="checkbox" value=0 checked/>
                      <label class="custom-control-label" for="Q6Enable"></label></div>
                      </TD></TR>
                    <TR>
                      <TD >Q3</TD>
                      <TD ><INPUT class="form-control" id=Q3Weight  name="Q3Weight" size=3 value=""/> 
                      <TD >
                        <div class="custom-control custom-checkbox">
                      <INPUT id="Q7Enable" class="custom-control-input" name="Q7Enable" type=checkbox value=0  checked/>
                        <label class="custom-control-label" for="Q7Enable"></label></div>
                      </TD></TR>
                    <TR>
                      <TD >Q4</TD>
                      <TD ><INPUT class="form-control" id=Q4Weight name="Q4Weight" size=3 value=""/> 
                      <TD >
                        <div class="custom-control custom-checkbox">
                      <INPUT id=Q8Enable class="custom-control-input" name=Q8Enable type=checkbox value=0 />
                        <label class="custom-control-label" for="Q8Enable"></label></div>
                      </TD></TR>

                      </TBODY></TABLE>

                                         </div>

										<div class="col-md-12 table-responsive" > 
                                        
                  <div id="CAREdit" style="width:100%">
                  <TABLE  class="table table-bordered table_text_center">
                    <TBODY>
                    <TR>
                      <th >Queue</th>
                      <th >Bandwidth:(kbps)</th>
                      <th  >Enable</th></TR>
                    <TR>
                      <TD  >Q1</TD>
                      <TD ><INPUT class="form-control" id=Q1Car size=3 name="Q1Car" value=""></TD>
                      <TD >
                        <div class="custom-control custom-checkbox">
                      <INPUT id=Q9Enable type=checkbox class="custom-control-input" name="Q9Enable" checked/>
                        <label class="custom-control-label" for="Q9Enable"></label></div>
                      </TD></TR>
                    <TR>
                      <TD >Q2</TD>
                      <TD ><INPUT class="form-control" id=Q2Car size=3 name="Q2Car" value=""> 
                      <TD >
                        <div class="custom-control custom-checkbox">
                      <INPUT id=Q10Enable type=checkbox class="custom-control-input" name="Q10Enable" checked/>
                        <label class="custom-control-label" for="Q10Enable"></label></div>
                      </TD></TR>
                    <TR>
                      <TD >Q3</TD>
                      <TD ><INPUT class="form-control" id=Q3Car size=3 name="Q3Car" value=""> 
                      <TD  >
                        <div class="custom-control custom-checkbox">
                      <INPUT id=Q11Enable type=checkbox class="custom-control-input" name="Q11Enable" checked/>
                        <label class="custom-control-label" for="Q11Enable"></label></div>
                      </TD></TR>
                    <TR>
                      <TD >Q4</TD>
                      <TD ><INPUT class="form-control" id=Q4Car size=3 name="Q4Car" value=""> 
                      <TD >
                        <div class="custom-control custom-checkbox">
                      <INPUT id=Q12Enable type=checkbox class="custom-control-input" name="Q12Enable" />
                        <label class="custom-control-label" for="Q12Enable"></label></div>
                      </TD></TR>
                    <TR>
                      <TD >Q5</TD>
                      <TD ><INPUT class="form-control" id=Q5Car size=3 name="Q5Car" value=""> 
                      <TD  >
                        <div class="custom-control custom-checkbox">
                      <INPUT id=Q13Enable type=checkbox class="custom-control-input" name="Q13Enable" />
                        <label class="custom-control-label" for="Q13Enable"></label></div>
                      </TD></TR>
                    <TR>
                      <TD >Q6</TD>
                      <TD ><INPUT class="form-control" id=Q6Car size=3 name="Q6Car" value=""> 
                      <TD  >
                        <div class="custom-control custom-checkbox">
                      <INPUT id=Q14Enable type=checkbox class="custom-control-input" name="Q14Enable" />
                       <label class="custom-control-label" for="Q14Enable"></label></div>
                      </TD>
                      </TR>

                      </TBODY></TABLE></DIV>
                                        </div>

                                        </div>
                                        <div class="row">
                                            <input type="hidden" id="Q1EnableFlag" name="Q1EnableFlag" value="Yes">
                            <input type="hidden" id="Q2EnableFlag" name="Q2EnableFlag" value="Yes">
                            <input type="hidden" id="Q3EnableFlag" name="Q3EnableFlag" value="Yes">
                            <input type="hidden" id="Q4EnableFlag" name="Q4EnableFlag" value="No">
                            <input type="hidden" id="Q5EnableFlag" name="Q5EnableFlag" value="No">
                            <input type="hidden" id="Q6EnableFlag" name="Q6EnableFlag" value="No">
					
                            <input type="hidden" id="Q1PValue" name="Q1PValue" value="1">
                            <input type="hidden" id="Q2PValue" name="Q2PValue" value="2">
                            <input type="hidden" id="Q3PValue" name="Q3PValue" value="3">
                            <input type="hidden" id="Q4PValue" name="Q4PValue" value="4">
                            <input type="hidden" id="Q5PValue" name="Q5PValue" value="5">
                            <input type="hidden" id="Q6PValue" name="Q6PValue" value="6">
					
                            <input type="hidden" id="Entry_Const_0" name="Entry_Const_0" value="0">
                            <input type="hidden" id="Entry_Const_1" name="Entry_Const_1" value="1">
                            <input type="hidden" id="Entry_Const_2" name="Entry_Const_2" value="2">
                            <input type="hidden" id="Entry_Const_3" name="Entry_Const_3" value="3">
                            <input type="hidden" id="Entry_Const_4" name="Entry_Const_4" value="4">
                            <input type="hidden" id="Entry_Const_5" name="Entry_Const_5" value="5">
                            <input type="hidden" id="Entry_Const_6" name="Entry_Const_6" value="6">
                            <input type="hidden" id="Entry_Const_7" name="Entry_Const_7" value="7">
                            <input type="hidden" id="Entry_Const_8" name="Entry_Const_8" value="8">
                            <input type="hidden" id="Entry_Const_9" name="Entry_Const_9" value="9">

                            <input type="hidden" id="Entry_Const_10" name="Entry_Const_10" value="10">
                            <input type="hidden" id="Entry_Const_11" name="Entry_Const_11" value="11">
                            <input type="hidden" id="Entry_Const_12" name="Entry_Const_12" value="12">
                            <input type="hidden" id="Entry_Const_13" name="Entry_Const_13" value="13">
                            <input type="hidden" id="ReCommitFlg" name="ReCommitFlg" value="-1">
						 	<input type="hidden" id="TypeRuleFlag" name="TypeRuleFlag" value="typeRule">
	  						<input type="hidden" id="AppRuleFlag" name="AppRuleFlag" value="appRule">
	  						<input type="hidden" id="oldDSCP" name="oldDSCP" value="No">
	  						<input type="hidden" id="old8021P" name="old8021P" value="0">
	  						<input type="hidden" id="oldActive" name="oldActive" value="Yes">
	  						<input type="hidden" id="NAValue" name="NAValue" value="N/A">
                                        </div>
										<div class="col-md-12 form-group" id="AddBtn">
       <INPUT  class="btn orange_border_btn" id="AddCls" onclick="VlanSubmit('/cgi-bin/qos-clsedit.asp')" type=button value="Enter the classification edit page" "name=AddCls">
       <input type="hidden" id="SaveFlag" name="SaveFlag" value="0"> 
       <SCRIPT language=JavaScript type=text/javascript>
           CurQoSShow();
</SCRIPT>
										</div>
										
							      </div>
										<hr class="margin_adjs" />
										<div class="form-footer">
										<button class="btn orange_btn" type="button" onclick="btnSave()" id="btnOK">Save</button>
										<button class="btn grey_btn" type="button" onclick="RefreshPage()" id="btnCancel" >Cancel</button>	
										</div>
								</div>
							</div>                           
                             </form>
						</div>
                        </div>
                    </div>
                </div>
        
		     <div class="text-center p-3" style="background-color: rgb(235 234 234 / 20%);">
© 2022-2025 Copyright :
<a class="text-white" style="color:#fd7e14 !important;" href="#">Syrotech Networks Pvt. Ltd.</a>
</div>
        </div>
  <!--  </div>-->
 
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script type="text/javascript" src="/JS/jquery.min.js"></script>
	<script type="text/javascript" src="/JS/bootstrap.min.js"></script>
<!--    <script type="text/javascript" src="/Dashboard/Modules/leftmenu/js/Loader.js"></script>-->
    <script type="text/javascript"  src="/JS/popper.min.js"></script>
    <script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/scoop.min.js"></script>
    <script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/left_menu.js"></script>
    <script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/lib/jquery.mCustomScrollbar.concat.min.js"></script>
    <script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/lib/jquery.mousewheel.min.js"></script>
   
</body>
</html>
