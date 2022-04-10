<%@page import="java.sql.*"%>
<%@page import="mypack.Dao"%>



<% 	
	Connection con =Dao.getMyConnection();
	Statement stmt = con.createStatement();
	ResultSet rest = stmt.executeQuery("select * from training");
%>	
<html>
<body vlink="blue" alink="green"  bgcolor="D8F4FE">

<%@ include file="header2.jsp" %>
</br></br>
<center><h1><font color="red">Training Details</font></h1></center><br/><br/>
<table border="2" align="center" bgcolor="#FFFFDD" cellpadding="4" cellspacing="4" bordercolor="#660033">
<tr rowspan="2" bgcolor="#CCFFCC" bordercolor="green">
<th style="color: green">Training_id</th>
<th style="color: green">Crew_id</th>
<th style="color: green">Crew Name</th>
<th style="color: green">Training from</th>
<th style="color: green">Training to</th>
<th style="color: green">Training at</th>
<th style="color: green">Physical Test</th>
<th style="color: green">Physical Date</th>

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
 <br/><br/><br/>
<center>
<font color="#0000FF" face="Times New Roman, Times, serif">Are You Interest to know more details about Training??
<br>Click Here</font>
<br />
<a href="traininginfo2.jsp"><h3>View more Details</h3></a>
</center>
 <br/><br/><br/>
<br><br>
    <a href="crewinfomenu.jsp"><img src="images\v2.png" border="0" alt="" width="80" height="40" align="left" /></a>
 <a href="TDTinfo.jsp"><img src="images\v11.png" border="0" alt="" width="80" height="40"  align="right"/></a>  
<br/><br/><br/>
  <%@ include file="footer.jsp" %>  
 </body>
 </html>