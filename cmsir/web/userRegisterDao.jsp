<%@page import="java.sql.*"%>
<%@page import="mypack.Dao"%>
<%@page import="java.sql.Statement"%>

<%!
String c_fname;
String c_lname;
String c_dob;
String c_sex;
String c_contact;
String c_address;
String c_pincode;
String c_email;
String c_pass;
String c_repass;
String c_pf_no;
String c_type;
String c_designation;
String c_doj;
String c_total_dtd;
String c_total_na;
String c_basic_salary;
int flag = 0;
%>
<%
	
	c_fname = request.getParameter("fname");
        
        System.out.println(c_fname);
	c_lname = request.getParameter("lname");
        System.out.println(c_lname);
	c_dob = request.getParameter("dob");
        System.out.println(c_dob);
	c_sex = request.getParameter("sex");
        System.out.println(c_sex);
        c_contact = request.getParameter("contact");
        System.out.println(c_fname);
	c_address= request.getParameter("address");
	c_pincode= request.getParameter("pincode");
        c_email= request.getParameter("email");
	c_pass = request.getParameter("pass");
	c_repass = request.getParameter("repass");
        c_pf_no=request.getParameter("pf_no");
	c_type = request.getParameter("crew");
	c_designation = request.getParameter("designation");
        c_doj=request.getParameter("doj");
        c_total_dtd = request.getParameter("total_dtd");
	c_total_na = request.getParameter("total_na");
        c_basic_salary=request.getParameter("basic_salary");
        
	Connection con = Dao.getMyConnection();
	PreparedStatement stmt = con.prepareStatement("insert into biodata values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
	System.out.println("Prep statement is reached.");
	stmt.setString(1,c_fname);
	stmt.setString(2,c_lname);
	stmt.setString(3,c_dob);
	stmt.setString(4,c_sex);
	stmt.setString(5,c_contact);
	stmt.setString(6,c_address);
	stmt.setString(7,c_pincode);
	stmt.setString(8,c_email);
	stmt.setString(9,c_pass);
	stmt.setString(10,c_repass);
    stmt.setString(11,c_pf_no);
    stmt.setString(12,c_type);
    stmt.setString(13,c_designation);
	stmt.setString(14,c_doj);
    stmt.setString(15,c_total_dtd);
    stmt.setString(16,c_total_na);
   	stmt.setString(17,c_basic_salary);
     
	 flag=stmt.executeUpdate();
	
	 System.out.println(flag);
	
%>
<%
if(flag==0)
{
out.println("Plz try again");
out.println("<hr>");
%>
<jsp:include page="register_user.jsp"></jsp:include>
<%
}
else
{ 
%>
<jsp:include page="crewinfomenu.jsp"></jsp:include>
<%

}
 %>

