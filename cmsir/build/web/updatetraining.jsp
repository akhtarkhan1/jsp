<html>
    <body>
           <%@ include file="header.jsp" %>
            <style>input:focus, textarea:focus{background-color:#CCFFFF;}</style><br>
            <center>
                   <h1><u><font color="red">Training Details</font></u></h1>
            </center>
 
                <form action="updatetrainingDao.jsp" method="POST" onsubmit="return validate2();"></br></br>
                    <div align="center">
                        
                        <table style="font-size:18px;">
                        <tr>
                            <td>Training_id :<span style="color: red;">*</span></td>
                            <td><input type="text" name="t_id" size="30" autocomplete="on"id="t_id"></td>  
                        </tr>
                        
                        <tr><td></td>
                            <td style="font-size:14px;"><span style="color:#335672;">Training_id must be unique</span><td></br>
                        </tr>
                        
                        <tr>
                            <td>Crew_id :</br></br></td>
                            <td><input type="text" name="c_id" size="30" autocomplete="on"id="c_id"></br></br>
                            </td>  
                        </tr>
                        
                        <tr>
                            <td>Crew Name :</td>
                            <td><input type="text" size="30" name="name"></br></br></td>
                        </tr>
                        
                        <tr>
                            <td>Training from :</td>
                            <td><input type="date" name="dof"id="t_from"></br></br></td>
                        </tr>
                        
                        <tr>
                            <td>Training to :</td>
                            <td><input type="date" name="dof"id="t_to"></br></br></td>
                        </tr>
                        
                        <tr>
                            <td>Training At :</td>
                            <td><input type="Text" name="dot"id="t_at"></br></br></td>
                        </tr>
                        <tr>
                            <td>Physical Test :</td>
                            <td><input type="text" name="dof"id="phy_test"></br></br></td>
                        </tr>
                        
                        <tr>
                            <td>Physical Test Date :</td>
                            <td><input type="date" name="dot"id="phy_date"></br></br></td>
                        </tr>
                    </table><br/>
                    
                    <input type="submit" value="Update">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="reset" value="Clear">    
                    
                    <a href="training.jsp"><img src="images\v2.png" border="0" alt="" width="80" height="40" align="left" /></a>                 
                </div>
                <div style="clear:both; height:10px;"></div>   
            </form> </br></br></br></br></br>
            <%@ include file="footer.jsp" %>  
    </body>
</html>
