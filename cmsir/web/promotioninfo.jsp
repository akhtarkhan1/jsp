<%@page import="java.sql.*"%>
<%@page import="mypack.Dao"%>



<% 	
	Connection con =Dao.getMyConnection();
	Statement stmt = con.createStatement();
	ResultSet rest = stmt.executeQuery("select * from promotion");
%>	
<html>
<body vlink="blue" alink="green"  bgcolor="D8F4FE">

<%@ include file="userheader1.jsp" %>
</br></br>
<center><h1><font color="red"><u>Promotion Information</u></font></h1></center><br/><br/>
<br/>
<table border="2" align="center" bgcolor="#FFFFDD" cellpadding="4" cellspacing="4" bordercolor="#660033">
<tr rowspan="2" bgcolor="#CCFFCC" bordercolor="green">
<th style="color: green">Promotion_id</th>
<th style="color: green">Crew_id</th>
<th style="color: green">Post Name</th>
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
	</tr>
 <%
 } %>
 </table>
 <br/><br/><br/>
 <a href="medical.jsp"><img src="images\v2.png" border="0" alt="" width="80" height="40" align="left" /></a>
 <a href="ctocmoinfo.jsp"><img src="images\v11.png" border="0" alt="" width="80" height="40"  align="right"/></a> 
<br/><br/>
  <%@ include file="footer.jsp" %>  
 </body>
 </html>