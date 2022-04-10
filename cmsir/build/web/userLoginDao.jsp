
<%@page import="java.sql.Connection"%>
<%@page import="mypack.Dao"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%!
String email;
String pass;
int flag = 0;
%>
<%
	email = request.getParameter("email");
	pass = request.getParameter("pass");
	try
	{
	Connection con = Dao.getMyConnection();
	Statement stmt = con.createStatement();
	ResultSet rest = stmt.executeQuery("select * from biodata");
	
	while(rest.next())
	{
		String e = rest.getString(8);
		String p = rest.getString(9);
		if(e.equals(email) && p.equals(pass))
		{
			flag = 1;
			break;
		}
		
	}
	}
	catch(Exception ex)
	{
	System.out.println(ex);
	}

%>
<%
if(flag==0)
{
out.println("Invlid uaser plese try agin");
out.println("<hr>");
%>
<jsp:include page="user_login.jsp"></jsp:include>
<%
}
else
{
%>

<jsp:forward page="welcomeuser.jsp"></jsp:forward>
<%
}
 %>

