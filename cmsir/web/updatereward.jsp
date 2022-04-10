<html>
    <body>
           <%@ include file="header.jsp" %>
            <style>input:focus, textarea:focus{background-color:#CCFFFF;}</style><br>
            <center>
                   <h1><u><font color="red">Best Service Reward Details</font></u></h1>
            </center>
 
                <form action="updaterewardDao.jsp" method="POST" onsubmit="return validate7();"></br></br>
                    <div align="center">
                        
                        <table style="font-size:18px;">
                         <tr>
                            <td>Crew_id :</br></br></td>
                            <td><input type="text" name="c_id" size="30" autocomplete="on"id="c_id"></br></br>
                            </td>  
                        </tr>
                        
                        <tr>
                            <td>Crew Name:</td>
                            <td><input type="text" size="30" name="c_name"></br></br></td>
                        </tr>
                        
                        <tr>
                            <td>Post Name:</td>
                            <td><input type="text" size="30" name="post_name"></br></br></td>
                        </tr>
                        
                        <tr>
                            <td>Designation:</td>
                            <td><input type="text" size="30" name="designation"></br></br></td>
                        </tr>
                        
                        <tr>
                            <td>Division:</td>
                            <td><input type="text" size="30" name="division"></br></br></td>
                        </tr>
                        
                        <tr>
                            <td>Date :</td>
                            <td><input type="date" name="date"id="date"></br></br></td>
                        </tr>                    
                    </table><br/>
                    
                         <input type="submit" value="Update">
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="reset" value="Clear">               
     	  
                    <a href="reward.jsp"><img src="images\v2.png" border="0" alt="" width="80" height="40" align="left" /></a>
                    </div>
                <div style="clear:both; height:10px;"></div>   
            </form> </br></br></br></br></br>
            <%@ include file="footer.jsp" %>  
    </body>
</html>
