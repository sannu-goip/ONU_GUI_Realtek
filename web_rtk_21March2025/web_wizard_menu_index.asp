<%SendWebHeadStr(); %>
<title>
<VWS_FUNCTION (void*)htmlWizardTitle();
</title>
 <style>
  .wizard_page{
   margin: 0 auto;
   width: 960px;
   height: 100%;
  }
 </style>
</head>
<body>
    <div id="header">
  <div class="top_bg" align="right">
  </div>
    </div>
    <div class="wizard_page">
  <iframe src="rose_wizard_2.htm" scrolling="no" frameborder="0" height="100%" id="mainFrame" width="100%"></iframe>
    </div>
    <script>
        var iframe = document.getElementById('mainFrame');
        var ifrmeWindow = iframe.contentWindow;
        iframe.onload = function() {
            setInterval(syncIframe, 200);
        };
        function syncIframe() {
            var body = ifrmeWindow.document.body;
      if(body){
             var height = body.scrollHeight;
             var width = body.scrollWidth;
             var oldMapping = {width: iframe.width, height: iframe.height};
             var newMapping = {width: width, height: height};
             if (oldMapping.height != newMapping.height) {
                 oldMapping.height = newMapping.height;
                 iframe.height = height+100;
             }
            }
        }
    </script>
</body>
</html>
