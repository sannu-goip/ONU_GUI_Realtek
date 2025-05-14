<% SendWebHeadStr();%>
<title>Tracert <% multilang("45" "LANG_DIAGNOSTICS"); %></title>
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
     color: #f58220;
     border-bottom: 2px solid transparent;
     transition: color 0.3s, border-bottom 0.3s;
   }
   .list_header ul a:hover, .list_header ul a.active{
     color: #f58220;
     border-bottom: 2px solid #f58220;
   }
 </style>
<script language="javascript" src="common.js"></script>
<script language="javascript">
function on_init()
{
 if(document.getElementById("result").innerHTML == "Inform...")
 setTimeout(function(){
      window.location.reload(true);
   }, 1000);
}
</script>
</head>
<body>
<div class="breadcrum_box"> <ul><li><a href="#">Diagnose</a></li><li>Inform</li><li class="welcom" valign="bottom" align="middle" width="120">Welcome!</li><li valign="bottom"></li> </ul><div class="help_icon"> <a href="/cgi-bin/help_content.asp#UPNP Configuration" target="_blank"> <svg id="help_icon_svg" xmlns="http://www.w3.org/2000/svg" width="38" height="38" viewBox="0 0 38 38"> <path id="help_Icon" data-name="help_Icon" class="cls-1" d="M18.746,0A19,19,0,1,0,38,18.744,19,19,0,0,0,18.746,0ZM18.69,30.565l-0.1,0a2.766,2.766,0,0,1,.065-5.531l0.094,0A2.766,2.766,0,1,1,18.69,30.565Zm6.8-13.49a12.558,12.558,0,0,1-2.268,2.031l-1.16.8a3.147,3.147,0,0,0-1.165,1.418,2.933,2.933,0,0,0-.18,1.19l0,0.186H16.286l0.013-.375c0.054-1.54.092-2.446,0.73-3.194a18.823,18.823,0,0,1,3.3-2.658,3.485,3.485,0,0,0,.782-0.8,2.816,2.816,0,0,0,.67-1.641,3.2,3.2,0,0,0-.608-1.89,2.531,2.531,0,0,0-2.19-.823,2.389,2.389,0,0,0-2.213,1.023,4.112,4.112,0,0,0-.67,2.21v0.189H11.539l0.008-.2c0.118-2.8,1.116-4.809,2.965-5.984a7.809,7.809,0,0,1,4.295-1.127,9.269,9.269,0,0,1,5.54,1.595A5.531,5.531,0,0,1,26.587,13.8,5.461,5.461,0,0,1,25.487,17.076Z"></path> </svg> </a> </div></div>
 
   
   <div class="list_header"> 
      <ul>
        <li><a href="/ping.asp">Ping test </a></li>
        <li><a href="/ping6.asp">ping6 test</a></li>
        <li><a href="/tracert.asp">Tracert test</a></li>
        <li><a href="/tracert6.asp">Tracert 6 test </a></li>
        <li><a href="/diagnose_tr069.asp" class="active" >Inform upload </a></li>
      </ul>
    </div>

<div class="intro_main ">
<div style="
    display: flex;
    align-items: center;
    gap: 5px;
">
<div><img src="/img/wan.png" style="width:47px;"></div>
<div style="margin-left: -8px;padding-top: 7px;"> <p class="intro_title">Inform</p></div></div>

 <p class="intro_content">This page is used manual inform to acs server</p>
</div>
<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" alink="#000000" link="#000000" vlink="#000000" onLoad="on_init();">
 <form id="form" action="/boaform/admin/formTr069Diagnose" method="post">
 <div class="data_common data_common_notitle">
  <table >
   <tr>
    <th width="30%">Inform Status</th>
    <td><% getInfo("tr069Inform"); %></td>
   </tr>
  </table>
 </div>
 <div class="btn_ctl">
  <input class="link_bg" type="submit" value=" <% multilang("503" "LANG_GO"); %>" name="go" >
  <input type="hidden" name="submit-url" value="/diagnose_tr069.asp">
 </div>
</body>
</html>
