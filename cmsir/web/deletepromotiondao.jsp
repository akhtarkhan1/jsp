<%@page import="java.sql.*"%>
<%@page import="mypack.Dao"%>
<%! 
String pr_id; 
int flag = 0;
PreparedStatement ps = null;
%>
 <% 
 try{ 
	 pr_id = request.getParameter("p_id");
	 Connection con = Dao.getMyConnection();
	 System.out.println("Creating statement...");
	 ps = con.prepareStatement("delete from promotion " +"WHERE p_id = '"+pr_id+"'");
	 System.out.println("deleted...");
	 int i = ps.executeUpdate();
	 out.println(i);	 
%>
<%
 }catch(Exception e) 
    {
        System.out.println(e);
    }
%>
</body>
</html>