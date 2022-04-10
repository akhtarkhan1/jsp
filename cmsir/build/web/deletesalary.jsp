<html>
    <body>
           <%@ include file="header.jsp" %>
            <style>input:focus, textarea:focus{background-color:#CCFFFF;}</style><br>
            <center>
                   <h1><u><font color="red">Salary Details</font></u></h1>
            </center>
 
                <form action="deletesalaryDao.jsp" method="POST" onsubmit="return validate3();"></br></br>
                    <div align="center">
                        
                        <table style="font-size:18px;">
                        <tr>
                            <td>Allowance_id :<span style="color: red;">*</span></td>
                            <td><input type="text" name="a_id" size="30" autocomplete="on"id="a_id"></td>  
                        </tr>
                        </table><br/>
                    <input type="submit" value="Delete">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="reset" value="Clear">               
                    <a href="salary.jsp"><img src="images\v2.png" border="0" alt="" width="80" height="40" align="left" /></a>
                    </div>
                <div style="clear:both; height:10px;"></div>   
            </form> </br></br></br></br></br>
            <%@ include file="footer.jsp" %>  
    </body>
</html>
