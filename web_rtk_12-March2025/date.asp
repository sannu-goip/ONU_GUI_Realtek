<%SendWebHeadStr(); %>
<title><% multilang("831" "LANG_SYSTEM_DATE_AND_TIME_MODIFICATION"); %></title>
<SCRIPT>
function on_submit()
{
 document.forms[0].set.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
</SCRIPT>
</head>
<body>
<div class="intro_main ">
 <p class="intro_title"><% multilang("831" "LANG_SYSTEM_DATE_AND_TIME_MODIFICATION"); %></p>
 <p class="intro_content"> <% multilang("832" "LANG_SET_THE_SYSTEM_DATE_AND_TIME"); %></p>
</div>
<form action=/boaform/admin/formStatusModify method=POST name="sdate">
<div class="data_common data_common_notitle">
 <table>
  <tr>
       <th width=30%><font size=2><b><% multilang("77" "LANG_DATE"); %>:</b></td>
       <td width=70%>
        <select name="sys_month">
          <option value=0>Jan</option><option value=1>Feb</option>
          <option value=2>Mar</option><option value=3>Apr</option>
          <option value=4>May</option><option value=5>Jun</option>
          <option value=6>Jul</option><option value=7>Aug</option>
          <option value=8>Sep</option><option value=9>Oct</option>
          <option value=10>Nov</option><option value=11>Dec</option>
        </select>&nbsp;
        <select name="sys_day">
          <option >1</option><option >2</option><option >3</option>
          <option >4</option><option >5</option><option >6</option>
          <option >7</option><option >8</option><option >9</option>
          <option >10</option><option >11</option><option >12</option>
          <option >13</option><option >14</option><option >15</option>
          <option >16</option><option >17</option><option >18</option>
          <option >19</option><option >20</option><option >21</option>
          <option >22</option><option >23</option><option >24</option>
          <option >25</option><option >26</option><option >27</option>
          <option >28</option><option >29</option><option >30</option>
           <option >31</option>
        </select>&nbsp;
        <select name="sys_year">
          <option >2004</option><option >2005</option><option >2006</option>
          <option >2007</option><option >2008</option><option >2009</option>
          <option >2010</option><option >2011</option><option >2012</option>
          <option >2013</option><option >2014</option><option >2015</option>
          <option >2016</option><option >2017</option><option >2018</option>
          <option >2019</option><option >2020</option><option >2021</option>
          <option >2022</option><option >2023</option><option >2024</option>
          <option >2025</option><option >2026</option><option >2027</option>
        </select>
       </td>
   </tr>
   <tr>
       <th width=30%><font size=2><b><% multilang("78" "LANG_TIME"); %>:</b></td>
       <td width=70%>
        <select name="sys_hour">
           <option >0</option><option >1</option><option >2</option>
           <option >3</option><option >4</option><option >5</option>
           <option >6</option><option >7</option><option >8</option>
           <option >9</option><option >10</option><option >11</option>
           <option >12</option><option >13</option><option >14</option>
           <option >15</option><option >16</option><option >17</option>
           <option >18</option><option >19</option><option >20</option>
           <option >21</option><option >22</option><option >23</option>
         </select>&nbsp;:
         <select name="sys_minute">
           <option >0</option><option >1</option><option >2</option>
           <option >3</option><option >4</option><option >5</option>
           <option >6</option><option >7</option><option >8</option>
           <option >9</option><option >10</option><option >11</option>
           <option >12</option><option >13</option><option >14</option>
           <option >15</option><option >16</option><option >17</option>
           <option >18</option><option >19</option><option >20</option>
           <option >21</option><option >22</option><option >23</option>
           <option >24</option><option >25</option><option >26</option>
           <option >27</option><option >28</option><option >29</option>
           <option >30</option><option >31</option><option >32</option>
           <option >33</option><option >34</option><option >35</option>
           <option >36</option><option >37</option><option >38</option>
           <option >39</option><option >40</option><option >41</option>
           <option >42</option><option >43</option><option >44</option>
           <option >45</option><option >46</option><option >47</option>
           <option >48</option><option >49</option><option >50</option>
           <option >51</option><option >52</option><option >53</option>
           <option >54</option><option >55</option><option >56</option>
           <option >57</option><option >58</option><option >59</option>
         </select>&nbsp;:
         <select name="sys_second">
           <option >0</option><option >1</option><option >2</option>
           <option >3</option><option >4</option><option >5</option>
           <option >6</option><option >7</option><option >8</option>
           <option >9</option><option >10</option><option >11</option>
           <option >12</option><option >13</option><option >14</option>
           <option >15</option><option >16</option><option >17</option>
           <option >18</option><option >19</option><option >20</option>
           <option >21</option><option >22</option><option >23</option>
           <option >24</option><option >25</option><option >26</option>
           <option >27</option><option >28</option><option >29</option>
           <option >30</option><option >31</option><option >32</option>
           <option >33</option><option >34</option><option >35</option>
           <option >36</option><option >37</option><option >38</option>
           <option >39</option><option >40</option><option >41</option>
           <option >42</option><option >43</option><option >44</option>
           <option >45</option><option >46</option><option >47</option>
           <option >48</option><option >49</option><option >50</option>
           <option >51</option><option >52</option><option >53</option>
           <option >54</option><option >55</option><option >56</option>
           <option >57</option><option >58</option><option >59</option>
         </select>
       </td>
   </tr>
   <tr>
       <th width=30%><font size=2><b><% multilang("69" "LANG_TIME_ZONE"); %>:</b></td>
       <td width=70%>
        <select name="sys_tz">
           <option >UTC</option><option >ADT</option><option >AST</option>
           <option >EST</option><option >CST</option><option >MST</option>
         </select>
       </td>
   </tr>
 </table>
</div>
<div class="btn_ctl">
 <input type="hidden" value="/admin/date.asp" name="submit-url">
 <input class="link_bg" type="submit" value="<% multilang("833" "LANG_SUBMIT"); %>" name="set" onClick="return on_submit()">&nbsp;&nbsp;
 <input class="link_bg" type="button" value="<% multilang("685" "LANG_CANCEL"); %>" name="close" onClick="javascript: window.close();">
 <input type="hidden" name="postSecurityFlag" value="">
</div>
</form>
<br><br>
</body>
</html>
