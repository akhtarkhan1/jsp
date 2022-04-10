<html>
<body>
 <%@ include file="header.jsp" %>
 <style>input:focus, textarea:focus{background-color:#CCFFFF;}</style>
 <br>
   <center>
   <h1><u><font color="red">Details of Crew Schedule</font></u></h1>
   </center>
<br>
<form action="updatecrew_scheduleDao.jsp" method="POST">
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
                <td style="font-size:14px;"><span style="color:#335672;">Crew_id must be unique</span><td></br>

        </tr>
        <tr>
        	<td>
        		Crew Name :</br></br>
            </td>
            <td>
        		<input type="text" size="30" name="name"></br></br>
            </td>
        </tr>
        <tr>
        	<td>
        		Train_id :</br></br>
            </td>
            <td>
        		<input type="text" size="30" name="train_id"id="train_id"></br></br>
            </td>
        </tr>
        <tr>
        	<td>
        		Train Name :</br></br>
            </td>
            <td>
        		<input type="text" size="30" name="train_name"></br></br>
            </td>
        </tr>
        <tr>
        	<td>
        		sign_on :</br></br>
            </td>
            <td>
        		<input type="text" size="30" name="sign_on"id="sign_on"></br></br>
            </td>
        </tr>
        <tr>
        	<td>
        		sign_off :</br></br>
            </td>
            <td>
        		<input type="text" size="30" name="sign_off"id="sign_off"></br></br>
            </td>
        </tr>
        <tr>
        	<td>
        		Minimum No. of Crews :</br></br>
            </td>
            <td>
        		<input type="text" size="30" name="min_no_of_crews"></br></br>
            </td>
        </tr>
        <tr>
        	<td>
        		Date:</br></br>
            </td>
            <td>
        		<input type="date" size="30" name="date"id="date"></br></br>
            </td>
        </tr>
        </table>
       <br/>
      <input type="submit" value="Update">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    	<input type="reset" value="Clear">         
        
	<a href="crew_schedule.jsp"><img src="images\v2.png" border="0" alt="" width="80" height="40" align="left" /></a>
	</div> 

 <div style="clear:both; height:10px;"></div>   
 </form>   
  <%@ include file="footer.jsp" %> 
 </body>
 </html>
