/*start of HGW 2008.1.10 For A36D04370 FireFox 显示 V100R001C02B013 by w00104696*/
function getDisplayText(val,lineLength)
{
   if (lineLength == null)
      lineLength = 20;
   var content = '';
   var index = 0;
   var len = val.length;
   
   while (len > lineLength)
   {
	  content += val.substr(index,lineLength) + '\n';   
	  len -= lineLength;
	  index += lineLength;
   }
   content += val.substr(index);    
   
   return content; 
}
/*end of HGW 2008.1.10 For A36D04370 FireFox 显示 V100R001C02B013 by w00104696*/

function makeVTableHTML(arrMsgInfoName,TabWidth)
{	
    var i;	
	var j;
	var start;
	var end;
	var strTemp;
	var style = ' class=\"hd\"';
	var strTDStart;
	var width;
	var arrMsgInfo = eval(arrMsgInfoName);
    var transformfunction;
    var PrintBuf = "";
    var strVal;
	
    if (TabWidth == null)
	{
	   TabWidth = 450;
    }

PrintBuf += '<div class="col-md-12 table-responsive"><TABLE class="table table-bordered table_text_center">';
    
	var tempArray = arrMsgInfo[0];
 
    if (arrMsgInfo[0][1] == "")
    {
        start = 3;
        end   = tempArray.length - 2 ;
    }
    else
    {
        start = 0;
        end   = tempArray.length;
    }
    
	//输出提示行
	PrintBuf+=("<TR>");
	for(j = start; j < end; j++)
    {    
	    width = ' width="' + arrMsgInfo[0][j] + '" ';
		strTDStart = '<TD>';
	    
	    strTemp = strTDStart + arrMsgInfo[1][j];
	    strTemp += '</TD>';
	    PrintBuf += (strTemp);
    }	
	PrintBuf+=("</TR>");

	//从第3行开始输出
	for( i = 3; i < (arrMsgInfo.length - 1); i++ )
	{	
		PrintBuf += ("<TR>");

		for(j = start; j < end; j++)
		{
			width = ' width ="' + arrMsgInfo[0][j] + '"';
		    strTDStart = '<TD>';
			if (arrMsgInfo[2][j] != "")
    	    {
        	    transformfunction = eval(arrMsgInfo[2][j]);
		    strVal = transformfunction(arrMsgInfo[i][j]);
        	    strTemp = strTDStart + getDisplayText(strVal, 100);
    	    }
    		else
    		{
    		    strTemp = strTDStart + getDisplayText(arrMsgInfo[i][j],100);
    		}
		    
		    strTemp += '</TD>';
		    PrintBuf += strTemp;
	    }
       
		PrintBuf += "</TR>";
	}

	PrintBuf += '</TABLE></div>';

	return PrintBuf;
}

function makeHTableHTML(arrMsgInfoName,TabWidth)
{/*cellspacing=\'0\' cellpadding=\'3\' */
	var i;	
	var j;
	var start;
	var end;
	var strTemp;
	var style = ' class="table_title"';
	var strTDStart;
	var width;
	var arrMsgInfo = eval(arrMsgInfoName);
    var transformfunction;
    var PrintBuf = "";
	
    if (TabWidth == null)
	{
	   TabWidth = 450;
    }

PrintBuf += '<div class="col-md-12 table-responsive"><TABLE class="table table-bordered table_text_center">';
    
	var tempArray = arrMsgInfo[1];
 
    if (arrMsgInfo[0][1] == "")
    {
        start = 3;
        end   = tempArray.length - 2 ;
    }
    else
    {
        start = 0;
        end   = tempArray.length;
    }


	for(j = start; j < end; j++)
	{
	    PrintBuf += ("<TR>");
		width = ' width ="' + arrMsgInfo[0][0] + '"';
			
	    strTDStart = '<TD>';
	    strTemp = strTDStart + arrMsgInfo[1][j];
	    strTemp += '</TD>';
	    PrintBuf += strTemp;
		     
		width = ' width ="' + arrMsgInfo[0][1] + '"';	
	    strTDStart = '<TD>';     
		if (arrMsgInfo[2][j] != "")
        {
    	    transformfunction = eval(arrMsgInfo[2][j]);
    	    strTemp = strTDStart + transformfunction(arrMsgInfo[3][j]);
        }
    	else
    	{
    	    strTemp = strTDStart + arrMsgInfo[3][j];
    	}		    
	    strTemp += '</TD>';
		    
	    PrintBuf += strTemp;
		    
	    PrintBuf += "</TR>";
	}
	

	PrintBuf += '</TABLE></div>';

	return PrintBuf;
}

function printHTable(arrMsgInfoName,TabWidth)
{	
    var Html = makeHTableHTML(arrMsgInfoName,TabWidth);
	document.write(Html);
}

function printVTable(arrMsgInfoName,TabWidth)
{	
    var Html = makeVTableHTML(arrMsgInfoName,TabWidth);
	document.write(Html);
}