<html>
    <body>
           <%@ include file="admindept.jsp" %>
            <style>input:focus, textarea:focus{background-color:#CCFFFF;}</style><br>
            <center>
                   <h1><u><font color="red">Salary Details</font></u></h1>
            </center>
 
                <form action="salaryDao.jsp" method="POST" onsubmit="return validate3();"></br></br>
                    <div align="center">
                        
                        <table style="font-size:18px;">
                        <tr>
                            <td>Allowance_id :<span style="color: red;">*</span></td>
                            <td><input type="text" name="a_id" size="30" autocomplete="on"id="a_id"></td>  
                        </tr>
                        
                        <tr><td></td>
                            <td style="font-size:14px;"><span style="color:#335672;">Allowance_id must be unique</span><td></br>
                        </tr>
                        
                        <tr>
                            <td>Crew_id :</br></br></td>
                            <td><input type="text" name="c_id" size="30" autocomplete="on"id="c_id"></br></br>
                            </td>  
                        </tr>
                        
                        <tr>
                            <td>Designation :</td>                            
                            <td>
                                <SELECT name="designation"width="30">

					<OPTION Value="">--Select option--</OPTION>		
                                        <OPTION Value="Loco_Pilot">Loco Pilot</OPTION>
					<OPTION Value="Astt_Loco_Pilot">Asst Loco Pilot</OPTION>
					<OPTION Value="Gaurd">Guard</OPTION>
                                        <OPTION Value="Shunter">Shunter</OPTION>
                                </SELECT>
                        </td>
                        </tr>   
                        <tr>
                            <td>Pay scale :</td>
                            <td><input type="text" size="30"name="payscale"id="payscale"></br></br></td>
                        </tr>
                        
                        <tr>
                            <td>Grade Pay :</td>
                            <td><input type="text" size="30" name="gradepay"id="gradepay"></br></br></td>
                        </tr>
                        
                        <tr>
                            <td>Night Allowances Spell :</td>
                            <td><input type="Text" size="30" name="night_allowance_spell"id="night_allowance_spell"></br></br></td>
                        </tr>
                        <tr>
                            <td>Overtime Spell :</td>
                            <td><input type="text" size="30" name="overtime_allowance_spell"id="overtime_allowance_spell"></br></br></td>
                        </tr>                                         
                        <tr>
                            <td> Total salary :</td>
                            <td><input type="text" size="30" name="t_salary"id="t_salary"></br></br></td>
                        </tr>  
                    </table><br/>
                    
                    <input type="submit" value="Save">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="reset" value="Clear">               
     	
                    
                    <a href="TDT.jsp"><img src="images\v2.png" border="0" alt="" width="80" height="40" align="left" /></a>
                    <a href="reward.jsp"><img src="images\v11.png" border="0" alt="" width="80" height="40"  align="right"/></a>
                    <br><br><br>
                    <center>
                        <b><a href="updatesalary.jsp">Update Record</a></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <b><a href="deletesalary.jsp">Delete Record</a></b>
                     </center>
                </div>
                <div style="clear:both; height:10px;"></div>   
            </form> </br></br></br></br></br>
            <%@ include file="footer.jsp" %>  
    </body>
</html>
