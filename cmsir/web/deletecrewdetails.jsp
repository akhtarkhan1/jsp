<html>
    <head>        
    <title>Crew Management System of Indian Railway</title>
    <script type="text/javascript" src="js/common.js"></script>
  </head>
<body>
 <%@ include file="header.jsp" %>
 <style>input:focus, textarea:focus{background-color:#CCFFFF;}</style>
 <br>
   <center>
   <h1><u><font color="red">Crew Details</font></u></h1>
   </center>
  
<form action="deletecrewdetailsDao.jsp" method="POST" >
</br></br>
<div align="center">

	<table style="font-size:18px;">
    	<tr>
        	<td>
        		Crew_id :<span style="color: red;">*</span>
            </td>
            <td>
        		<input type="text" name="c_id" size="30" autocomplete="on"id="c_id">
            </td>  
        </tr>
        </table>
        <br/>
       <input type="submit" value="Delete">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    	<input type="reset" value="Clear">               
     	<a href="crewdetails.jsp"><img src="images\v2.png" border="0" alt="" width="80" height="40" align="left" /></a>
	</div>
 <div style="clear:both; height:10px;"></div>   
 </form> 
 </br></br></br></br></br>
 <%@ include file="footer.jsp" %>  
 </body>
 </html>
