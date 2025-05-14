<%SendWebHeadStr(); %>
<title><% multilang("20" "LANG_PORT_FORWARDING"); %> Summary</title>
<style>
      .list_header ul{
    display: flex;
    gap: 70px;
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
</head>
<body>
    <div class="list_header"> 
        <ul>
          <li><a href="/algonoff.asp">ALG Configuration </a></li>
          <li><a href="/fw-dmz.asp">DMZ Configuration</a></li>
          <li><a href="/fw-portfw.asp">Port Triggering</a></li>
          <li><a href="/fw-portfw_summary.asp" class="active">Port triggering summary</a></li>
        </ul>
      </div>
</body>
</html>