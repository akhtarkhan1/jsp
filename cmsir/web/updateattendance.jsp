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
   <h1><u><font color="red">Attendance Details</font></u></h1>
   </center>
  
<form action="updateattendanceDao.jsp" method="POST">
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
        <tr>
        	<td></td>
                <td style="font-size:14px;"><span style="color:#335672;">crew_id must be unique</span><td></br>
        </tr>
        <tr>
        	<td>
        		Crew_Name :</br></br>
            </td>
            <td>
        		<input type="text" name="name" size="30" autocomplete="on"id="name"></br></br>
            </td>  
        </tr>
        <tr>
        	<td>
        		Total Present :
            </td>
            <td>
                <input type="text" size="30" name="total_present"></br></br>
            </td>
        </tr>
        <tr>
        	<td>
        		Total Leave :</br>
            </td>
            <td>
        		<input type="text" size="30" name="total_leave"></br>
            </td>
        </tr>
        <tr>
        	<td>
        		Leave Date from :
            </td>
            <td>
        		<input type="date" name="date_of_leave_from"id="dof"></br></br>
            </td>
        </tr>
        <tr>
<td>
Leave Date To :
</td>
<td>
<input type="date" name="date_of_leave_to"id="dot"></br></br>
</td>
</tr>
</table>
<br/>
</div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<input type="submit" value="Update">
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="reset" value="Clear">               
          
<a href="attendance.jsp"><img src="images\v2.png" border="0" alt="" width="80" height="40" align="left" /></a>
           
 <div style="clear:both; height:10px;"></div>   
 </form> 
 </br></br></br></br></br>
 <%@ include file="footer.jsp" %>  
 </body>
 </html>
