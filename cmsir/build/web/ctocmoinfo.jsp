<%@page import="java.sql.*"%>
<%@page import="mypack.Dao"%>



<% 	
	Connection con =Dao.getMyConnection();
	Statement stmt = con.createStatement();
	ResultSet rest = stmt.executeQuery("select * from ctocmo");
%>	
<html>
<body vlink="blue" alink="green"  bgcolor="D8F4FE">

<%@ include file="userheader1.jsp" %>
</br></br>
<center><h1><font color="red"><u>CtoCmo Information</u></font></h1></center><br/><br/>
<br/>
<table border="2" align="center" bgcolor="#FFFFDD" cellpadding="4" cellspacing="4" bordercolor="#660033">
<tr rowspan="2" bgcolor="#CCFFCC" bordercolor="green">
<th style="color: green">CtoCmo_id</th>
<th style="color: green">Cto Place</th>
<th style="color: green">Cto Time</th>
<th style="color: green">Cmo Place</th>
<th style="color: green">Cmo Place</th>
<th style="color: green">Driver Departure</th>
<th style="color: green">Driver Arrival</th>
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
	</tr>
 <%
 } %>
 </table>
 <a href="promotioninfo.jsp"><img src="images\v2.png" border="0" alt="" width="80" height="40" align="left" /></a>
<br/><br/><br/><br/><br/>
  <%@ include file="footer.jsp" %>  
 </body>
 </html>