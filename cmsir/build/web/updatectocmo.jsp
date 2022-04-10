<html>
    <body>
           <%@ include file="header.jsp" %>
            <style>input:focus, textarea:focus{background-color:#CCFFFF;}</style><br>
            <center>
                   <h1><u><font color="red">CtoCmo Details</font></u></h1>
            </center>
 
                <form action="updatectoDao.jsp" method="POST" onsubmit="return validate7();"></br></br>
                    <div align="center">
                        
                        <table style="font-size:18px;">
                        <tr>
                            <td>Crew_id :<span style="color: red;">*</span></td>
                            <td><input type="text" name="c_id" size="30" autocomplete="on"id="c_id"></td>  
                        </tr>
                        
                        <tr><td></td>
                            <td style="font-size:14px;"><span style="color:#335672;">Crew_id must be unique</span><td></br>
                        </tr>
                        
                        <tr>
                            <td>CTO Place :</br></br></td>
                            <td><input type="text" name="ctoplace" size="30" autocomplete="on"id="ctoplace"></br></br>
                            </td>  
                        </tr>
                        
                        <tr>
                            <td>CTO Time:</td>
                            <td><input type="text" size="30" name="ctotime"></br></br></td>
                        </tr>
                        
                        <tr>
                            <td>CMO Place :</td>
                            <td><input type="text" size="30" name="cmoplace"></br></br></td>
                        </tr> 
                        <tr>
                            <td>CMO Time:</td>
                            <td><input type="text" size="30" name="cmotime"></br></br></td>
                        </tr>
                        <tr>
                            <td>Driver Departure:</td>
                            <td><input type="text" size="30" name="driver_departure"></br></br></td>
                        </tr>
                        <tr>
                            <td>Driver Arrival:</td>
                            <td><input type="text" size="30" name="driver_arrival"></br></br></td>
                        </tr>
                    </table><br/>
                    
                    <input type="submit" value="Update">
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="reset" value="Clear">               
     	            <a href="ctocmo.jsp"><img src="images\v2.png" border="0" alt="" width="80" height="40" align="left" /></a>
                    </div>
                <div style="clear:both; height:10px;"></div>   
            </form> </br></br></br></br></br>
            <%@ include file="footer.jsp" %>  
    </body>
</html>
