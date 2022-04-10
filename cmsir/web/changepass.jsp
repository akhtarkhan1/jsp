<html>
  <head>
  </head>
  
  <body>
      <%@ include  file="header1.jsp" %>
  <center>    
    <u><font color="purple" size="5">Change Password Here:</font></u>
  </br><br>
  
   <form action="changepassDao.jsp" method="post">
        <div style="padding: 50px; float: center;">
            <fieldset  style="padding: 7px;float:center; border:double brown; width:500px; height:270px;">
                <legend style="font-size: 25px; color: red">Change Password</legend>
                <br>
                <table align="center" >
                    
                    <tr>
                        <td>Old Password:</td>
                        <td><input type="password" size="30" id="pass" name="pass"><br></td>
                    </tr>
                    
			<tr>
                        <td> New Password :</td>
                        <td>
                            <input type="password" size="30" id="npass" name="npass"><br>
                        </td>
                    </tr> 
                     
                 </table> 
                <br/>
                <div style="text-align: left; padding-top: 5px;">
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="image" src="images/pass1.jpg" alt="Submit" value="submit"width="130" height="45"></input>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="image" src="images/3.png" alt="Reset"  value="reset" width="120" height="45"></input></div>
          
            </fieldset>
        </div> 
        
 <div style="clear:both; height:10px;"></div></form> 
</center>
<br/><br/><br/><br/>
   <%@ include file="footer.jsp" %>   
  </body>
</html>
