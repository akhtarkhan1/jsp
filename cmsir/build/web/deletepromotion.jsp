<html>
    <body>
           <%@ include file="header.jsp" %>
            <style>input:focus, textarea:focus{background-color:#CCFFFF;}</style><br>
            <center>
                   <h1><u><font color="red">Promotion Details</font></u></h1>
            </center>
 
                <form action="deletepromotiondao.jsp" method="POST" onsubmit="return validate4();"></br></br>
                    <div align="center">
                        
                        <table style="font-size:18px;">
                        <tr>
                            <td>Promotion_id :<span style="color: red;">*</span></td>
                            <td><input type="text" name="p_id" size="30" autocomplete="on"id="p_id"></td>  
                        </tr>
                        </table><br/>
                    
                        <input type="submit" value="Delete">
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="reset" value="Clear">      
                        <a href="promotion.jsp"><img src="images\v2.png" border="0" alt="" width="80" height="40" align="left" /></a>
                     </div>
            </form> </br></br></br></br></br>
            <%@ include file="footer.jsp" %>  
    </body>
</html>
