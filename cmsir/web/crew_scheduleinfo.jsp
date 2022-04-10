<%@page import="java.sql.*"%>
<%@page import="mypack.Dao"%>



<% 	
	Connection con =Dao.getMyConnection();
	Statement stmt = con.createStatement();
	ResultSet rest = stmt.executeQuery("select * from crew_schedule");
%>	
<html>
<body vlink="blue" alink="green"  bgcolor="D8F4FE">

<%@ include file="userheader2.jsp" %>
</br>
<center><h1><font color="red"><u>Crew Schedule Details</u></font></h1></center>
<font size="4" color="black">
 <p>
Crew has to be called two and half hour to three hours prior to the scheduled signing on. Signing on is a physical
act when the staff presents itself at the place of the duty at the scheduled called time. Crew scheduling requires
ear marking of individual staff for every requirement. The requirement may be:
 <ul>  
i)  Daily train arrangement, which is based on shift wise/daily train schedule given by the control.<br>
ii) Schedule for pilots, waiting duty staff etc.(this schedule normally does not change on day to day
basis the expected duty hours of such staff may vary and is given in the schedule).
 </ul>
 At present provisional duty list is prepared every day which names each and every staff of that depot
station wise and status is updated as and when input are received. The crew scheduling is
done with the help of this duty list based on certain set criteria according to the requirement.
This list is finalized to be used as a guide for knowing the daily status for master roll.
</p>
 </font>
 <br/>
<table border="2" align="center" bgcolor="#FFFFDD" cellpadding="4" cellspacing="4" bordercolor="#660033">
<tr rowspan="2" bgcolor="#CCFFCC" bordercolor="green">
<th style="color: green">Crew_id</th>
<th style="color: green">Crew_Name</th>
<th style="color: green">Train_id</th>
<th style="color: green">Train Name</th>
<th style="color: green">Sign On</th>
<th style="color: green">Sign Off</th>
<th style="color: green">Minimum No of Crews</th>
<th style="color: green">Date</th>

</tr>

<%
while(rest.next()){%>
<tr>
	<td style="color: #9900CC" >
		<%=rest.getString(1)%>
	</td>
	<td style="color: #9900CC">
		<%=rest.getString(2)%>
	</td>
	<td style="color: #9900CC" >
		<%=rest.getString(3)%>
	</td>
	<td style="color: #9900CC">
		<%=rest.getString(4)%>
	</td>
        <td style="color: #9900CC">
		<%=rest.getString(5)%>
	</td>
        <td style="color: #9900CC">
		<%=rest.getString(6)%>
	</td>
        <td style="color: #9900CC">
		<%=rest.getString(7)%>
	</td>
        <td style="color: #9900CC">
		<%=rest.getString(8)%>
	</td>
	</tr>
 <%
 } %>
 </table>
 <a href="crewinfomenu.jsp"><img src="images\v2.png" border="0" alt="" width="80" height="40" align="left" /></a>
 <a href="crewdetailsinfo.jsp"><img src="images\v11.png" border="0" alt="" width="80" height="40"  align="right"/></a> 
<br/><br/><br/><br/><br/>
  <%@ include file="footer.jsp" %>  
 </body>
 </html>