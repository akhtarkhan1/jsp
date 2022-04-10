<%@page import="java.sql.*"%>
<%@page import="mypack.Dao"%>



<% 	
	Connection con =Dao.getMyConnection();
	Statement stmt = con.createStatement();
	ResultSet rest = stmt.executeQuery("select * from tdt");
%>	
<html>
<body vlink="blue" alink="green"  bgcolor="D8F4FE">

<%@ include file="header2.jsp" %>
</br></br>
<center><h1><font color="red"><u>Travelling Data nformation</u></font></h1></center><br/><br/>
<br/>
<table border="2" align="center" bgcolor="#FFFFDD" cellpadding="4" cellspacing="4" bordercolor="#660033">
<tr rowspan="2" bgcolor="#CCFFCC" bordercolor="green">
<th style="color: green">Crew_id</th>
<th style="color: green">Crew Type</th>
<th style="color: green">Sign-On</th>
<th style="color: green">Sign-off</th>
<th style="color: green">KM-Earning</th>
<th style="color: green">Duration</th>
<th style="color: green">Total Tdt</th>
<th style="color: green">Total NA</th>
<th style="color: green">Section Id</th>
<th style="color: green">Section Name</th>
<th style="color: green">Section Code</th>
<th style="color: green">From</th>
<th style="color: green">To</th>
<th style="color: green">Tounge</th>
<th style="color: green">Trips</th>
<th style="color: green">Train Load</th>
<th style="color: green">Train Type</th>
<th style="color: green">service</th>
<th style="color: green">Class-of-Engine/th>
<th style="color: green">Running Room</th>
<th style="color: green">NA Spell</th>
<th style="color: green">OT Spell</th>
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
        <td style="color: #9900CC">
		<%=rest.getString(9)%>
	</td>
        <td style="color: #9900CC">
		<%=rest.getString(10)%>
	</td>
        <td style="color: #9900CC">
		<%=rest.getString(11)%>
	</td>
        <td style="color: #9900CC">
		<%=rest.getString(12)%>
	</td>
        <td style="color: #9900CC">
		<%=rest.getString(13)%>
	</td>
        <td style="color: #9900CC">
		<%=rest.getString(14)%>
	</td>
        <td style="color: #9900CC">
		<%=rest.getString(15)%>
	</td>
        <td style="color: #9900CC">
		<%=rest.getString(16)%>
	</td>
        <td style="color: #9900CC">
		<%=rest.getString(17)%>
	</td>
        <td style="color: #9900CC">
		<%=rest.getString(18)%>
	</td>
        <td style="color: #9900CC">
		<%=rest.getString(19)%>
	</td>
        <td style="color: #9900CC">
		<%=rest.getString(20)%>
	</td>
        <td style="color: #9900CC">
		<%=rest.getString(21)%>
	</td>
        <td style="color: #9900CC">
		<%=rest.getString(22)%>
	</td>
        
	</tr>
 <%
 } %>
 </table>

<br/><br/><br/>
<br><br>
 <a href="traininginfo.jsp"><img src="images\v2.png" border="0" alt="" width="80" height="40" align="left" /></a>
 <a href="salaryinfo.jsp"><img src="images\v11.png" border="0" alt="" width="80" height="40"  align="right"/></a> 

<br/><br/>
  <%@ include file="footer.jsp" %>  
 </body>
 </html>