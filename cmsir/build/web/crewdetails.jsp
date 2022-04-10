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
  
<form action="crewdetailsDao.jsp" method="POST" onsubmit="return validate1();">
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
        		Crew_type :</br></br>
            </td>
            <td>
        		<input type="text" name="c_type" size="30" autocomplete="on"id="c_type"></br></br>
            </td>  
        </tr>
        
        	<td>
        		Date of Joining :
            </td>
            <td>
        		<input type="date" name="doj"id="doj"></br></br>
            </td>
        </tr>
        <tr>
        	<td>
        		Basic Salary :
            </td>
            <td>
                <input type="text" size="30" name="basic_salary"></br></br>
            </td>
        </tr>
        <tr>
        	<td>
        		Designation :</br>
            </td>
            <td>
        		<input type="text" size="30" name="designatiob"></br>
            </td>
        </tr>
        
        
        
        	 </table>
  <br/>
       <input type="submit" value="Save">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    	<input type="reset" value="Clear">               
     	             
     	
        
    
	<a href="crew_schedule.jsp"><img src="images\v2.png" border="0" alt="" width="80" height="40" align="left" /></a>
	<a href="attendance.jsp"><img src="images\v11.png" border="0" alt="" width="80" height="40"  align="right"/></a>
        
        <br><br><br>
        <center>
            <b><a href="updatecrewdetails.jsp">Update Record</a></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <b><a href="deletecrewdetails.jsp">Delete Record</a></b>
        </center>
      </div>
 <div style="clear:both; height:10px;"></div>   
 </form> 
 </br></br></br></br></br>
 <%@ include file="footer.jsp" %>  
 </body>
 </html>
