
<html>
   <body>
  <%@ include  file="header1.jsp" %>
   <center>
       </br></br>
  <u><font color="red" size="5">Login here</font></u>
   </br></br>
   <form action="userLoginDao.jsp" method="post" onsubmit="validateLogin();">
        <div style="padding: 40px; float: center;">
            <fieldset  style="padding: 7px;center:left;border:double brown; width:400px; height:230px;">
                <legend style="font-size: 18px; color: green">User Login</legend>
                <br/>
                <table>
                    <tr>
                        <td>
                            Email ID :<span style="color: red;">*</span>
                        </td>
                        <td>
                            <input type="email" size="30" id="email" name="email"><br>
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
                    
                    <tr>
                        <td>
                            u_type :<span style="color: red;">*</span>
                        </td>
                        <td>
                            <SELECT>

					<OPTION Value="">--Select option--</OPTION>		
                                        <OPTION Value="Loco_Pilot">Loco Pilot</OPTION>
					<OPTION Value="Astt_Loco_Pilot">Asst Loco Pilot</OPTION>
					<OPTION Value="Gaurd">Guard</OPTION>
                                        <OPTION Value="Shunter">Shunter</OPTION>
			</SELECT>
                        </td>
                    </tr>   
                    
                </table> 
                </br>
                
                <div><input type="image" src="images/13.png" alt="Submit" width="130" height="55"></input>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="image" src="images/3.png" alt="Reset"  value="reset" width="120" height="45"></input></div>
            </fieldset>
        </div> 
       
      
        <div style="clear:both; height:10px;"></div>
</form> 
   </center>
   <%@ include file="footer.jsp" %>   
  </body>
</html>
