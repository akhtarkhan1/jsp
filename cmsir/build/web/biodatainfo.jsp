<%@page import="java.sql.*"%>
<%@page import="mypack.Dao"%>



<% 	
	Connection con =Dao.getMyConnection();
	Statement stmt = con.createStatement();
	ResultSet rest = stmt.executeQuery("select * from biodata");
%>	
<html>
<body vlink="blue" alink="green"  bgcolor="D8F4FE">

<%@ include file="header.jsp" %>
</br></br>
<center><h1><font color="red"><u>Crew Details</u></font></h1></center><br/><br/>
<table border="2" align="center" bgcolor="#FFFFDD" cellpadding="4" cellspacing="4" bordercolor="#660033">
<tr rowspan="1" bgcolor="#CCFFCC" bordercolor="green">
<th style="color: green">First Name</th>
<th style="color: green">Last Name</th>
<th style="color: green">Date of Birth</th>
<th style="color: green">Gender</th>
<th style="color: green">Contact</th>
<th style="color: green">Address</th>
<th style="color: green">Pincode</th>
<th style="color: green">Email_id</th>
<th style="color: green">Pf No.</th>
<th style="color: green">Crew Type</th>
<th style="color: green">Designation</th>
<th style="color: green">Date of Joining</th>
<th style="color: green">Total TDT</th>
<th style="color: green">Total NA</th>
<th style="color: green">Basic Salary</th>
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
       	</tr>
 <%
 } %>
 </table>
 <br/><br/><br/>
<center>
 <a href="welcomeuser.jsp"><img src="images\v2.png" border="0" alt="" width="80" height="40" align="left" /></a>
<br/><br/><br/>
  <%@ include file="footer.jsp" %>  
 </body>
 </html>