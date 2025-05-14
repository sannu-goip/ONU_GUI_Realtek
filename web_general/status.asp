<% SendWebHeadStr();%>
    <html lang="en">

    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link rel="icon" href="" type="image/x-icon">
        <link rel="stylesheet" type="text/css" href="/Dashboard/Modules/fontawesome/css/font-awesome.min.css">
        <title></title>
        <link href="/Dashboard/Modules/leftmenu/css/scoop-vertical.css" type="text/css" rel="stylesheet">
        <link rel="stylesheet" href="/Dashboard/css/bootstrap.min.css" type="text/css">
        <link href="/Dashboard/Modules/leftmenu/css/simple-line-icons.css" type="text/css" rel="stylesheet">
        <link href="/Dashboard/Modules/leftmenu/css/jquery.mCustomScrollbar.css" type="text/css" rel="stylesheet">

        <link href="/Dashboard/css/custom.css" type="text/css" rel="stylesheet">
        <link href="/Dashboard/css/custom-nav1.css" type="text/css" rel="stylesheet">
        <script language=javascript src="/Dashboard/JS/jquery.js"></SCRIPT>
        <SCRIPT type="text/javascript" src="/Dashboard/JS/menu.js"></SCRIPT>
        <SCRIPT type="text/javascript" src="/Dashboard/JS/util.js"></SCRIPT>
        <SCRIPT language=JavaScript src="/Dashboard/JS/printtable.js"></SCRIPT>
        <SCRIPT language=JavaScript src="/Dashboard/JS/menu.js"></SCRIPT>


        <style type="text/css">
            th {
                font-size: 13px !important;
            }

            .close {
                color: red;
            }

            #packets_table th {
                text-align: center;
            }

            #packets_table {
                border-collapse: collapse;
                width: 100%;
                table-layout: fixed;
            }

            #packets_table th,
            #packets_table td {
                text-align: center;
                vertical-align: middle;
                padding: 6px 8px;
                width: 14.28%;
            }


            @media only screen and (min-device-width: 960px)and (max-device-width: 2000px) {

                .front-img {
                    width: 100%;
                    height: 314px !important;
                    background-repeat: no-repeat;
                    background-image: url(../img/FRONT.png);
                    background-size: cover;
                }

                .mobile-iconfront {
                    width: 54% !important;
                    margin-left: 58px !important;
                    margin-top: 90px !important;


                }

                .mobile-iconfront-text {
                    padding-left: 99 !important;

                }

                .mobile-iconfront {
                    margin-left: 125px;
                }

                .mid-divice {
                    width: 42%;
                    margin-left: 166px !important;
                    margin-top: 50px;
                }


            }



            @media screen and (min-device-width: 200px) and (max-device-width: 768px) {

                .front-img {
                    width: 100%;
                    height: 241px !important;
                    background-repeat: no-repeat;
                    background-image: url(../img/FRONT.png);
                    background-size: cover;
                }

                .mobile-iconfront {
                    width: 48% !important;
                    margin-left: 52px !important;
                    margin-top: 78px !important;


                }

                .mobile-iconfront-text {
                    padding-left: 62px !important;
                }

                .mobile-iconfront {
                    margin-left: 125px;
                }

                .mid-divice {
                    width: 45%;
                    margin-left: 124px !important;
                    margin-top: 42px;
                }

            }

            .sidebar_toggle {
                visibility: hidden;
            }

            .active {
                display: contents;
            }

            .hidden {
                display: none;
            }

            .p-3 {
                padding: 3rem !important;
            }

            .px-3 {
                padding-inline: 3rem !important;
            }

            refresh
        </style>
        <script>
            function LogOut(obj) {
                submit();
                return true;
            }
        </script>

        <style>
            #usb {
                border-top: 1px solid #D3D3D3;
                margin-top: 10px;
                margin-left: 30px;

                width: 705px;

                padding: 2px;

                display: inline-flex;

            }

            #usb table th {

                margin-left: -27px;

                width: 365px;
                /* Adjust the value as needed */

                font-weight: bold;

                padding: 2px;

            }

            #usb table td {

                margin-left: 750px;

                width: 740px;

                padding: 2px;
                /* Adjust the value as needed */



            }

            #usb table (td colspan="2") {

                gap: 30px;

            }

            .data_common_notitle {
                border-top: 1px solid #D3D3D3;
                margin-top: 10px;
            }

            .data_common {
                padding: 1px;
                background: #fff;
                border: 1px solidrgb(146, 122, 122);
                border-top: 0;
            }

            .data_common table {
                border-collapse: separate;
                width: 100%;
                border-spacing: 2px;
                background: #fff;
            }

            .data_common table th {
                font-weight: bold;
            }

            .data_common table td,
            .data_common table th {
                background: #F5F5F5;
                padding: 5px 6px;
            }

            th {
                text-align: left;
            }

            .data_common table td,
            .data_common table th {
                background: #F5F5F5;
                padding: 5px 6px;
            }

            .data_common {
                padding: 1px;
                background: #fff;
                border: 1px solid #D3D3D3;
                border-top: 0;
            }

            .data_common_notitle {
                border-top: 1px solid #D3D3D3;
                margin-top: 10px;
            }

            .data_common {
                padding: 1px;
                background: #fff;
                border: 1px solid #D3D3D3;
                border-top: 0;
            }

            #usb1 {
                border-top: 1px solid #D3D3D3;
                margin-top: 10px;
                margin-left: 30px;

                width: 909px;

                padding: 2px;

                display: inline-flex;

            }

            #usb1 table th {

                margin-left: -27px;

                width: 365px;
                /* Adjust the value as needed */

                font-weight: bold;

                padding: 2px;

            }

            #usb1 table td {

                margin-left: 750px;

                width: 740px;

                padding: 2px;
                /* Adjust the value as needed */



            }

            #usb1 table tbody th {
                text-align: center;
            }

            #usb1 table (td colspan="2") {

                gap: 30px;

            }
        </style>
        <style>
            .pon_table_modal tr th{
                width: 273px;
            }
        .wan_table_border{
    border: none !important;
}
 #wanipv6_list {
        border-collapse: collapse;
    border: 1px solid #ccc;   
    table-layout: fixed;
}
#wanConfTable{
    border-collapse: collapse;
    border: 1px solid #ccc;  
}
#wanConfTable th, #wanConfTable td, #wanipv6_list td, #wanipv6_list th{
     border: 1px solid #ccc;
     text-align: center;
}
            #wan-custom-modal {
                position: fixed;
                z-index: 1050;
                top: 16px;
                left: 215px;
            }
        </style>

        <script>
            var getObj = null;

            function disButton(id) {
                getObj = document.getElementById(id);
                window.setTimeout("getObj.disabled=true", 100);
                return false;
            }
            function on_init() {
                if (!1) {
                    if (document.getElementById) {
                        document.getElementById('ipv6DefaultGW').style.display = 'none';
                    }
                    else {
                        if (document.layers == false) {
                            document.all.ipv6DefaultGW.style.display = 'none';
                        }
                    }
                }
                return true;
            }
            function on_submit(obj) {
                obj.isclick = 1;
                setCookie('displayWanInfo', '1');
                event.stopPropagation();
                postTableEncrypt(document.status.postSecurityFlag, document.status);
                return true;
            }



        </script>

    </head>

    <body onload="FinishLoad();if(getElById('ConfigForm') != null)LoadFrame()" onunload="DoUnload()"
        style="height: auto;">
<div class="breadcrum_box">
                                    <ul style="display: flex; align-items: center;">
                                        <li><a href="#">Status</a></li>
                                        <div>
                                        <a href="https://www.facebook.com/SyrotechNetworks" target="_blank">
                                            <image src="/img/facebook.png" style="width:30px">
                                        </a>
                                        <a href="https://www.linkedin.com/uas/login?session_redirect=https%3A%2F%2Fwww.linkedin.com%2Fcompany%2F13408012%2Fadmin%2F"
                                            target="_blank">
                                            <image src="/img/linkedin.png" style="width:30px">
 
 
                                        </a>
                                        <a href="https://twitter.com/Syrotech" target="_blank">
                                            <image src="/img/twitter.png" style="width:30px">
                                        </a>
                                        <a href="https://www.youtube.com/channel/UCxKPAshBZ3BjsKoryZqd1jg?reload=9"
                                            target="_blank">
                                            <image src="/img/youtube.png" style="width:30px">
                                        </a> <a href="https://www.instagram.com/syrotechnetworks/" target="_blank">
                                            <image src="/img/insta.png" style="width:30px">
                                        </a>
 
                                    </div>
                                    </ul>
                                </div>
        <div>
            <div class="row p-2 px-3" style="background-color:#fff;">
                <div class="col-xl-6 col-md-6">
                    <div class="card" style="height:400px">
                        <div class="card-header" style="height:125px">
                            <span>
                                <img src="/img/staush.png" style="width:45px;padding-bottom:5px;">
                            </span>
                            <span><b style="font-size: 18px;padding-top:5px;"><span
                                        style="vertical-align:middle;">Device
                                        Information</b></span>
                            <hr>
                            <span>On this page, you can view basic device information </span>
                        </div>
                        <div class="card-body table-bordered table-responsive">
                            <a style="text-decoration: none;" href="" data-toggle="modal" data-target="#HERO01">
                                <table class="table  table-bordered table-striped">
                                    <tbody>
                                        <tr>
                                            <th style="width:25%">
                                                <% multilang("99" "LANG_DEVICE_NAME" ); %>
                                            </th>
                                            <td style="width:75%">
                                                <SCRIPT language=javascript>
                                                    document.write('<% getInfo("name"); %>');
                                                </SCRIPT>
                                                &nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <th style="width:25%">
                                                <% multilang("542" "LANG_SERIAL_NUMBER" ); %>
                                            </th>
                                            <td style="width:75%">
                                                <SCRIPT language=javascript>
                                                    document.write('<% fmgpon_checkWrite("fmgpon_sn"); %>');
                                                </SCRIPT>
                                                &nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <th style="width:25%">Description: </th>
                                            <td style="width:75%">
                                                <SCRIPT language=javascript>
                                                    document.write('&quot;DUAL BAND+ 2GE+1POTS+1USB-XPON&quot;');
                                                </SCRIPT>
                                                &nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <% HwVer(); %>
                                        </tr>
                                    </tbody>
                                </table>
                                <button class="btn orange_btn" href="" data-toggle="modal" data-target="#HERO01">View
                                    More
                                </button>
                            </a>
                        </div>

                    </div>
                </div>

                <div class="col-xl-6 col-md-6">
                    <div class="card " style="height:400px">
                        <div class="card-header" style="padding-bottom:18px">
                            <span>
                                <img src="/img/internet.png" style="width:35px;padding-bottom:5px;">
                            </span>
                            <span><b style="font-size: 18px;"><span style="vertical-align:middle;">
                                        WAN
                                        Information</b></span></span>
                            <hr>
                            <span>
                                you can query the connection and line status of the WAN port.
                            </span>
                        </div>
                        <div class="card-body table-bordered table-responsive">
                            <a style="text-decoration: none;" href="" data-toggle="modal">
                                <table class="table  table-bordered table-striped">
                                    <tbody>
                                        <tr>
                                                                <th style="width:40%">Connection Type</th>
                                                                <td style="width:75%" id="wan_connection_type">
                                                                    
                                                                    &nbsp;
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <th style="width:40%">Status</th>
                                                                <td style="width:75%" id="wan_status_type">
                                                                     
                                                                    &nbsp;
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <th style="width:40%">IP Address </th>
                                                                <td style="width:75%" id="wan_ipaddress_type">
                                                                    
                                                                    &nbsp;
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <th style="width:40%">Gateway</th>
                                                                <td style="width:75%" id="wan_gateway_type">
                                                                    
                                                                </td>
                                                            </tr>
                                    </tbody>
                                </table>

                            </a>
                            <button class="btn orange_btn" onclick="toggleWanInfo()">View More
                            </button>
                            <script>
    document.addEventListener("DOMContentLoaded", function () {
        const table = document.getElementById("wanConfTable");

        if (table) {
            const secondRow = table.rows[1];

            if (secondRow) {
                const connectionTypeColumn = secondRow.cells[2];
                const connectionTypeTd = document.getElementById("wan_connection_type");
                if (connectionTypeColumn && connectionTypeTd) {
                    connectionTypeTd.innerHTML = connectionTypeColumn.textContent.trim();
                }
                const statusColumn = secondRow.cells[7];
                const statusTd = document.getElementById("wan_status_type");
                if (statusColumn && statusTd) {
                    statusTd.innerHTML = statusColumn.textContent.trim();
                }
                const ipAddressColumn = secondRow.cells[5];
                const ipAddressTd = document.getElementById("wan_ipaddress_type");
                if (ipAddressColumn && ipAddressTd) {
                    ipAddressTd.innerHTML = ipAddressColumn.textContent.trim();
                }
                const gatewayColumn = secondRow.cells[6];
                const gatewayTd = document.getElementById("wan_gateway_type");
                if (gatewayColumn && gatewayTd) {
                    gatewayTd.innerHTML = gatewayColumn.textContent.trim();
                }
            }
        }
    });
</script>
                            <div class="modal fade" id="HERO" role="dialog">
                                <div class="modal-dialog modal-lg">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <span>
                                                <img src="/img/internet.png" style="width:35px;padding-bottom:5px;">
                                            </span>
                                            <h2 class="modal-title"><span style="vertical-align:middle;">&nbsp;WAN
                                                    Information</h2></span>
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        </div>
                                        <div class="modal-body">
                                            <p>On this page, you can query the connection and line
                                                status of the WAN port.</p>
                                            <p>
                                                <b>IPv4 Information(Click the form for details)</b>
                                            </p>
                                            <a style="text-decoration: none;" href="" data-toggle="modal"
                                                data-target="#HERO077">

                                                <div class="column" <% checkWrite("bridge-only"); %>>
                                                    <div class="column_title">
                                                        <div class="column_title_left"></div>
                                                        <p>
                                                            <% multilang("11" "LANG_WAN" ); %>&nbsp;<%
                                                                    multilang("238" "LANG_CONFIGURATION" ); %>
                                                        </p>
                                                        <div class="column_title_right"></div>
                                                    </div>
                                                    <div class="data_common data_vertical">
                                                        <table>
                                                            <% wanConfList(); %>
                                                        </table>
                                                    </div>
                                                </div>
                                                <% wan3GTable(); %>
                                                    <% wanPPTPTable(); %>
                                                        <% wanL2TPTable(); %>
                                                            <% wanIPIPTable(); %>
                                                                <div class="btn_ctl">
                                                                    <input type="hidden" value="/admin/status.asp"
                                                                        name="submit-url">
                                                                    <input class="link_bg" type="submit"
                                                                        value="<% multilang(" 443" "LANG_REFRESH" ); %>"
                                                                    name="refresh" onClick="return
                                                                    on_submit(this)">&nbsp;&nbsp;
                                                                    <!--
                                                                        <input type="button" value="Modify" name="modify" onClick="modifyClick('/admin/date.asp')">
                                                                        -->
                                                                    <input type="hidden" name="postSecurityFlag"
                                                                        value="">
                                                                </div>


                                            </a>

                                            <p><b>IPv6 Information(Click the form for details)</b>
                                            </p>
                                            <a style="text-decoration: none;" href="" data-toggle="modal"
                                                data-target="#HERO078">
                                                <p style="text-decoration: none;">
                                                    <table class="table table-striped">
                                                        <% wanip6ConfList(); %>
                                                            <tbody>

                                                            </tbody>
                                                    </table>
                                            </a>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


            </div>
            <div class="row p-2 px-3" style="background-color:#fff;">
                <div class="col-xl-6 col-md-6">

                    <div class="card " style="height:400px; border: 1px solid rgba(0, 0, 0, .125);">
                        <div class="card-header ">
                            <span>
                                <img src="/img/link_icon.png" style="width:45px;padding-bottom:5px;">
                            </span>
                            <span> <b style="font-size:18px;"><span style="vertical-align:middle;">
                                        PON <% multilang("3" "LANG_STATUS" ); %></b></span></span>
                            <hr>
                            <% multilang("107" "LANG_PAGE_DESC_PON_STATUS" ); %>
                        </div>
                        <div class="card-body table-bordered table-responsive ">
                            <a style="text-decoration: none;" href="" data-toggle="modal" data-target="#HERO02">

                                <table class="table table-striped ">
                                    <tbody>
                                        <tr>
                                            <th>
                                                <% multilang("2929" "LANG_PON_MODE" ); %>
                                            </th>
                                            <td>
                                                <% getInfo("ponmode"); %>
                                            </td>

                                        </tr>
                                        <tr>
                                            <th style="width: 30%">
                                                <% multilang("109" "LANG_VENDOR_NAME" ); %>
                                            <td>
                                                <% ponGetStatus("vendor-name"); %>
                                            </td>

                                        </tr>

                                        <tr>
                                            <th>
                                                <% multilang("110" "LANG_PART_NUMBER" ); %>
                                            </th>
                                            <td>
                                                <% ponGetStatus("part-number"); %>
                                            </td>


                                        </tr>

                                        <tr>
                                            <th>
                                                <% multilang("114" "LANG_RX_POWER" ); %>
                                            </th>
                                            <td>
                                                <% ponGetStatus("rx-power"); %>
                                            </td>

                                        </tr>



                                    </tbody>
                                </table>
                                <button class="btn orange_btn" href="" data-toggle="modal" data-target="#HERO02">View
                                    More</button>
                            </a>
                        </div>
                    </div>
                </div>

                <div class="col-xl-6 col-md-6">
                    <div class="card" style="border:2px solid rgba(0, 0, 0, .125); height:399px">
                        <div class="card-header" style="height:110px">
                            <span>
                                <img src="/img/voip.png" style="width:45px;padding-bottom:5px;">
                            </span>
                            <span><b style="font-size:18px;"><span style="vertical-align:middle;">Voice
                                        Info</b></span></span>
                            <hr>
                            Status information of voice users and reset the voice function.
                        </div>





                        <div class="card-body">
                            <a style="text-decoration: none;" href="" data-toggle="modal" data-target="#HERO04">
                                <div id="proxyAPIContent_front" style="display: none;">
                                    <%voip_general_get("proxy");%>
                                </div>
                                <div id="voip_table_data" style="display: none;">

                                    <table>
                                        <tr>
                                            <td width="30%"><b>
                                                    <% multilang("213" "LANG_PORT" ); %>
                                                </b></td>
                                            <td width="40%"><b>
                                                    <% multilang("926" "LANG_NUMBER" ); %>
                                                </b></td>
                                            <td width="30%"><b>
                                                    <% multilang("3" "LANG_STATUS" ); %>
                                                </b></td>
                                        </tr>
                                        <% voip_general_get("registerStatus"); %>
                                    </table>
                                </div>


                                <table class="table table-bordered table-striped">
                                    <thead></thead>
                                    <tbody>
                                        <tr>
                                            <th style="width: 50%;">Display Name</th>
                                            <td id="display_data">

                                            </td>
                                        </tr>
                                        <tr>
                                            <th style="width: 50%;">Number</th>
                                            <td id="display_number_data">

                                            </td>
                                        </tr>
                                        <tr>
                                            <th style="width: 50%;">Associated POTS Port</th>
                                            <td id="display_port_data"></td>
                                        </tr>
                                        <tr>
                                            <th style="width: 50%;">Status</th>
                                            <td id="display_register_data">

                                            </td>
                                        </tr>

                                    </tbody>

                                </table>
                                <button class="btn orange_btn" href="" data-toggle="modal" data-target="#HERO04">View
                                    More</button>
                            </a>

                        </div>

                    </div>
                </div>

            </div>
        </div>
        <div class="col-xl-12 col-md-12 mb-4">
            <div class="card" style="margin-left: 24px;margin-right: 23px;">
                <div class="card-header">
                    <span>
                        <img src="/img/logo-user.png" style="width:45px;padding-bottom:5px;">
                    </span>
                    <span><b style="font-size:18px;"><span style="vertical-align:middle;">
                                User Info</b></span></span>

                    <hr>
                    <span>
                        On this page, you can query the WLAN information,& user-side Ethernet
                        port information.
                    </span>

                </div>

                <div class="card-body table-responsive">
                    <p style="color:#f58220;"><b>WIFI Devices</b></p>
                    <table class="table table-bordered wi-fi_table">
  <% wirelessClientList(); %>
                    </table>
                   <script>
    document.addEventListener("DOMContentLoaded", function () {
        // Get the table containing the rows generated by wirelessClientList
        const table = document.querySelector(".wi-fi_table");

        // Ensure the table exists
        if (table) {
            // Get the first row (header row) and modify the 8th <th>
            const headerRow = table.querySelector("tr");
            if (headerRow) {
                const thElements = headerRow.querySelectorAll("th");
                if (thElements.length >= 8) {
                    // Replace the 8th <th> with 'Operations'
                    thElements[7].textContent = "Operations";
                } else {
                    // If the 8th <th> doesn't exist, create it
                    const newTh = document.createElement("th");
                    newTh.textContent = "Operations";
                    headerRow.appendChild(newTh);
                }
            }

            // Get all rows except the header row
            const rows = table.querySelectorAll("tr:not(:first-child)");

            // Loop through each row and modify the 8th <td>
            rows.forEach((row, rowIndex) => {
                const tdElements = row.querySelectorAll("td");
                if (tdElements.length >= 8) {
                    // Remove the 8th <td>
                    tdElements[7].remove();
                }

                // Create a new <td> with an input field
                const newTd = document.createElement("td");
                const applicationButton = document.createElement("input");
                applicationButton.type = "button";
                applicationButton.value = "Application";
                applicationButton.classList.add("link_bg");
                applicationButton.setAttribute("data-toggle", "modal");
                applicationButton.setAttribute("data-target", "#actionModal");

                // Add an event listener to open the modal with dynamic content
                applicationButton.addEventListener("click", function () {
                    openModal(``);
                });

                // Append the input field to the new <td>
                newTd.appendChild(applicationButton);

                // Append the new <td> to the row
                row.appendChild(newTd);
            });
        } else {
            console.error("Table with class 'wi-fi_table' not found.");
        }

        // Function to open the modal and set its content
        function openModal(message) {
            const modalBody = document.querySelector("#actionModal .modal-body");
            if (modalBody) {
                modalBody.innerHTML = `
                    <p>${message}</p>
                    <button class="btn grey_btn m-1"><a href="fw-macfilter_rg.asp" style="text-decoration:none; color:black;">Mac Filter</a></button><br>
                    <button class="btn grey_btn m-1"><a href="fw-ipportfilter_rg.asp" style="text-decoration:none; color:black;">Port Mapping</a></button><br>
                    <button class="btn grey_btn m-1"><a href="domainblk.asp" style="text-decoration:none; color:black;">Domain Blocking</a></button>
                `;
            }
        }
    });
</script>
                    <p style="color:#f58220;"><b>WIRED Devices</b></p>
                    
                    <table class="table table-bordered wired_table">
  <tr>
   <th width="25%"><% multilang("89" "LANG_IP_ADDRESS"); %></th>
   <th width="25%"><% multilang("92" "LANG_MAC_ADDRESS"); %></th>
   <th width="25%"><% multilang("162" "LANG_EXPIRED_TIME_SEC"); %></th>
   <th width="25%">Operations</th>
  </tr>
  <% dhcpClientList(); %>
 </table>
<script>
    document.addEventListener("DOMContentLoaded", function () {
        // Get the table containing the rows generated by dhcpClientList
        const table = document.querySelector(".wired_table");

        // Ensure the table exists
        if (table) {
            // Get all rows except the header row
            const rows = table.querySelectorAll("tr:not(:first-child)");

            // Loop through each row and add a fourth <td> with two input fields
            rows.forEach((row, rowIndex) => {
                const newTd = document.createElement("td");
                newTd.style.display = "flex"; // Set display to flex for proper alignment
                // Create the second input field (Application Button)
                const applicationButton = document.createElement("input");
                applicationButton.type = "button";
                applicationButton.value = "Application";
                applicationButton.classList.add("link_bg");
                applicationButton.setAttribute("data-toggle", "modal");
                applicationButton.setAttribute("data-target", "#actionModal");
                applicationButton.addEventListener("click", function () {
                    openModal(``);
                });
                newTd.appendChild(applicationButton);

                // Append the new <td> to the row
                row.appendChild(newTd);
            });
        } else {
            console.error("Table not found.");
        }

        // Function to open the modal and set its content
        function openModal(message) {
            const modalBody = document.querySelector("#actionModal .modal-body");
            if (modalBody) {
                modalBody.innerHTML = `
                    <p>${message}</p>
                    <button class="btn grey_btn m-1"><a href="fw-macfilter_rg.asp" style="text-decoration:none; color:black;">Mac Filter</a></button><br>
                    <button class="btn grey_btn m-1"><a href="fw-ipportfilter_rg.asp" style="text-decoration:none; color:black;">Port Mapping</a></button><br>
                    <button class="btn grey_btn m-1"><a href="domainblk.asp" style="text-decoration:none; color:black;">Domain Blocking</a></button>
                `;
            }
        }
    });
</script>
<div class="modal fade" id="actionModal" tabindex="-1" role="dialog" aria-labelledby="actionModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <p style="font-size: 24px; font-weight: 600;" class="intro_title1"><img src="/img/logo-user.png" style="width:45px;">User Device Info</p>
                <h5 class="modal-title" id="actionModalLabel"></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div style="margin-left: 20px;" class="modal-body">
                
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
                    <button class="btn orange_btn" data-toggle="modal" data-target="#HERO08">View More</button>
                </div>

            </div>
        </div>

        <div class="col-xl-12 col-md-12 mb-4">
            <div class="card " style="margin-left: 23px;margin-right: 20px;">
                <div class="card-header">
                    <span>
                        <img src="/img/TR069.png" style="width:45px;padding-bottom:5px;">
                    </span>
                    <span> <b style="font-size:18px;"><span style="vertical-align:middle;">&nbsp;&nbsp;<%
                                    multilang("2984" "LANG_TR069_STATUS" ); %></b></span></span>
                    <hr>
                    <p>
                        <% multilang("2985" "LANG_THIS_PAGE_SHOWS_THE_TR069_INFORM_STATUS" ); %>
                    </p>
                </div>


                <div class="card-body">
                    <table class="table table-bordered table-striped">
                        <tr>
                            <!--  <th>Interaction Build</th> -->
                            <th colspan="2" class="text-left modal-title"><span>
                                    <img src="/img/TR069.png" style="width: 30px">
                                </span>TR069 <% multilang("3" "LANG_STATUS" ); %>
                            </th>



                        </tr>
                        <tr>
                            <th class="table-headcol text-center modal-title">
                                <% multilang("2986" "LANG_TR069_INFORM_STATUS" ); %>
                            </th>
                            <th class="table-headcol text-center modal-title">
                                <% multilang("2987" "LANG_TR069_CON_REQUEST_STATUS" ); %>
                            </th>



                        </tr>
                        <tr>
                            <td>
                                <% getInfo("tr069Inform"); %>
                            </td>
                            <td>
                                <% getInfo("tr069Connect"); %>
                            </td>

                        </tr>
                    </table>

                </div>

            </div>
        </div>
        <script>
            function toggleWanInfo() {
                const modal = document.getElementById('wan-custom-modal');
                const backdrop = document.getElementById('wan-cutom-modal-backdrop');
                if (modal.style.display === "none") {
                    modal.style.display = "block";
                    backdrop.style.display = "block";
                } else {
                    modal.style.display = "none";
                    backdrop.style.display = "none";
                }
            }

            // On page load, reset the state to '0' and hide the modal
            window.addEventListener('DOMContentLoaded', () => {
                const modal1 = document.getElementById('wan-custom-modal');
                const state = getCookie('displayWanInfo');
                if (state === '1') {
                    modal1.style.display = "block";
                    document.getElementById('wan-cutom-modal-backdrop').style.display = "block";
                    setCookie('displayWanInfo', '0'); // Set cookie to show on next load
                } else {
                    modal1.style.display = "none";
                    document.getElementById('wan-cutom-modal-backdrop').style.display = "none";
                }
            });

            function setCookie(key, value, days = 365) {
                const expires = new Date(Date.now() + days * 864e5).toUTCString();
                document.cookie = `${encodeURIComponent(key)}=${encodeURIComponent(value)}; path=/; expires=${expires}`;
            }

            function getCookie(key) {
                const cookies = document.cookie.split('; ');
                for (let cookie of cookies) {
                    const [cookieKey, cookieValue] = cookie.split('=');
                    if (decodeURIComponent(cookieKey) === key) {
                        return decodeURIComponent(cookieValue);
                    }
                }
                return null;
            }
        </script>
        <div id="wan-custom-modal" style="display:none;">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <span>
                            <img src="/img/internet.png" style="width:35px;padding-bottom:5px;">
                        </span>
                        <h2 class="modal-title"><span style="vertical-align:middle;">&nbsp;WAN
                                Information</h2></span>
                        <button type="button" class="close" onclick="toggleWanInfo()">&times;</button>
                    </div>
                    <div class="modal-body">
                        <form action=/boaform/admin/formStatus method=POST name="status">
                            <p>On this page, you can query the connection and line
                                status of the WAN port.</p>
                            <p>
                                <b>IPv4 Information(Click the form for details)</b>
                            </p>
                            <div class="column" <% checkWrite("bridge-only"); %>>
                                <div class="column_title">
                                    <div class="column_title_left"></div>
                                    
                                    <div class="column_title_right"></div>
                                </div>
                                <div class="data_common data_vertical wan_table_border">
                                    <table id="wanConfTable">
                                        <% wanConfList(); %>
                                    </table>
                                </div>
                            </div>
                            <% wan3GTable(); %>
                                <% wanPPTPTable(); %>
                                    <% wanL2TPTable(); %>
                                        <% wanIPIPTable(); %>
                                            <div class="btn_ctl">
                                                <input type="hidden" value="/status.asp" name="submit-url">

                                                <!--
                                <input type="button" value="Modify" name="modify" onClick="modifyClick('/admin/date.asp')">
                                -->
                                                <input type="hidden" name="postSecurityFlag" value="">
                                            </div>
                        </form>

                        <form action=/boaform/admin/formStatus method=POST name="status_ipv6">
                            <div class="column">
                                <div class="column_title">
                                    <div class="column_title_left"></div>
                                   <p>
                                <b>IPv6 Information(Click the form for details)</b>
                            </p>
                                    <div class="column_title_right"></div>
                                </div>
                                <div class="data_common data_vertical wan_table_border">
                                    <table id="wanipv6_list">
                                        <% wanip6ConfList(); %>
                                    </table>
                                </div>
                            </div>
                            <div class="btn_ctl">
                                <input type="hidden" value="/status.asp" name="submit-url">

                                <input type="hidden" name="postSecurityFlag" value="">
                            </div>
                        </form>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" onclick="toggleWanInfo()">Close</button>
                </div>
            </div>
        </div>

        <div id="wan-cutom-modal-backdrop" style="display:none;" class="modal-backdrop fade show"></div>


        <div class="modal fade show" id="HERO077" role="dialog">
            <div class="modal-dialog modal-lg">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <span>
                            <img src="/img/wanip.png" style="width:45px;padding-bottom:5px;">
                        </span>
                        <h2 class="modal-title"><span style="vertical-align:middle;">&nbsp;IPv4 Information
                        </h2></span>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>

                    <div class="modal-body">
                        <table class="table table-bordered table-striped">
                            <tbody id="modal_table_body">
                                <!-- Dynamic content will be inserted here -->
                            </tbody>
                            <tbody>
                                <tr>
                                    <th style="border: 1px solid #ccc;">NTP Server</th>
                                    <td><% getInfo("ntpServerHost2"); %></td>
                                </tr>
                                <tr>
                                    <th style="border: 1px solid #ccc;">Time Zone</th>
                                    <td id="timeZonedata_tz"></td>
                                    <script>
    document.addEventListener("DOMContentLoaded", function () {
        // Make an AJAX request to fetch data from tz.asp
        fetch("tz.asp")
            .then(response => {
                if (!response.ok) {
                    throw new Error("Network response was not ok");
                }
                return response.text();
            })
            .then(data => {
                // Parse the response and extract the desired content
                const parser = new DOMParser();
                const doc = parser.parseFromString(data, "text/html");

                // Find the <select> element for the time zone in the fetched content
                const timeZoneSelect = doc.querySelector("select[name='timeZone']");
                if (timeZoneSelect) {
                    // Get the selected text from the dropdown
                    const selectedText = timeZoneSelect.options[timeZoneSelect.selectedIndex].text;

                    // Insert the selected text into the <td> with id="timeZonedata_tz"
                    document.getElementById("timeZonedata_tz").textContent = selectedText;

                    // Log the selected text for debugging
                    console.log("Selected Time Zone Text:", selectedText);
                } else {
                    console.error("Time zone <select> element not found in tz.asp.");
                }
            })
            .catch(error => {
                console.error("There was a problem with the fetch operation:", error);
            });
    });
</script>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn grey_btn" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>

     <script>
    document.addEventListener("DOMContentLoaded", function () {
        // Get all rows in the wanConfTable
        const tableRows = document.querySelectorAll("#wanConfTable tr");

        // Fetch the DNS data from the server-side API
        const dnsDataString = "<% getNameServer(); %>"; // This contains the DNS data as a string
        const dnsDataArray = dnsDataString.split(',').map(item => item.trim()); // Convert to an array

        // Add a click event listener to each row
        tableRows.forEach((row, index) => {
            row.addEventListener("click", function () {
                // Skip if the clicked row is the first row
                if (index === 0) {
                    return;
                }

                // Get the content of the clicked row
                const rowData = Array.from(row.children).map(cell => cell.textContent.trim());

                // Get the modal table body
                const modalTableBody = document.querySelector("#HERO077 #modal_table_body");

                // Clear the modal table body
                modalTableBody.innerHTML = "";

                // Static column names
                const staticColumnNames = [
                    "Interface",
                    "VLAN ID",
                    "Connection Type",
                    "Protocol",
                    "MAC",
                    "IP Address",
                    "Gateway",
                    "Status",
                    "Primary DNS",
                    "Secondary DNS"
                ];

                // Populate the modal with the clicked row's data
                rowData.forEach((data, index) => {
                    const rowElement = document.createElement("tr");
                    const th = document.createElement("th");
                    const td = document.createElement("td");

                    th.textContent = staticColumnNames[index] || `Column ${index + 1}`;
                    td.textContent = data;

                    rowElement.appendChild(th);
                    rowElement.appendChild(td);
                    modalTableBody.appendChild(rowElement);
                });

                // Add Primary DNS and Secondary DNS data
                for (let i = 0; i < dnsDataArray.length; i += 2) {
                    const dnsRow = document.createElement("tr");

                    const primaryDnsTh = document.createElement("th");
                    primaryDnsTh.textContent = "Primary DNS";
                    const primaryDnsTd = document.createElement("td");
                    primaryDnsTd.textContent = dnsDataArray[i] || "N/A";

                    const secondaryDnsTh = document.createElement("th");
                    secondaryDnsTh.textContent = "Secondary DNS";
                    const secondaryDnsTd = document.createElement("td");
                    secondaryDnsTd.textContent = dnsDataArray[i + 1] || "N/A";

                    dnsRow.appendChild(primaryDnsTh);
                    dnsRow.appendChild(primaryDnsTd);
                    modalTableBody.appendChild(dnsRow);

                    const secondaryDnsRow = document.createElement("tr");
                    secondaryDnsRow.appendChild(secondaryDnsTh);
                    secondaryDnsRow.appendChild(secondaryDnsTd);
                    modalTableBody.appendChild(secondaryDnsRow);
                }

                // Show the modal
                $("#HERO077").modal("show");
            });
        });
    });
</script>

        <div class="modal fade show " id="HERO078" role="dialog">
            <div class="modal-dialog modal-lg">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <span>
                            <img src="/img/wanip.png" style="width:45px;padding-bottom:5px;">
                        </span>
                        <h2 class="modal-title"><span style="vertical-align:middle;">&nbsp;IPv6
                                Information</h2></span>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">
                        <table class="table  table-bordered table-striped">
                            <tbody>
                            </tbody>
                            <tbody>

                            </tbody>
                             <tr>
    <th ><% multilang("106" "LANG_PREFIX"); %></td>
    <td><% checkWrite("prefix_delegation_info"); %></td>
   </tr>
   <tr>
    <th>IPv6 <% multilang("85" "LANG_DEFAULT_GATEWAY"); %></th>
    <td><% getDefaultGW_ipv6(); %></td>
   </tr>
                             <tr>
                                    <th style="border: 1px solid #ccc;">NTP Server</th>
                                    <td><% getInfo("ntpServerHost2"); %></td>
                                </tr>
                                <tr>
                                    <th style="border: 1px solid #ccc;">Time Zone</th>
                                    <td id="timeZonedata_tz1"></td>
                                    <script>
    document.addEventListener("DOMContentLoaded", function () {
        fetch("tz.asp")
            .then(response => {
                if (!response.ok) {
                    throw new Error("Network response was not ok");
                }
                return response.text();
            })
            .then(data => {
                const parser = new DOMParser();
                const doc = parser.parseFromString(data, "text/html");
                const timeZoneSelect = doc.querySelector("select[name='timeZone']");
                if (timeZoneSelect) {
                    const selectedText = timeZoneSelect.options[timeZoneSelect.selectedIndex].text;
                    document.getElementById("timeZonedata_tz1").textContent = selectedText;
                    console.log("Selected Time Zone Text:", selectedText);
                } else {
                    console.error("Time zone <select> element not found in tz.asp.");
                }
            })
            .catch(error => {
                console.error("There was a problem with the fetch operation:", error);
            });
    });
</script>
                                </tr>
                               
                        </table>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn grey_btn" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id="HERO01" role="dialog">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <span class="">
                            <img src="/img/staush.png" style="width:45px;padding-bottom:5px;">
                        </span>
                        <h2 class="modal-title" style="display: inline;"><span
                                style="vertical-align:middle;">&nbsp;Device
                                Information</h2></span>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">
                        <p>On this page, you can view basic device information.
                        </p>
                        <table class="table  table-bordered table-striped">
                            <tbody>
                                <tr>
                                    <th style="width:40%">
                                        <% multilang("99" "LANG_DEVICE_NAME" ); %>
                                    </th>
                                    <td style="width:60%">
                                        <SCRIPT language=javascript>
                                            document.write('<% getInfo("name"); %>');
                                        </SCRIPT>
                                    </td>
                                </tr>
                                <tr>
                                    <th style="width:40%">
                                        <% multilang("542" "LANG_SERIAL_NUMBER" ); %>
                                    </th>
                                    <td style="width:60%">
                                        <SCRIPT language=javascript>
                                            document.write('<% fmgpon_checkWrite("fmgpon_sn"); %>');
                                        </SCRIPT>
                                    </td>
                                </tr>
                                <tr>
                                    <th>Description </th>
                                    <td>
                                        <SCRIPT language=javascript>
                                            document.write('&quot;DUAL BAND+ 2GE+1POTS+1USB-XPON&quot;');
                                        </SCRIPT>
                                    </td>
                                </tr>
                                <tr>
                                    <th>
                                        <% multilang("92" "LANG_MAC_ADDRESS" ); %>
                                    </th>
                                    <td>
                                        <% getInfo("elan-Mac"); %>
                                    </td>
                                </tr>
                                <tr>
                                    <th>
                                        <% multilang("89" "LANG_IP_ADDRESS" ); %>
                                    </th>
                                    <td>
                                        <% getInfo("lan-ip"); %>
                                    </td>
                                </tr>
                                <tr>
                                    <th>
                                        <% multilang("104" "LANG_IPV6_LINK_LOCAL_ADDRESS" ); %>
                                    </th>
                                    <td>
                                        <% getInfo("ip6_ll"); %>
                                    </td>
                                </tr>
                                <tr>
                                    <% HwVer(); %>
                                </tr>
                                <tr>
                                    <th>
                                        <% multilang("79" "LANG_FIRMWARE_VERSION" ); %>
                                    </th>
                                    <td>
                                        <% getInfo("fwVersion"); %>
                                    </td>
                                </tr>
                                <tr>
                                    <th> Manufacture Info </th>
                                    <td> Syrotech</td>
                                </tr>
                                <tr>
                                    <th>
                                        <% multilang("2929" "LANG_PON_MODE" ); %>
                                    </th>
                                    <td>
                                        <% getInfo("ponmode"); %>
                                    </td>
                                </tr>
                                <tr>
                                    <% cpuUtility(); %>
                                </tr>
                                <tr>
                                    <% memUtility(); %>
                                </tr>
                                <tr>
                                    <th>
                                        <% multilang("2930" "LANG_BUILD_INFO" ); %>
                                    </th>
                                    <td>
                                        <% getInfo("compiletime"); %>
                                    </td>
                                </tr>
                                <tr>
                                    <th>
                                        <% multilang("571" "LANG_CURRENT_TIME" ); %>
                                    </th>
                                    <td>
                                        <% multilang("578" "LANG_YEAR" ); %> "<% getInfo("year"); %>
                                                "
                                                <% multilang("579" "LANG_MONTH" ); %> "<% getInfo("month"); %>"
                                                        <% multilang("580" "LANG_DAY" ); %> "<% getInfo("day"); %>"
                                                                <% multilang("581" "LANG_HOUR" ); %>
                                                                    "<% getInfo("hour"); %>"
                                                                        <% multilang("582" "LANG_MIN" ); %> "<%
                                                                                getInfo("minute"); %>
                                                                                "
                                                                                <% multilang("583" "LANG_SEC" ); %>
                                                                                    "<% getInfo("second"); %>"

                                    </td>
                                </tr>
                                <tr>
                                    <th>
                                        <% multilang("76" "LANG_UPTIME" ); %>
                                    </th>
                                    <td>
                                        <% getInfo("uptime"); %>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="modal-footer">

                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id="HERO02" role="dialog">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <span>
                            <img src="/img/link_icon.png" style="width:45px;padding-bottom:5px;">
                        </span>
                        <h2 class="modal-title" style="display: inline;"><span style="vertical-align:middle;">PON
                                Optical
                                Information</span></h2>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>

                    <div class="modal-body">
                        <p>On this page, you can query the status of the optical
                            module.</p>
                        <table class="table table-striped ">

                            <tbody class="pon_table_modal">
                                <tr>
                                    <th colspan="3" style="color: #f58220">
                                        Network Link Connection Information</th>
                                </tr>


                                <tr>
                                    <th>
                                        <% multilang("2929" "LANG_PON_MODE" ); %>
                                    </th>
                                    <td>
                                        <% getInfo("ponmode"); %>
                                    </td>
                                </tr>
                                <tr>
                                    <th>
                                        <% multilang("914" "LANG_FEC_ERRORS" ); %>
                                    </th>
                                    <td colspan="2">
                                        <% ponGetStatus("fec-errors"); %>
                                    </td>


                                </tr>
                                <tr>
                                    <th>
                                        <% multilang("110" "LANG_PART_NUMBER" ); %>
                                    </th>
                                    <td colspan="2">
                                        <% ponGetStatus("part-number"); %>
                                    </td>

                                </tr>
                                <tr>
                                    <th>
                                        <% multilang("109" "LANG_VENDOR_NAME" ); %>
                                    </th>
                                    <td colspan="2">
                                        <% ponGetStatus("vendor-name"); %>
                                    </td>

                                </tr>

                                <tr>
                                    <th style="color: #f58220" colspan="3">Link
                                        Preformance Statistics</th>

                                </tr>
                                <tr>

                                    <th>Number Of Packets PON Port Sent </th>
                                    <td colspan="2">
                                        <SCRIPT language="javascript">
                                            document.write('<% ponGetStatus("packets-sent"); %>');
                                        </SCRIPT>
                                    </td>
                                </tr>
                                <tr>
                                    <th>Number Of Packets PON Port Received</th>
                                    <td colspan="2">
                                        <SCRIPT language="javascript">
                                            document.write('<% ponGetStatus("packets-received"); %>');
                                        </SCRIPT>
                                    </td>
                                </tr>
                                <tr>
                                    <th style="color: #f58220" colspan="3">Light
                                        Module Information</th>
                                </tr>
                                <tr>
                                    <th>Optical Information</th>
                                    <th>Current Value</th>
                                    <th>Reference Value</th>
                                </tr>
                                <tr>
                                    <th>
                                        <% multilang("114" "LANG_RX_POWER" ); %>
                                    </th>
                                    <td>
                                        <% ponGetStatus("rx-power"); %>
                                    </td>
                                    <td> -27 to -7 dBm </td>
                                </tr>
                                <tr>
                                    <th>
                                        <% multilang("113" "LANG_TX_POWER" ); %>
                                    </th>
                                    <td>
                                        <% ponGetStatus("tx-power"); %>
                                    </td>
                                    <td> 0.5 to 5 dBm</td>
                                </tr>
                                <tr>
                                    <th>
                                        <% multilang("112" "LANG_VOLTAGE" ); %>
                                    </th>
                                    <td>
                                        <% ponGetStatus("voltage"); %>
                                    </td>
                                    <td> 3100 to 3500 mV </td>
                                </tr>
                                <tr>
                                    <th>
                                        <% multilang("115" "LANG_BIAS_CURRENT" ); %>
                                    </th>
                                    <td>
                                        <% ponGetStatus("bias-current"); %>
                                    </td>
                                    <td> 0 to 90 mA </td>
                                </tr>
                                <tr>
                                    <th>
                                        <% multilang("111" "LANG_TEMPERATURE" ); %>
                                    </th>
                                    <td>
                                        <% ponGetStatus("temperature"); %>
                                    </td>
                                    <td> -5 to + 55&deg;C
                                    </td>

                                </tr>

                            </tbody>
                        </table>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn grey_btn" data-dismiss="modal">Close
                        </button>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id="HERO04" role="dialog">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <span class="">
                            <img src="/img/voip.png" style="width:45px;padding-bottom:5px;">
                        </span>
                        <h2 class="modal-title" style="display: inline;">
                            <span style="vertical-align:middle;">&nbsp;Voice Info
                        </h2>
                        </span>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">

                        <p>Status information of voice users and reset the voice</p>
                        <div class="table-responsive" id="Voip_content">
                            <!-- Your first table where data will be displayed -->
                            <table id="voipSIP_info" name="voipSIP_info" class="table table-bordered table_text_center">
                                <tbody>
                                    <tr>
                                        <td>Proxy0 Addr</td>
                                        <td id="proxy0Addr">192.168.3.2&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>Proxy0 Port Number</td>
                                        <td id="proxy0Port">5060&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>Proxy1 Addr</td>
                                        <td id="proxy1Addr">192.168.3.2&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>Proxy1 Port Number</td>
                                        <td id="proxy1Port">5060&nbsp;</td>
                                    </tr>
                                </tbody>
                            </table>

                            <!-- Hidden API Content (This will contain the API response) -->
                            <div id="proxyAPIContent" style="display: none;">
                                <%voip_general_get("proxy");%>
                            </div>

                            <script>
                                window.addEventListener("DOMContentLoaded", function () {
                                    // Look inside the hidden API content to get data related to Proxy0 and Proxy1
                                    const proxyContainer = document.querySelector('#proxyAPIContent');

                                    // Get the Proxy0 and Proxy1 sections by their <p> tag identifiers
                                    const proxy0Section = proxyContainer.querySelector('p:contains("Proxy0")')?.closest('.data_common');
                                    const proxy1Section = proxyContainer.querySelector('p:contains("Proxy1")')?.closest('.data_common');

                                    // Get the values from the corresponding Proxy0 and Proxy1 sections
                                    const proxy0AddrValue = proxy0Section ? proxy0Section.querySelector('input[name="proxyAddr0"]')?.value : '';
                                    const proxy0PortValue = proxy0Section ? proxy0Section.querySelector('input[name="proxyPort0"]')?.value : '';
                                    const proxy1AddrValue = proxy1Section ? proxy1Section.querySelector('input[name="proxyAddr1"]')?.value : '';
                                    const proxy1PortValue = proxy1Section ? proxy1Section.querySelector('input[name="proxyPort1"]')?.value : '';

                                    // Update the first table's second <td> based on the extracted API data
                                    document.getElementById('proxy0Addr').textContent = proxy0AddrValue || '';
                                    document.getElementById('proxy0Port').textContent = proxy0PortValue || '';
                                    document.getElementById('proxy1Addr').textContent = proxy1AddrValue || '';
                                    document.getElementById('proxy1Port').textContent = proxy1PortValue || '';
                                });
                            </script>


                            <!-- JavaScript to update table with dynamic values -->
                            <script>
                                window.addEventListener("DOMContentLoaded", function () {
                                    const proxy0Addr = document.querySelector('input[name="proxyAddr0"]')?.value || '';
                                    const proxy0Port = document.querySelector('input[name="proxyPort0"]')?.value || '';
                                    const proxy1Addr = document.querySelector('input[name="proxyAddr1"]')?.value || '';
                                    const proxy1Port = document.querySelector('input[name="proxyPort1"]')?.value || '';

                                    const rows = document.querySelectorAll('#voipSIP_info tbody tr');

                                    if (rows.length >= 4) {
                                        rows[0].children[1].textContent = proxy0Addr + '\u00A0';
                                        rows[1].children[1].textContent = proxy0Port + '\u00A0';
                                        rows[2].children[1].textContent = proxy1Addr + '\u00A0';
                                        rows[3].children[1].textContent = proxy1Port + '\u00A0';
                                    }
                                });
                            </script>
                            <script>
                                document.addEventListener("DOMContentLoaded", function () {
    const table = document.getElementById("wanConfTable");
    if (table) {
        const firstRow = table.querySelector("tr");
        if (firstRow) {
            const thElements = firstRow.querySelectorAll("th");
            thElements.forEach(th => {
                th.style.backgroundColor = "#ebeced";
            });
        }
    } else {
        console.error("Table with id 'wanConfTable' not found.");
    }
});
                            </script>
                            <script>
                                document.addEventListener("DOMContentLoaded", function () {
    const table = document.getElementById("wanipv6_list");
    if (table) {
        const firstRow = table.querySelector("tr");
        if (firstRow) {
            const thElements = firstRow.querySelectorAll("th");
            thElements.forEach(th => {
                th.style.backgroundColor = "#ebeced";
            });
        }
    } else {
        console.error("Table with id 'wanConfTable' not found.");
    }
});
                            </script>
                        </div>

                        <div class="table-responsive voip_sip_table">
                            <div style="display: flex; width: 100%;">
                                <span
                                    style="flex: 1;font-weight: 550; border: 1px solid #e0e0e0; padding: 10px 15px; background-color: #f0f0f2; text-align: center;">
                                    Name
                                </span>
                                <span
                                    style="flex: 1;font-weight: 550; border: 1px solid #e0e0e0; padding: 10px 15px; background-color: #f0f0f2; text-align: center;">
                                    Line
                                </span>
                            </div>
                            <table class="sip_table_dynamic">
                                <tr>
                                    <td width="30%">
                                        <% multilang("213" "LANG_PORT" ); %>
                                    </td>
                                    <td width="40%">
                                        <% multilang("926" "LANG_NUMBER" ); %>
                                    </td>
                                    <td width="30%">
                                        <% multilang("3" "LANG_STATUS" ); %>
                                    </td>
                                </tr>
                                <% voip_general_get("registerStatus"); %>
                            </table>
                        </div>
                        <script>
                            document.addEventListener("DOMContentLoaded", function () {
                                const table = document.querySelector(".voip_sip_table table");
                                if (!table) return;

                                const rows = Array.from(table.rows);
                                const numCols = rows[0].cells.length;
                                const numRows = rows.length;

                                const newTable = document.createElement("table");
                                const newTbody = document.createElement("tbody");

                                for (let col = 0; col < numCols; col++) {
                                    const newRow = document.createElement("tr");
                                    for (let row = 0; row < numRows; row++) {
                                        const newCell = document.createElement(row === 0 ? "th" : "td");
                                        newCell.innerHTML = rows[row].cells[col].innerHTML;
                                        newRow.appendChild(newCell);
                                    }
                                    newTbody.appendChild(newRow);
                                }

                                newTable.appendChild(newTbody);
                                table.replaceWith(newTable);
                            });
                        </script>
                        <style>
                            .voip_sip_table,
                            .voip_sip_table * {
                                text-align: center !important;
                                /* Center-align all text */
                            }

                            .voip_sip_table table {
                                width: 100%;
                                border-collapse: collapse;
                                table-layout: fixed;
                                font-family: Arial, sans-serif;
                            }

                            .voip_sip_table th {
                                background-color: #f0f0f2;
                                padding: 12px 15px;
                                text-align: left;
                                border: 1px solid #e0e0e0;
                            }

                            .voip_sip_table td {
                                padding: 10px 15px;
                                border: 1px solid #e0e0e0;
                                text-align: left;
                            }

                            .voip_sip_table tr:nth-child(1) td {
                                background-color: #f0f0f2;
                            }

                            .voip_sip_table tr:nth-child(even) {
                                background-color: #ffffff;
                            }

                            .voip_sip_table tr:nth-child(odd) {
                                background-color: #fafafa;
                            }

                            .voip_sip_table tr:first-child td:first-child,
                            .voip_sip_table tr:first-child th:first-child {
                                width: 50%;
                            }

                            .voip_sip_table tr:first-child td:nth-child(2),
                            .voip_sip_table tr:first-child th:nth-child(2) {
                                width: 50%;
                            }

                            .voip_sip_table table tr:first-child td,
                            .voip_sip_table table tr:first-child th {

                                background-color: #f0f0f2;
                            }
                        </style>
                        <Script language="javascript">
                            var cur_user = '0';
                            if (cur_user == "0") {
                                setDisplay('Voip_content', 1);
                            }
                            if (getElById("perLineTablePlaceholder") != null) {
                                checkLineNum();
                            }
                        </Script>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn grey_btn" data-dismiss="modal">Close </button>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id="HERO08" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <span>
                            <img src="/img/wlan.png" style="width:45px;">
                        </span>
                        <h2 class="modal-title" style="display: inline;"> &nbsp; WLAN Information </h2>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>

                    <div class="modal-body table-responsive">
                        <p>
                            On this page, you can query the WLAN information, WLAN packet statistics, and SSID
                            information.
                        </p>

                        <table class="table table-bordered" style="width:100%">
                            <thead>
                                <tr>
                                    <td colspan="4">
                                        <button class="btn orange_btn" data-target="#HERO010" data-toggle="modal">
                                            Ethernet Port Status
                                        </button>
                                    </td>
                                    <td colspan="4">
                                        <button class="btn orange_btn" data-target="#HERO019" data-toggle="modal">
                                            USB Port Status
                                        </button>
                                    </td>
                                </tr>
                                <tr style="background-color: rgba(0, 0, 0, .05) !important;">
                                    <td colspan="4">
                                        <input name="WlanMethod" id="loadFileButton" type="radio" checked="checked"
                                            onclick="showDiv1()">
                                        2.4 GHz wireless network information
                                    </td>
                                    <td colspan="4">
                                        <input name="WlanMethod" id="loadFileButton1" type="radio" onclick="showDiv2()">
                                        5 GHz wireless network information
                                    </td>
                                </tr>
                            </thead>

                            <tbody id="div1" class="active">
                                <tr>
                                    <td colspan="8">
                                        <iframe id="iframeContent"
                                            src="boaform/formWlanRedirect?redirect-url=/wlstatus.asp&wlan_idx=1"
                                            style="width: 100%; height: 300px; border: none;"></iframe>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="color:#f58220; font-size: 23px; padding-left: 24px;" colspan="8">
                                        WLAN Packet Statistics
                                    </td>
                                </tr>
                                <tr>
                                    <th style="width: 15.3%;"></th>
                                    <th colspan="3" align="center" style="text-align: center; width: 41.6%;">
                                        Received
                                        (Rx)</th>
                                    <th colspan="3" align="center" style="text-align: center">Sent (Tx)</th>
                                </tr>
                                <tr>
                                    <td colspan="7">
                                        <table style="width: 100%; margin-top: -8px;" id="packets_table">
                                            <% pktStatsList(); %>
                                        </table>
                                       <script>
    document.addEventListener("DOMContentLoaded", function () {
        const table = document.getElementById("packets_table");

        const rows = table.querySelectorAll("tr");
        const rowsToKeep = [];
        rowsToKeep.push(rows[0]);
        let wlan0RowAdded = false;
        rows.forEach((row) => {
            const firstCell = row.querySelector("td");
            if (firstCell && firstCell.textContent.trim() === "wlan0" && !wlan0RowAdded) {
                rowsToKeep.push(row);
                wlan0RowAdded = true; // Mark that the first "wlan0" row has been added
            }
        });
        const tbody = table.querySelector("tbody");
        tbody.innerHTML = "";
        rowsToKeep.forEach((row) => {
            tbody.appendChild(row);
        });
    });
</script>
                                    </td>
                                </tr>
                            </tbody>
                            <tbody id="div2" class="hidden">
                                <tr>
                                    <td colspan="8">
                                        <iframe id="iframeContent1"
                                            src="boaform/formWlanRedirect?redirect-url=/wlstatus.asp&wlan_idx=0"
                                            style="width: 100%; height: 300px; border: none;"></iframe>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="color:#f58220; font-size: 23px; padding-left: 24px;" colspan="8">
                                        WLAN Packet Statistics
                                    </td>
                                </tr>
                                <tr>
                                    <th style="width: 14.3%;"></th>
                                    <th colspan="3" align="center" style="text-align: center; width: 42%;">Received
                                        (Rx)
                                    </th>
                                    <th colspan="3" align="center" style="text-align: center">Sent (Tx)</th>
                                </tr>
                                <tr>
                                    <td colspan="7">
                                        <table style="width: 100%; margin-top: -8px;" id="packets_table1">
                                            <% pktStatsList(); %>
                                        </table>
                                       <script>
    document.addEventListener("DOMContentLoaded", function () {
        const table = document.getElementById("packets_table1");
        const rows = table.querySelectorAll("tr");
        const rowsToKeep = [];
        rowsToKeep.push(rows[0]);
        let wlan1RowAdded = false;
        rows.forEach((row) => {
            const firstCell = row.querySelector("td");
            if (firstCell && firstCell.textContent.trim() === "wlan1" && !wlan1RowAdded) {
                rowsToKeep.push(row);
                wlan1RowAdded = true;
            }
        });
        const tbody = table.querySelector("tbody");
        tbody.innerHTML = "";
        rowsToKeep.forEach((row) => {
            tbody.appendChild(row);
        });
    });
</script>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade show" id="HERO010" style="display:none;" aria-modal="true" role="dialog">
            <div class="modal-dialog modal-lg" style="">
                <!-- Modal content-->
                <div class="modal-content" style="width:100%;">
                    <div class="modal-header">
                        <span>
                            <img src="/img/ethernet.png" style="width:45px;">
                        </span>
                        <h2 class="modal-title" style="display: inline;"> &nbsp;
                            LAN Port Information
                        </h2>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">
                        <p>
                            <% multilang("101" "LANG_THIS_PAGE_SHOWS_THE_CURRENT_LAN_PORT_STATUS" ); %>
                        </p>
                        <h5>
                            <% multilang("100" "LANG_LAN_PORT_STATUS" ); %>
                        </h5>
                        <div class="data_common data_common_notitle" id="usb1" style="width: 710px;">
                            <table>
                                <% showLANPortStatus(); %>

                            </table>
                        </div>
                        <script>
    document.addEventListener("DOMContentLoaded", function () {
        // Get the table inside the div with id="usb1"
        const table = document.querySelector("#usb1 table");

        // Ensure the table exists
        if (table) {
            // Get all rows in the table
            const rows = table.querySelectorAll("tr");

            // Loop through the rows and hide all rows after the 3rd row
            rows.forEach((row, index) => {
                if (index >= 3) {
                    row.style.display = "none"; // Hide the row
                }
            });
        } else {
            console.error("Table inside #usb1 not found.");
        }
    });
</script>

                    </div>
                    <div class="modal-footer">


                        <input type="hidden" value="/lan_port_status.asp" name="submit-url">
                        <button type="button" class="btn grey_btn" data-dismiss="modal">Close</button>
                        <input class=" btn grey_btn" type="submit" value="Refresh" name="refresh"
                            onClick="return on_submit(this)">
                        <input type="hidden" name="postSecurityFlag" value="">
                    </div>

                </div>

            </div>
        </div>

        <div class="modal fade show" id="HERO019" style="display:none;" aria-modal="true" role="dialog">
            <div class="modal-dialog modal-lg">
                <!-- Modal content-->
                <div class="modal-content" style="width:98%;">
                    <div class="modal-header">
                        <span>
                            <img src="/img/ethernet.png" style="width:45px;">
                        </span>
                        <h2 class="modal-title" style="display: inline;"> &nbsp;
                            <% multilang("2948" "LANG_USB_STATUS" ); %>
                        </h2>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">
                        <p>
                            <% multilang("2949" "LANG_USB_PAGE_DESC" ); %>
                        </p>
                        <h5>USB Port Status</h5>
                        <div class="data_common data_common_notitle" id="usb">
                            <table>
                                <% getInfo("usbstate"); %>
                            </table>
                        </div>


                    </div>
                    <div class="modal-footer">

                        <button type="button" class="btn grey_btn" data-dismiss="modal">Close</button>

                    </div>

                </div>

            </div>
        </div>

        <div class="modal fade" id="HERO06" role="dialog">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <span>
                            <img src="/img/logo-user.png" style="width:45px;">
                        </span>
                        <h2 class="modal-title" style="display: inline;"> &nbsp;
                            User Device Information
                        </h2>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>

                    <div class="modal-body">


                        <button class="btn grey_btn m-1"><a href="sec-macfilter.asp"
                                style="text-decoration:none; color:black">Mac Filter</a></button><br>
                        <button class="btn grey_btn m-1"><a href="sec-portfilter.asp"
                                style="text-decoration:none; color:black">Port Mapping</a></button><br>

                        <button class="btn grey_btn m-1"> <a href="sec-parental.asp"
                                style="text-decoration:none; color:black">Parental Control
                                Configuration</a></button>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn grey_btn" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>

        <script>
            document.addEventListener("DOMContentLoaded", function () {
                // Get the container with id="proxyAPIContent_front"
                const proxyContainer = document.getElementById("proxyAPIContent_front");

                // Get the input element with name="display0" inside the container
                const displayInput = proxyContainer.querySelector('input[name="display0"]');

                // Get the element with id="display_data"
                const displayDataElement = document.getElementById("display_data");

                // Check if the input and target element exist
                if (displayInput && displayDataElement) {
                    // Set the value of the input into the innerHTML of the target element
                    displayDataElement.innerHTML = displayInput.value || "";
                } else {
                    console.error("Input with name='display0' or element with id='display_data' not found.");
                }
            });
        </script>
        <script>
            document.addEventListener("DOMContentLoaded", function () {
                // Get the container where the API renders its data
                const voipTableData = document.getElementById("voip_table_data");

                // Check if the container exists
                if (voipTableData) {
                    // Get all <tr> elements inside the table
                    const rows = voipTableData.querySelectorAll("tr");

                    // Check if the second <tr> exists
                    if (rows.length > 1) {
                        // Get all <td> elements in the second <tr>
                        const secondRowCells = rows[1].querySelectorAll("td");

                        // Check if the <td> elements exist
                        if (secondRowCells.length > 0) {
                            // Populate the data into the respective IDs
                            const displayNumberData = document.getElementById("display_number_data");
                            const displayPortData = document.getElementById("display_port_data");
                            const displayRegisterData = document.getElementById("display_register_data");

                            if (displayNumberData) {
                                displayNumberData.innerHTML = secondRowCells[0]?.textContent.trim() || "";
                            }
                            if (displayPortData) {
                                displayPortData.innerHTML = secondRowCells[1]?.textContent.trim() || "";
                            }
                            if (displayRegisterData) {
                                displayRegisterData.innerHTML = secondRowCells[2]?.textContent.trim() || "";
                            }
                        } else {
                            console.error("No <td> elements found in the second <tr>.");
                        }
                    } else {
                        console.error("Second <tr> not found in the table.");
                    }
                } else {
                    console.error('Container with id="voip_table_data" not found.');
                }
            });
        </script>

        <script>
            // Function to toggle visibility of div1 and div2
            function showDiv1() {
                document.getElementById("div1").classList.add("active");
                document.getElementById("div1").classList.remove("hidden");
                document.getElementById("div2").classList.remove("active");
                document.getElementById("div2").classList.add("hidden");
            }

            function showDiv2() {
                document.getElementById("div2").classList.add("active");
                document.getElementById("div2").classList.remove("hidden");
                document.getElementById("div1").classList.remove("active");
                document.getElementById("div1").classList.add("hidden");
            }

            // Automatically load the 2.4 GHz network information on page load
            window.onload = function () {
                const iframe = document.getElementById('iframeContent');
                iframe.src = 'boaform/formWlanRedirect?redirect-url=/wlstatus.asp&wlan_idx=1'; // Replace with your file path
            };
        </script>

        <script>
            document.addEventListener("DOMContentLoaded", function () {
                // Get the table with id 'wanipv6_list'
                const table = document.getElementById("wanipv6_list");

                // Ensure the table exists
                if (!table) {
                    console.error("Table with id 'wanipv6_list' not found.");
                    return;
                }

                // Get all rows in the table
                const rows = table.querySelectorAll("tr");

                // Add a click event listener to each row
                rows.forEach((row, index) => {
                    row.addEventListener("click", function () {
                        // Skip the first row (header row)
                        if (index === 0) {
                            
                            return;
                        }

                        // Get the content of the clicked row
                        const rowData = Array.from(row.children).map(cell => cell.textContent.trim());

                        // Get the modal table body
                        const modalTableBody = document.querySelector("#HERO078 .modal-body tbody");

                        // Clear the modal table body
                        modalTableBody.innerHTML = "";

                        // Populate the modal with the clicked row's data
                        rowData.forEach((data, index) => {
                            const rowElement = document.createElement("tr");
                            const th = document.createElement("th");
                            const td = document.createElement("td");

                            // Use static column names
                            const staticColumnNames = ["Interface", "VLAN ID", "Connection Type", "Protocol", "IP Address", "Status"];
                            th.textContent = staticColumnNames[index] || `Column ${index + 1}`;
                            td.textContent = data;

                            rowElement.appendChild(th);
                            rowElement.appendChild(td);
                            modalTableBody.appendChild(rowElement);
                        });

                        // Show the modal
                        $("#HERO078").modal("show");
                    });
                });
            });
        </script>



         <script>
            document.addEventListener('DOMContentLoaded', function () {
                // Function to position modal to ensure it's fully visible in viewport
                function positionModalInViewport(e) {
                    const modal = this;

                    // Set position after a short delay to ensure modal is initialized
                    setTimeout(() => {
                        const modalDialog = modal.querySelector('.modal-dialog');
                        if (!modalDialog) return;

                        // Get parent scroll position
                        const scrollPosition = window.parent.scrollY;

                        // Get viewport dimensions
                        const viewportHeight = window.innerHeight;

                        // Calculate dialog height
                        const dialogHeight = 800;

                        // Calculate initial position (at scroll position)
                        let topPosition = scrollPosition + 50;


                        // Check if modal would extend beyond bottom of viewport
                        const bottomOfModal = topPosition + dialogHeight;
                        const bottomOfViewport = viewportHeight;

                        // If modal would go off-screen, adjust position upward
                        if (bottomOfModal > bottomOfViewport - 50) { // Keep 50px padding at bottom
                            // Calculate how much to move up to fit
                            const adjustment = bottomOfModal - (bottomOfViewport);
                            topPosition -= adjustment;
                        }

                        // Set the final position
                        modal.style.top = topPosition + 'px';
                    }, 10);
                }

                // Apply to all modals when they start to open
                $(document).on('show.bs.modal', '.modal', positionModalInViewport);

                // For custom modals like wan-custom-modal
                const wanModalToggle = document.querySelector('[onclick*="toggleWanInfo"]');
                if (wanModalToggle) {
                    wanModalToggle.addEventListener('click', function () {
                        const wanModal = document.getElementById('wan-custom-modal');
                        if (!wanModal) return;

                        // Get the modal dialog to calculate height
                        const modalDialog = wanModal.querySelector('.modal-dialog');
                        if (modalDialog) {
                            // Get parent scroll position
                            const scrollPosition = window.parent.scrollY;

                            // Get viewport dimensions
                            const viewportHeight = window.innerHeight;

                            // Get dialog height (or estimated height if not fully rendered)
                            const dialogHeight = modalDialog.offsetHeight || 500; // Fallback height if not available

                            // Calculate initial position
                            let topPosition = scrollPosition + 50; // 50px from top

                            // Check if it would go off-screen
                            const bottomOfModal = topPosition + dialogHeight;
                            const bottomOfViewport = scrollPosition + viewportHeight;

                            // Adjust if needed
                            if (bottomOfModal > bottomOfViewport - 50) {
                                const adjustment = bottomOfModal - (bottomOfViewport - 50);
                                topPosition -= adjustment;
                                topPosition = Math.max(scrollPosition + 20, topPosition);
                            }

                            // Apply position
                            wanModal.style.top = topPosition + 'px';
                        } else {
                            // Fallback if dialog not found
                            wanModal.style.top = (window.parent.scrollY + 50) + 'px';
                        }
                    });
                }
            });
        </script>



        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script type="text/javascript" src="/JS/jquery.min.js"></script>
        <script type="text/javascript" src="/JS/bootstrap.min.js"></script>
        <!--	<script type="text/javascript" src="/Dashboard/Modules/leftmenu/js/Loader.js"></script> -->
        <script type="text/javascript" src="/JS/popper.min.js"></script>

        <script type="text/javascript" src="/Dashboard/Modules/leftmenu/js/scoop.js"></script>
        <script type="text/javascript" src="/Dashboard/Modules/leftmenu/js/left_menu.js"></script>

        <script type="text/javascript"
            src="/Dashboard/Modules/leftmenu/js/lib/jquery_mCustomScrollbar_concat.js"></script>
        <script type="text/javascript" src="/Dashboard/Modules/leftmenu/js/lib/jquery_mousewheel.js"></script>

        <script type="text/javascript">
            function myFunction() {
                var result = confirm("This operation will interrupt the current call. Are you sure you want to continue?");
            }
        </script>
        <script type="text/javascript">


            function showDiv3() {
                document.getElementById("div3").classList.add("active");
                document.getElementById("div3").classList.remove("hidden");
                document.getElementById("div1").classList.remove("active");
                document.getElementById("div1").classList.add("hidden");
            }
            function showDiv4() {
                document.getElementById("div4").classList.add("active");
                document.getElementById("div4").classList.remove("hidden");
                document.getElementById("div2").classList.remove("active");
                document.getElementById("div2").classList.add("hidden");
            }

        </script>
        <script type="text/javascript">
            function showDiv6() {
                document.getElementById("div6").classList.add("active");
                document.getElementById("div6").classList.remove("hidden");
                document.getElementById("div7").classList.remove("active");
                document.getElementById("div7").classList.add("hidden");
            }

            function showDiv7() {
                document.getElementById("div7").classList.add("active");
                document.getElementById("div7").classList.remove("hidden");
                document.getElementById("div6").classList.remove("active");
                document.getElementById("div6").classList.add("hidden");
            }

        </script>
       
    </body>

    </html>