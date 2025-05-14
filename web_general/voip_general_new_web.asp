<%SendWebHeadStr(); %>
<title>SIP</title>
<!--<link rel="stylesheet" href="/admin/style.css">
<link rel="stylesheet" href="/admin/reset.css" />
<link rel="stylesheet" href="/admin/base.css" />-->
<link rel="stylesheet" href="./admin/style.css">
<link rel="stylesheet" href="./admin/reset.css" />
<link rel="stylesheet" href="./admin/base.css" />
<script type="text/javascript" src="base64_code.js"></script>
<script type="text/javascript" src="share.js"></script>
<script language="javascript" src=voip_script.js></script>
<style> 
TABLE {width:375} 
.link_bg{
  float: right;
  margin-right: 20px;
}

/* Column Title Styling */
.column_title {
  display: flex;
  align-items: center;
  height: 30px;
}
.table_width table tr td:first-child{
  width: 40%;
}
.column_title p {
  padding: 25px 15px;
    font-size: 20px; /* Slightly smaller font size */
    color: #f58220;
    margin: 0;
    padding-bottom: 10px;
    font-weight: 300;
}
.column_title1 b{
  margin-left: -34px;
}
.input_radio input[type="radio"] {
  margin-top: -4px;
}
.column_title_left, .column_title_right {
  width: 5px;
}

/* Common Data Section */
.data_common {
  padding: 10px;
}

/* Table Styling */
table {
  width: 100%;
  border-collapse: collapse;
}

table tr {
 
}

table tr:last-child {
  
}
td{
  background-color: white;
}
table th, table td {
  padding: 8px;
  text-align: left;
  vertical-align: middle;
}
tr td:first-child{
  width: 40%;
}
table th {
  width: 40%;
  font-weight: normal;
  
  font-size: 13px;
}

input[type="radio"]{
  vertical-align: text-bottom !important;
}

/* Section Headers */
h1 {
  color: #ff6600;
  font-size: 20px;
  margin-top: 0;
  margin-bottom: 10px;
  font-weight: normal;
}

h2 {
  color: #ff6600;
  font-size: 18px;
  margin-top: 20px;
  margin-bottom: 10px;
  
  padding-bottom: 5px;
}

/* Radio Buttons */
input[type="radio"] {
  margin-right: 5px;
  vertical-align: middle;
}

/* Main Sections like ACS, Connection Request, etc. */
.section {
  
}

/* Line under main titles */
.separator {
  
 
}
.data_common1 {
  margin-bottom: 15px;
}

/* Table Layout */
.data_common table {
  border-collapse: collapse;
  width: 100%;
  table-layout: fixed;
}

/* First RTP Redundant Table */
.data_common1 table:first-child {
  margin-bottom: 10px;
}

.data_common1 table:first-child td:first-child {
  width: 120px;
  padding: 6px;
  vertical-align: middle;
}

.data_common1 table:first-child td {
  padding: 6px;
  vertical-align: middle;
}

/* Precedence Table */
.data_common_notitle1 table tr td {
  padding: 6px;
  text-align: center;
  vertical-align: middle;
}

.data_common_notitle1 table tr td[rowspan="2"],
.data_common_notitle1 table tr td[rowspan="3"] {
  vertical-align: middle;
  text-align: center;
}

/* Type Column */
.data_common_notitle1 table tr td:first-child {
  width: 85px;
  text-align: left;
  padding-left: 10px;
}

/* Packetization Column */
.data_common_notitle1 table tr td:nth-child(2) {
  width: 85px;
}

/* Checkboxes Alignment */
.data_common_notitle1 input[type="checkbox"] {
  margin: 0;
  vertical-align: middle;
}

/* Select Boxes */
.data_common1 select {
  padding: 1px;
  width: 100px;
}

.data_common1 input[type="text"] {
  padding: 1px;
  width: 100px;
}

/* Option Table */
.data_common_notitle1 table:last-child td:first-child {
  
  vertical-align: middle;
}

.data_common_notitle1 table:last-child td {
  padding: 6px;
  text-align: left;
}

/* G726 and G723 Options */
.data_common_notitle1 table:last-child select {
  width: 62px;
}
.codec_table {
  border-collapse: collapse;
  border: 1px solid #ccc; 
}
.codec_table th, .codec_table td{
  border: 1px solid #ccc; 
  background-color: #ebeced;
  text-align: center;
}
.codec_table td input {
    text-align: center; /* Centers the text inside the input field */
    display: block; /* Ensures the input is treated as a block element */
    margin: 0 auto; /* Centers the input element horizontally within the <td> */
}
.codec_table tr:first-child{
  font-weight: bold;
  background-color: #f2f2f2 !important;
}
</style>
<SCRIPT language="javascript" src="common.js"></SCRIPT>

<!-- tone_voice -->
<script language="javascript">
  <!--
  function ToneType_change()
  {
   document.toneform.Freq2.disabled = (document.toneform.type.selectedIndex < 2);
   document.toneform.Freq3.disabled = (document.toneform.type.selectedIndex < 4);
   document.toneform.Gain2.disabled = (document.toneform.type.selectedIndex < 4);
   document.toneform.Gain3.disabled = (document.toneform.type.selectedIndex < 4);
   document.toneform.C1_Freq0.disabled = (document.toneform.type.selectedIndex < 4);
   document.toneform.C1_Freq1.disabled = (document.toneform.type.selectedIndex < 4);
   document.toneform.C1_Freq2.disabled = (document.toneform.type.selectedIndex < 4);
   document.toneform.C1_Freq3.disabled = (document.toneform.type.selectedIndex < 4);
   document.toneform.C1_Gain0.disabled = (document.toneform.type.selectedIndex < 4);
   document.toneform.C1_Gain1.disabled = (document.toneform.type.selectedIndex < 4);
   document.toneform.C1_Gain2.disabled = (document.toneform.type.selectedIndex < 4);
   document.toneform.C1_Gain3.disabled = (document.toneform.type.selectedIndex < 4);
   document.toneform.C2_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C2_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C2_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C2_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C2_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C2_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C2_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C2_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C3_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C3_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C3_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C3_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C3_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C3_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C3_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C3_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.CadOn2.disabled = (document.toneform.type.selectedIndex > 4);
   document.toneform.CadOn3.disabled = (document.toneform.type.selectedIndex > 4);
   document.toneform.CadOff2.disabled = (document.toneform.type.selectedIndex > 4);
   document.toneform.CadOff3.disabled = (document.toneform.type.selectedIndex > 4);
   document.toneform.CadOn4.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.CadOff4.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.CadOn5.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.CadOff5.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.CadOn6.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.CadOff6.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.CadOn7.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.CadOff7.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C4_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C4_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C4_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C4_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C4_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C4_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C4_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C4_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C5_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C5_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C5_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C5_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C5_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C5_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C5_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C5_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C6_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C6_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C6_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C6_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C6_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C6_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C6_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C6_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C7_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C7_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C7_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C7_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C7_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C7_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C7_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C7_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.CadOn8.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.CadOff8.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.CadOn9.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.CadOff9.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.CadOn10.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.CadOff10.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.CadOn11.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.CadOff11.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C8_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C8_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C8_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C8_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C8_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C8_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C8_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C8_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C9_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C9_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C9_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C9_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C9_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C9_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C9_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C9_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C10_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C10_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C10_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C10_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C10_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C10_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C10_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C10_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C11_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C11_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C11_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C11_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C11_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C11_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C11_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C11_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.CadOn12.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.CadOff12.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.CadOn13.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.CadOff13.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.CadOn14.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.CadOff14.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.CadOn15.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.CadOff15.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C12_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C12_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C12_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C12_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C12_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C12_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C12_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C12_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C13_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C13_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C13_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C13_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C13_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C13_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C13_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C13_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C14_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C14_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C14_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C14_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C14_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C14_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C14_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C14_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C15_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C15_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C15_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C15_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C15_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C15_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C15_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C15_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.CadOn16.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.CadOff16.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.CadOn17.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.CadOff17.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.CadOn18.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.CadOff18.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.CadOn19.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.CadOff19.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C16_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C16_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C16_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C16_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C16_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C16_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C16_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C16_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C17_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C17_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C17_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C17_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C17_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C17_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C17_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C17_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C18_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C18_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C18_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C18_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C18_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C18_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C18_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C18_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C19_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C19_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C19_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C19_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C19_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C19_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C19_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C19_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.CadOn20.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.CadOff20.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.CadOn21.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.CadOff21.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.CadOn22.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.CadOff22.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.CadOn23.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.CadOff23.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C20_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C20_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C20_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C20_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C20_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C20_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C20_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C20_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C21_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C21_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C21_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C21_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C21_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C21_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C21_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C21_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C22_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C22_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C22_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C22_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C22_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C22_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C22_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C22_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C23_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C23_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C23_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C23_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C23_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C23_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C23_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C23_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.CadOn24.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.CadOff24.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.CadOn25.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.CadOff25.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.CadOn26.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.CadOff26.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.CadOn27.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.CadOff27.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C24_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C24_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C24_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C24_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C24_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C24_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C24_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C24_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C25_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C25_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C25_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C25_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C25_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C25_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C25_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C25_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C26_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C26_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C26_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C26_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C26_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C26_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C26_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C26_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C27_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C27_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C27_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C27_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C27_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C27_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C27_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C27_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.CadOn28.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.CadOff28.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.CadOn29.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.CadOff29.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.CadOn30.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.CadOff30.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.CadOn31.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.CadOff31.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C28_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C28_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C28_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C28_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C28_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C28_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C28_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C28_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C29_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C29_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C29_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C29_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C29_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C29_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C29_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C29_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C30_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C30_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C30_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C30_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C30_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C30_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C30_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C30_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C31_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C31_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C31_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C31_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C31_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C31_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C31_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
   document.toneform.C31_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
  }
  function D1FreqNum_change()
  {
   document.toneform.d1Freq2.disabled = (document.toneform.d1freqnum.selectedIndex == 0);
  }
  function D2FreqNum_change()
  {
   document.toneform.d2Freq2.disabled = (document.toneform.d2freqnum.selectedIndex == 0);
  }
  function InitToneConfig()
  {
   ToneType_change();
   D1FreqNum_change();
   D2FreqNum_change();
  }
  function on_submit(obj)
  {
   obj.isclick = 1;
   postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
   return true;
  }
  </script>

<!-- general_voice -->
<script language="javascript">
var pwd_enc_enable=0;
<%voip_general_get("pwd_encrypt_enable");%>
function isAllStar(str)
{
 for (var i=0; i<str.length; i++) {
  if ( str.charAt(i) != '*' ) {
   return false;
  }
 }
 return true;
}
function applyclick()
{
 if(pwd_enc_enable)
 {
  var proxy_num;
  if(typeof(document.sipform.default_proxy) == 'undefined')
   proxy_num = 2;
  else
   proxy_num = document.sipform.default_proxy.options.length;
  for(var i=0;i<proxy_num;i++)
  {
   var proxy_psd = document.getElementsByName("password"+i);
   if(proxy_psd[0].value.length == 0)
    ;
   else if(!isAllStar(proxy_psd[0].value))
    proxy_psd[0].value=encode64(proxy_psd[0].value);
   else
   {
    proxy_psd[0].value = "";
    disableTextField(proxy_psd[0]);
   }
  }
 }
 changeStartEnd();
}
function dtmfMode_change()
{
 document.sipform.dtmf_2833_pt.disabled = (document.sipform.dtmfMode.selectedIndex != 0);
 document.sipform.dtmf_2833_pi.disabled = (document.sipform.dtmfMode.selectedIndex != 0);
 document.sipform.fax_modem_2833_pt.disabled = (document.sipform.dtmfMode.selectedIndex != 0);
 document.sipform.fax_modem_2833_pi.disabled = (document.sipform.dtmfMode.selectedIndex != 0);
 document.sipform.sipInfo_duration.disabled = (document.sipform.dtmfMode.selectedIndex != 1);
}
function spd_dial_edit()
{
 for (var i=0; i<10; i++)
 {
  document.sipform.spd_sel[i].disabled = document.all.spd_url[i].value == "";
  if (document.sipform.spd_sel[i].disabled)
   document.all.spd_name[i].value = "";
 }
}
function spd_dial_remove_sel()
{
 var flag=false;
 for (var i=0; i<10; i++)
 {
  if (document.sipform.spd_sel[i].checked)
  {
   flag=true;
   break;
  }
 }
 if (!flag)
 {
  alert('You have to select first.');
  return false;
 }
 if (!confirm('Do you really want to remove the selected items?'))
 {
  return false;
 }
 for (var i=0; i<10; i++)
 {
  if (document.sipform.spd_sel[i].checked)
  {
   document.sipform.spd_sel[i].checked = false;
   document.sipform.spd_sel[i].disabled = true;
   document.all.spd_name[i].value = "";
   document.all.spd_url[i].value = "";
  }
 }
 return true;
}
function spd_dial_remove_all()
{
 if (!confirm('Do you really want to remove all items in the phone book?'))
 {
  return false;
 }
 for (var i=0; i<10; i++)
 {
  document.sipform.spd_sel[i].checked = false;
  document.sipform.spd_sel[i].disabled = true;
  document.all.spd_name[i].value = "";
  document.all.spd_url[i].value = "";
 }
 return true;
}
function t38param_click_check()
{
 document.sipform.T38MaxBuffer.disabled = !document.sipform.T38ParamEnable.checked;
 document.sipform.T38RateMgt.disabled = !document.sipform.T38ParamEnable.checked;
 document.sipform.T38MaxRate.disabled = !document.sipform.T38ParamEnable.checked;
 document.sipform.T38EnableECM.disabled = !document.sipform.T38ParamEnable.checked;
 document.sipform.T38ECCSignal.disabled = !document.sipform.T38ParamEnable.checked;
 document.sipform.T38ECCData.disabled = !document.sipform.T38ParamEnable.checked;
 document.sipform.T38EnableSpoof.disabled = !document.sipform.T38ParamEnable.checked;
 document.sipform.T38DuplicateNum.disabled = !document.sipform.T38ParamEnable.checked;
}
function enable_hotline()
{
 document.sipform.hotline_number.disabled = !document.sipform.hotline_enable.checked;
}
function enable_dnd()
{
 document.sipform.dnd_from_hour.disabled = !document.sipform.dnd_mode[1].checked;
 document.sipform.dnd_from_min.disabled = !document.sipform.dnd_mode[1].checked;
 document.sipform.dnd_to_hour.disabled = !document.sipform.dnd_mode[1].checked;
 document.sipform.dnd_to_min.disabled = !document.sipform.dnd_mode[1].checked;
}
function vad_enable()
{
 document.sipform.sid_mode.disabled = !document.sipform.useVad.checked;
 document.sipform.sid_noiselevel.disabled = (!document.sipform.sid_mode[1].checked) || (!document.sipform.useVad.checked) ;
 document.sipform.sid_noisegain.disabled = (!document.sipform.sid_mode[2].checked) || (!document.sipform.useVad.checked) ;
}
function rtcp_click_check()
{
 document.sipform.RTCPInterval.disabled = !document.sipform.useRTCP.checked;
 document.sipform.useRTCPXR.disabled = !document.sipform.useRTCP.checked;
}
</script>
</head>
<body text="#000000" onload="InitToneConfig()">
<div class="breadcrum_box"> <ul><li><a href="#">Voice</a></li><li>Voice Basic</li><li class="welcom" valign="bottom" align="middle" width="120">Welcome!</li><li valign="bottom"></li> </ul><div class="help_icon"> <a href="/cgi-bin/help_content.asp#UPNP Configuration" target="_blank"> <svg id="help_icon_svg" xmlns="http://www.w3.org/2000/svg" width="38" height="38" viewBox="0 0 38 38"> <path id="help_Icon" data-name="help_Icon" class="cls-1" d="M18.746,0A19,19,0,1,0,38,18.744,19,19,0,0,0,18.746,0ZM18.69,30.565l-0.1,0a2.766,2.766,0,0,1,.065-5.531l0.094,0A2.766,2.766,0,1,1,18.69,30.565Zm6.8-13.49a12.558,12.558,0,0,1-2.268,2.031l-1.16.8a3.147,3.147,0,0,0-1.165,1.418,2.933,2.933,0,0,0-.18,1.19l0,0.186H16.286l0.013-.375c0.054-1.54.092-2.446,0.73-3.194a18.823,18.823,0,0,1,3.3-2.658,3.485,3.485,0,0,0,.782-0.8,2.816,2.816,0,0,0,.67-1.641,3.2,3.2,0,0,0-.608-1.89,2.531,2.531,0,0,0-2.19-.823,2.389,2.389,0,0,0-2.213,1.023,4.112,4.112,0,0,0-.67,2.21v0.189H11.539l0.008-.2c0.118-2.8,1.116-4.809,2.965-5.984a7.809,7.809,0,0,1,4.295-1.127,9.269,9.269,0,0,1,5.54,1.595A5.531,5.531,0,0,1,26.587,13.8,5.461,5.461,0,0,1,25.487,17.076Z"></path> </svg> </a> </div></div>
<div class="intro_main "><div style="
    display: flex;
    align-items: center;
    gap: 5px;
">
<div><img src="/img/voip.png" style="width:38px;"></div>
<div style="padding-top:10px;"><p class="intro_title"><% multilang("2938" "LANG_VOIP_GENERAL_CONFIG"); %></p></div></div>
  
  <p class="intro_content"><% multilang("2939" "LANG_THIS_PAGE_SHOWS_THE_VOIP_GENERAL_CONFIG"); %></p>
 </div>

 <!-- voip_tone_ -->
 <form method="post" action="/boaform/voip_tone_set" name=toneform>
  <div class="column">
   <div class="column_title">
    <div class="column_title_left"></div>
    <p class="intro_title1" style="font-size: 20px; margin-top: 9px;"><% multilang("1041" "LANG_SELECT_COUNTRY"); %></p>
    <div class="column_title_right"></div>
   </div>
   <div class="data_common">
    <table>
     <tr>
      <td style="width: 40%;"><% multilang("1042" "LANG_COUNTRY"); %></td>
      <td >
      <select name=tone_country onchange="changeCountry();">
        "<%voip_tone_get("tone_country");%>"
      </select>
      </td>
     </tr>
    </table>
   </div>
  </div>
  <div id = "tonetable" <%voip_tone_get("display");%> >
   <div class="column">
    <div class="column_title">
     <div class="column_title_left"></div>
     <p>Select Tone</p>
     <div class="column_title_right"></div>
    </div>
    <div class="data_common">
     <table>
      <tr>
       <td  width=155>DIAL TONE</td>
       <td  width=170>
        <select name=dial>
         <%voip_tone_get("dial");%>
        </select>
       </td>
      </tr>
      <tr>
       <td  width=155>RING TONE</td>
       <td  width=170>
        <select name=ring>
         <%voip_tone_get("ring");%>
        </select>
       </td>
      </tr>
      <tr>
       <td  width=155>BUSY TONE</td>
       <td  width=170>
        <select name=busy>
         <%voip_tone_get("busy");%>
        </select>
       </td>
      </tr>
      <tr>
       <td  width=155>WAITING TONE</td>
       <td  width=170>
        <select name=waiting>
         <%voip_tone_get("waiting");%>
        </select>
       </td>
      </tr>
     </table>
    </div>
   </div>
  </div>
  <div style="padding:10px 0;">
       <input class="link_bg" type="submit" name="Country" value="<% multilang("334" "LANG_APPLY"); %>" onclick="on_submit(this);">
  </div>
   <input type="hidden" name="postSecurityFlag" value="">
  </form>

<!-- voip_general -->
<form method="post" action="/boaform/voip_general_set" name=sipform>
<input type=hidden name=voipPort value="<%voip_general_get("voip_port");%>">
<%voip_general_get("proxy");%>
<!--
<p>
<b>NAT Traversal</b>
<table cellSpacing=1 cellPadding=2 border=0>
<%voip_general_get("stun");%>
</table>
-->

<div class="column">
 <div class="column_title">
  <div class="column_title_left"></div>
  <p><% multilang("938" "LANG_SIP_ADVANCED"); %></p>
  <div class="column_title_right"></div>
 </div>
 <div class="data_common table_width">
  <table>
  <tr>
   <td><% multilang("939" "LANG_SIP_PORT"); %></td>
   <td>
   <input type=text name=sipPort size=10 maxlength=5 value="<%voip_general_get("sipPort"); %>">
   <%voip_general_get("sipPorts");%>
   </td>
  </tr>
  <tr>
   <td><% multilang("940" "LANG_MEDIA_PORT"); %></td>
   <td>
   <input type=text name=rtpPort size=10 maxlength=5 value="<%voip_general_get("rtpPort"); %>">
   <%voip_general_get("rtpPorts");%>
   </td>
  </tr>
  <tr>
   <td><% multilang("941" "LANG_DMTF_RELAY"); %></td>
   <td>
    <select name=dtmfMode onchange="dtmfMode_change()">
     "<%voip_general_get("dtmfMode");%>"
    </select>
   </td>
  </tr>
  <tr>
   <td><% multilang("942" "LANG_DTMF_RFC2833_PAYLOAD_TYPE"); %></td>
   <td>
    <input type=text name=dtmf_2833_pt size=12 maxlength=3 value=<%voip_general_get("dtmf_2833_pt");%>>
   </td>
  </tr>
  <tr>
   <td><% multilang("943" "LANG_DTMF_RFC2833_PACKET_INTERVAL"); %></td>
   <td>
    <input type=text name=dtmf_2833_pi size=12 maxlength=3 value=<%voip_general_get("dtmf_2833_pi");%>>(<% multilang("952" "LANG_MSEC"); %>) (<% multilang("953" "LANG_MUST_BE_MULTIPLE_OF_10MSEC"); %>)
   </td>
  </tr>
  <tr>
   <td><% multilang("944" "LANG_USE_DTMF_RFC2833_PT_AS_FAX_MODEM_RFC2833_PT"); %></td>
   <td><input type=checkbox name=fax_modem_2833_pt_same_dtmf <%voip_general_get("fax_modem_2833_pt_same_dtmf");%>><% multilang("248" "LANG_ENABLE"); %></td>
  </tr>
  <tr>
   <td><% multilang("945" "LANG_FAX_MODEM_RFC2833_PAYLOAD_TYPE"); %></td>
   <td>
    <input type=text name=fax_modem_2833_pt size=12 maxlength=3 value=<%voip_general_get("fax_modem_2833_pt");%>>
   </td>
  </tr>
  <tr>
   <td><% multilang("946" "LANG_FAX_MODEM_RFC2833_PACKET_INTERVAL"); %></td>
   <td>
    <input type=text name=fax_modem_2833_pi size=12 maxlength=3 value=<%voip_general_get("fax_modem_2833_pi");%>>(<% multilang("952" "LANG_MSEC"); %>) (<% multilang("953" "LANG_MUST_BE_MULTIPLE_OF_10MSEC"); %>)
   </td>
  </tr>
  <tr>
   <td><% multilang("947" "LANG_SIP_INFO_DURATION_MS"); %></td>
   <td>
    <input type=text name=sipInfo_duration size=12 maxlength=4 value=<%voip_general_get("sipInfo_duration");%>>
   </td>
  </tr>
  <tr>
   <td><% multilang("948" "LANG_CALL_WAITING"); %></td>
   <td><input type=checkbox name=call_waiting onclick="enable_callwaiting();" <%voip_general_get("call_waiting");%>><% multilang("248" "LANG_ENABLE"); %></td>
  </tr>
  <tr>
   <td><% multilang("949" "LANG_CALL_WAITING_CALLER_ID"); %></td>
   <td><input type=checkbox name=call_waiting_cid <%voip_general_get("call_waiting_cid");%>><% multilang("248" "LANG_ENABLE"); %></td>
  </tr>
  <tr>
   <td><% multilang("950" "LANG_REJECT_DIRECT_IP_CALL"); %></td>
   <td><input type=checkbox name=reject_direct_ip_call <%voip_general_get("reject_direct_ip_call");%>><% multilang("248" "LANG_ENABLE"); %></td>
  </tr>
     <tr>
     <td><% multilang("951" "LANG_SEND_CALLER_ID_HIDDEN"); %></td>
     <td><input type=checkbox name=caller_id_hidden <%voip_general_get("caller_id_hidden");%>><% multilang("248" "LANG_ENABLE"); %></td>
   </tr>
   <tr>
     <td>call transfer</td>
     <td><input type=checkbox name=Call_Transfer <%voip_general_get("Call_Transfer");%>><% multilang("248" "LANG_ENABLE"); %></td>
   </tr>
    <tr>
    <td>3 way conference</td>
    <td><input type=checkbox name=3PTY_Conference <%voip_general_get("3PTY_Conference");%>><% multilang("248" "LANG_ENABLE"); %></td>
   </tr>
    <tr>
     <td>conference on server/CPE</td>
     <td class="input_radio"><%voip_general_get("Conference_server_cpe");%></td>
   </tr>
     <tr>
    <td >conference-uri</td>
    <td >
   <input type="text" name="conference_uri" size=20 maxlength=39 value="<%voip_general_get("conference_uri");%>"></td>
  </tr>
 </table>
 </div>
</div>
<div class="column">
 <div class="column_title">
  <div class="column_title_left"></div>
  <p><% multilang("954" "LANG_FORWARD_MODE"); %></p>
  <div class="column_title_right"></div>
 </div>
 <div class="data_common">
  <table>
   <tr>
   <td  width=155><% multilang("955" "LANG_IMMEDIATE_FORWARD_TO"); %></td>
   <td  width=170>
   <%voip_general_get("CFAll");%>
   </td>
   </tr>
   <tr>
   <td ><% multilang("956" "LANG_IMMEDIATE_NUMBER"); %></td>
   <td >
   <%voip_general_get("CFAll_No");%>
   </td>
   </tr>
   <tr>
   <td ><% multilang("957" "LANG_BUSY_FORWARD_TO"); %></td>
   <td >
   <%voip_general_get("CFBusy");%>
   </td>
   </tr>
   <tr>
   <td ><% multilang("958" "LANG_BUSY_NUMBER"); %></td>
   <td >
   <%voip_general_get("CFBusy_No");%>
   </td>
   </tr>
   <%voip_general_get("CFNoAns");%>
  </table>
 </div>
</div>

<div class="column">
 <div class="column_title column_title1">
  <div class="column_title_left"></div>
  <p><%voip_general_get("display_dialplan_title");%></p>
  <div class="column_title_right"></div>
 </div>
 <div class="data_common">
  <table <%voip_general_get("display_dialplan");%>>
  <!--
   <tr>
    <td  width=155>Replace prefix code</td>
    <td  width=170>
    <%voip_general_get("ReplaceRuleOption");%>
    </td>
   </tr>
   <tr>
    <td  width=155>Relace rule</td>
    <td  width=170>
    <input type="text" name="ReplaceRuleSource" size=12 maxlength=79 value="<%voip_general_get("ReplaceRuleSource");%>"> ->
    <input type="text" name="ReplaceRuleTarget" size=3 maxlength=9 value="<%voip_general_get("ReplaceRuleTarget");%>"></td>
   </tr>
  -->
   <tr>
    <td  width=155><% multilang("970" "LANG_ENABLE_DIALPLAN"); %></td>
    <td  width=170>
    <%voip_general_get("digitmap_enable");%>
    </td>
   </tr>
   <tr>
    <td  width=155><% multilang("969" "LANG_DIAL_PLAN"); %></td>
    <td  width=170>
    <input type="text" name="dialplan" size=20 maxlength=79 value="<%voip_general_get("dialplan");%>"></td>
   </tr>
  <!--
   <tr>
    <td  width=155>Auto Prefix</td>
    <td  width=170>
    <input type="text" name="AutoPrefix" size=5 maxlength=4 value="<%voip_general_get("AutoPrefix");%>">
   </tr>
   <tr>
    <td  width=155>Prefix Unset Plan</td>
    <td  width=170>
    <input type="text" name="PrefixUnsetPlan" size=20 maxlength=79 value="<%voip_general_get("PrefixUnsetPlan");%>">
   </tr>
  -->
  </table>
 </div>
</div>
<div class="column">
 <div class="column_title">
  <div class="column_title_left"></div>
  <p><% multilang("973" "LANG_CODEC"); %></p>
  <div class="column_title_right"></div>
 </div>
 <div class="data_common data_common1">
  <!-- RTP Redundant -->
  <table cellSpacing=1 cellPadding=1 border=0 <%voip_general_get("RTP_RED_BUILD");%>>
   <tr>
    <td style="width: 200px;" bgColor=#aaddff rowspan=2><% multilang("974" "LANG_RTP_REDUNDANT"); %><br>(<% multilang("975" "LANG_FIRST_PRECEDENCE"); %>)</td>
    <td bgColor=#ddeeff style="width: 252px;"><% multilang("973" "LANG_CODEC"); %></td>
    <td bgColor=#ddeeff>
     <select name=rtp_redundant_codec style="width: 180px; height: 25px;">
      <%voip_general_get("rtp_redundant_codec_options");%>
     </select>
    </td>
   </tr>
   <tr>
    <td bgColor=#ddeeff style="width: 252px;"><% multilang("976" "LANG_PAYLOAD_TYPE"); %></td>
    <td bgColor=#ddeeff ><input style="width: 180px; height: 25px;" type=text name=rtp_redundant_payload_type size=10 value="<%voip_general_get("rtp_redundant_payload_type");%>"></td>
   </tr>
  </table>
 </div>
</div>
<div class="data_common data_common1 data_common_notitle data_common_notitle1">
 <%voip_general_get("codec_var");%>
</div>
<div class="data_common data_common1 data_common_notitle data_common_notitle1">
 <table cellSpacing=1 cellPadding=2 border=0 class="codec_table" style="margin-top: -50px;">
 <%voip_general_get("codec");%>
 </table>
</div>
<div class="data_common data_common1 data_common_notitle data_common_notitle1">
 <%voip_general_get("codec_opt");%>
</div>
<div class="column">
 <div class="column_title column_title1">
  <div class="column_title_left"></div>
  <p><%voip_general_get("hotline_option_display_title");%></p>
  <div class="column_title_right"></div>
 </div>
 <div class="data_common">
  <!-- Hot Line -->
  <table cellSpacing=1 cellPadding=2 border=0 width=450 <%voip_general_get("hotline_option_display");%>>
   <tr>
    <td  width=150><% multilang("999" "LANG_USE_HOT_LINE"); %></td>
    <td >
    <input type=checkbox name=hotline_enable onClick="enable_hotline()" <%voip_general_get("hotline_enable");%>><% multilang("248" "LANG_ENABLE"); %>
    </td>
   </tr>
    <tr>
    <td  width=150><% multilang("1000" "LANG_HOT_LINE_NUMBER"); %></td>
    <td >
     <input type=text name=hotline_number size=20 maxlength=39 value="<%voip_general_get("hotline_number");%>">
    </td>
   </tr>
  </table>
  <script language=javascript>enable_hotline()</script>
 </div>
</div>
<div class="column">
 <div class="column_title">
  <div class="column_title_left"></div>
  <p>DND (Don't Disturb)</p>
  <div class="column_title_right"></div>
 </div>
 <div class="data_common">
  <!-- DND (Don't Disturb) -->
  <table cellSpacing=1 cellPadding=2 border=0 width=450>
  <tr>
   <td  width=150>DND <% multilang("134" "LANG_MODE"); %></td>
   <td >
    <input type=radio name=dnd_mode value=2 onClick="enable_dnd()" <%voip_general_get("dnd_always");%>><% multilang("1001" "LANG_ALWAYS"); %>
    <input type=radio name=dnd_mode value=1 onClick="enable_dnd()" <%voip_general_get("dnd_enable");%>><% multilang("248" "LANG_ENABLE"); %>
    <input type=radio name=dnd_mode value=0 onClick="enable_dnd()" <%voip_general_get("dnd_disable");%>><% multilang("247" "LANG_DISABLE"); %>
   </td>
  </tr>
  <tr>
   <td  width=150><% multilang("1002" "LANG_FROM"); %></td>
   <td >
    <input type=text name=dnd_from_hour size=3 maxlength=2 value="<%voip_general_get("dnd_from_hour");%>">:
    <input type=text name=dnd_from_min size=3 maxlength=2 value="<%voip_general_get("dnd_from_min");%>">
    (hh:mm)
   </td>
  </tr>
  <tr>
   <td  width=150> <% multilang("1003" "LANG_TO"); %></td>
   <td >
    <input type=text name=dnd_to_hour size=3 maxlength=2 value="<%voip_general_get("dnd_to_hour");%>">:
    <input type=text name=dnd_to_min size=3 maxlength=2 value="<%voip_general_get("dnd_to_min");%>">
    (hh:mm)
   </td>
  </tr>
  </table>
  <script language=javascript>enable_dnd()</script>
 </div>
</div>

<div class="column">
<%voip_general_get("not_ipphone_option_start");%>
<%voip_general_get("not_dect_port_option");%>
 <div class="column_title">
  <div class="column_title_left"></div>
  <p><% multilang("1005" "LANG_ALARM"); %></p>
  <div class="column_title_right"></div>
 </div>
 <div class="data_common">
<%voip_general_get("not_ipphone_option_end");%>
  <table cellSpacing=1 cellPadding=2 border=0 width=450 <%voip_general_get("not_ipphone_table");%> >
   <tr>
    <td  width=150><% multilang("248" "LANG_ENABLE"); %></td>
    <td >
     <input type=checkbox name=alarm_enable <%voip_general_get("alarm_enable");%> <%voip_general_get("alarm_disabled");%>>
    </td>
   </tr>
   <tr>
    <td  width=150><% multilang("78" "LANG_TIME"); %></td>
    <td >
     <input type=text name=alarm_hh size=3 maxlength=2 value="<%voip_general_get("alarm_hh");%>" <%voip_general_get("alarm_disabled");%>>:
     <input type=text name=alarm_mm size=3 maxlength=2 value="<%voip_general_get("alarm_mm");%>" <%voip_general_get("alarm_disabled");%>> (hh:mm)
    </td>
   </tr>
  </table>
 </div>
</div>

<div style="padding:10px 0;">
 <input class="link_bg" type="button" value="<% multilang("334" "LANG_APPLY"); %>" onclick="applyclick();">
 &nbsp;&nbsp;&nbsp;&nbsp;
 <input class="link_bg" type="reset" value="<% multilang("222" "LANG_RESET"); %>">
</div>
 <input type="hidden" name="postSecurityFlag" value="">
<script language=javascript>init();</script>
</form>
</body>
</html>
