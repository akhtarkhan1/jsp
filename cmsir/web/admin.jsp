<html>
  <body>
      <%@ include  file="header1.jsp" %>
    <center>
        </br></br></br>
        <u><font color="red" size="5">Admin Login Here:</font></u>
    </br></br>
     <form action="adminLogin.jsp">
        <div style="padding: 30px; float: center;">
            <fieldset  style="padding: 7px;float:center;border:double brown; width:500px; height:230px;">
                <legend style="font-size: 18px; color: green">Admin Login</legend>
                <br/>
                <table cellpadding="5" cellspacing="1">
                    <tr>
                        <td>
                            Email ID :<span style="color: red;">*</span>
                        </td>
                        <td>
                            <input type="email" size="30" id="email" name="email"><br>
                        </td>
                        <td rowspan="2">
                            <input type="image" src="images/77.jpg"  height="110" width="100"><br>
                        </td>
                    </tr>
                   <tr>
                        <td>
                            Password :<span style="color: red;">*</span>
                        </td>
                        <td>
                            <input type="password" size="30" id="pass" name="pass"><br>
                        </td>
                    </tr>   
                    
                    </table> 
    
                <div style="text-align: left; padding-top: 5px;">
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="image" src="images/13.png" alt="Submit" width="130" height="55"></input>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="image" src="images/3.png" alt="Reset"  value="reset" width="120" height="45"></input></div>
            </fieldset>
        </div> 
       	<div style="clear:both; height:10px;"></div>
</form> 
        </br></br>
<p >
<a href="changepass.jsp">Change Password</a><br/>
<a href="changepic.jsp">Change Picture</a>
</p><br/><br/><br/><br/>
</center>
 <%@ include file="footer.jsp" %>     
  </body>
</html>
