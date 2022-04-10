<html>
    <body>
           <%@ include file="admindept.jsp" %>
            <style>input:focus, textarea:focus{background-color:#CCFFFF;}</style><br>
            <center>
                   <h1><u><font color="red">Travelling Data Information</font></u></h1>
            </center>
 
                <form action="TDTDao.jsp" method="POST" onsubmit="return validate7();"></br></br>
                    <div align="center">
                        
                        <table style="font-size:18px;">
                        <tr>
                            <td>Crew_id :<span style="color: red;">*</span></td>
                            <td><input type="text" name="c_id" size="30" autocomplete="on"id="c_id"></td>   
                            <td></td><td></td> <td></td></td><td></td> <td></td>
                              <td></td><td></td> <td></td></td><td></td> <td></td>
                              
                            <td>Crew_name :</br></br>
                            <td><input type="text" name="c_name" size="30" autocomplete="on"id="c_name"></br></br>
                            </td>  
                        </tr>
                        
                        <tr>
                            <td>Sign_On:</td>
                            <td><input type="text" size="30" name="sign_on"></br></br></td>
                             <td></td><td></td><td></td><td></td> <td></td> 
                               <td></td><td></td> <td></td></td><td></td> <td></td>
                               
                            <td>sign_off:</td>
                            <td><input type="text" size="30" name="sign_off"></br></br></td>
                        </tr> 
                        <tr>
                            <td>KM-Earning:</td>
                            <td><input type="text" size="30" name="km_earning"></br></br></td>
                             <td></td><td></td><td></td><td></td> <td></td>
                               <td></td><td></td> <td></td></td><td></td> <td></td>
                            <td>Duration:</td>
                            <td><input type="text" size="30" name="duration"></br></br></td>
                        </tr>
                        <tr>
                            <td>Total Tdt:</td>
                            <td><input type="text" size="30" name="total_tdt"></br></br></td>
                            <td></td><td></td><td></td><td></td> <td></td>
                               <td></td><td></td> <td></td></td><td></td> <td></td>
                               
                            <td>Total NA:</td>
                            <td><input type="text" size="30" name="total_na"></br></br></td>
                        </tr>
                        <tr>
                            <td>Section ID:</td>
                            <td><input type="text" size="30" name="sec_id"></br></br></td>
                            <td></td><td></td><td></td><td></td> <td></td>
                               <td></td><td></td> <td></td></td><td></td> <td></td>
                               
                            <td>section Name:</td>
                            <td><input type="text" size="30" name="sec_name"></br></br></td>
                        </tr>
                        <tr>
                            <td>Section_code:</td>
                            <td><input type="text" size="30" name="sec_code"></br></br></td>
                            <td></td><td></td><td></td><td></td> <td></td>
                               <td></td><td></td> <td></td></td><td></td> <td></td>
                               
                            <td>From:</td>
                            <td><input type="text" size="30" name="p_from"></br></br></td>
                        </tr>
                        <tr>
                            <td>To:</td>
                            <td><input type="text" size="30" name="p_to"></br></br></td>
                            <td></td><td></td><td></td><td></td> <td></td>
                               <td></td><td></td> <td></td></td><td></td> <td></td>
                               
                            <td>Tounge:</td>
                            <td><input type="text" size="30" name="tounge"></br></br></td>
                        </tr>
                        <tr>
                            <td>Trips:</td>
                            <td><input type="text" size="30" name="trips"></br></br></td>
                            <td></td><td></td><td></td><td></td> <td></td>
                               <td></td><td></td> <td></td></td><td></td> <td></td>
                               
                            <td>Train Lload:</td>
                            <td><input type="text" size="30" name="train_load"></br></br></td>
                        </tr>
                        <tr>
                            <td>Train Type:</td>
                            <td><input type="text" size="30" name="train_type"></br></br></td>
                            <td></td><td></td><td></td><td></td> <td></td>
                               <td></td><td></td> <td></td></td><td></td> <td></td>
                               
                            <td>service:</td>
                            <td><input type="text" size="30" name="service"></br></br></td>
                        </tr>
                        <tr>
                            <td>Class of Engine:</td>
                            <td><input type="text" size="30" name="cls_of_engine"></br></br></td>
                            <td></td><td></td><td></td><td></td> <td></td>
                               <td></td><td></td> <td></td></td><td></td> <td></td>
                               
                            <td>Running Room:</td>
                            <td><input type="text" size="30" name="running_room"></br></br></td>
                        </tr>
                        <tr>
                            <td>NA Spell:</td>
                            <td><input type="text" size="30" name="na_spell"></br></br></td>
                            <td></td><td></td><td></td><td></td> <td></td>
                               <td></td><td></td> <td></td></td><td></td> <td></td>
                               
                            <td>OT Spell:</td>
                            <td><input type="text" size="30" name="ot_spell"></br></br></td>
                        </tr>
                    </table>
                        <br/>
                    
                    </div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


        <input type="submit" value="Save">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    	<input type="reset" value="Clear">  
        
                    <a href="training.jsp"><img src="images\v2.png" border="0" alt="" width="80" height="40" align="left" /></a>
                    <a href="salary.jsp"><img src="images\v11.png" border="0" alt="" width="80" height="40"  align="right"/></a>
                    <br><br><br>
                    <center>
                         <b><a href="Updatetdt.jsp">Update Record</a></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <b><a href="deletetdt.jsp">Delete Record</a></b>
                    </center>
                <div style="clear:both; height:10px;"></div>   
            </form> </br></br></br></br></br>
            <%@ include file="footer.jsp" %>  
    </body>
</html>
