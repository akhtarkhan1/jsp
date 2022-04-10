a<%@page import="java.sql.*"%>
<%@page import="mypack.Dao"%>



<% 	
	Connection con =Dao.getMyConnection();
	Statement stmt = con.createStatement();
	ResultSet rest = stmt.executeQuery("select * from allowance");
%>	
<html>
    <body>

<%@ include file="header2.jsp" %>
</br></br>
<center><h1><font color="red">Allowance Details</font></h1></center><br/><br/>
<table border="2" align="center" bgcolor="#FFFFDD" cellpadding="4" cellspacing="4" bordercolor="#660033">
<tr rowspan="2" bgcolor="#CCFFCC" bordercolor="green">
<th style="color: green">Allowance_id</th>
<th style="color: green">Crew_id</th>
<th style="color: green">Designation</th>
<th style="color: green">Pay Scale</th>
<th style="color: green">Grade Pay</th>
<th style="color: green">Night Allowance Spell</th>
<th style="color: green">Overtime Spell</th>
<th style="color: green">Total Salary</th>
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
<br><br>
    <a href="TDTinfo.jsp"><img src="images\v2.png" border="0" alt="" width="80" height="40" align="left" /></a>
 <a href="otherservicemenu.jsp"><img src="images\v11.png" border="0" alt="" width="80" height="40"  align="right"/></a> 
<br/><br/><br/>
  <%@ include file="footer.jsp" %>  
 </body>
 </html>