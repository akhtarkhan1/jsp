

<html>
  <head>        
    <title>Online Construction Planning & Management system</title>
    <script type="text/javascript" src="js/common.js"></script>
  </head>
  
  <body>
  <%@ include  file="header1.jsp" %>
   <style>input:focus, textarea:focus{background-color:#CCFFFF;}</style>
<form action="userRegisterDao.jsp" method="post" onsubmit="return validate();" >
<div align="center">
<u><font color="red" size="6">Fill your details here</font></u>
<br/><br/></br>
	<table style="font-size:18px;">
    	
        <tr>
        	<td>
        		First Name :<span style="color: red;">*</span></br></br>
            </td>
            <td>
        		<input type="text" size="30" name="fname" id="fname"></br></br>
            </td>
        
        <tr>
        	<td>
        		Last Name :</br></br>
            </td>
            <td>
        		<input type="text" size="30" name="lname"></br></br>
            </td>
        </tr>
         <tr>
        	<td>
        		DOB :</br></br>
            </td>
            <td>
        		<input type="date" name="dob"id="dob"></br></br>
            </td>
        </tr>
        <tr>
        	<td>
        		Sex :</br></br>
            </td>
            <td>
        		<input type="radio" name="sex" value="male" checked="checked">Male
				<input type="radio" name="sex" value="female">Female</br></br>
            </td>
        </tr>   
        <tr>
        	<td>
        		Contact :<span style="color: red;">*</span>
            </td>
            <td>
        		<input type="text" size="30" name="contact"id="contact"></br>
            </td>
        </tr>
        <tr>
        	<td></td>
        	<td style="font-size:14px;"><span style="color: #335672;">Contact no. contain only number's</span><td></br>
        </tr>
        <tr>
        	<td>
        		Address :</br></br>
            </td>
            <td>
        		<textarea rows="5" cols="24" name="address"id="address"></textarea></br></br>
            </td>
        </tr>
        <tr>
        	<td>
        		Pincode :
            </td>
            <td>
        		<input type="text" size="30" name="pincode"id="pin"></br>
            </td>
        </tr>
        <tr>
        	<td></td>
        	<td style="font-size:14px;"><span style="color: #335672;">Pincode contain only number's</span><td></br>
        </tr>
        <tr>
        	<td>
        		Email :<span style="color: red;">*</span>
            </td>
            <td>
        		<input type="email" name="email" size="30" autocomplete="on"id="email">
            </td>  
        </tr>
      <td></td>
                <td style="font-size:14px;"><span style="color:#335672;">Email ID must be unique</span><td></br>
        </tr>
        <tr>
        	<td>
        		Password :<span style="color: red;">*</span>
            </td>
            <td>
        		<input type="password" size="30" name="pass"id="pass"></br>
            </td>
        </tr>
        <tr>
        	<td></td>
        	<td style="font-size:14px;"><span style="color: #335672;">Please Re-enter the password</span><td></br>
        </tr>
        <tr>
        	<td>
        		Re-Enter :<span style="color: red;">*</span></br></br>
            </td>
            <td>
        		<input type="password" size="30" name="repass"id="repass"></br></br>
            </td>
        </tr>
        </table>               
       
      <u><font color="blue" size="4">Departmental details</font></u>
            
    
      <table style="font-size:18px;">    	
        <tr>
        	<td>
        		Pf_No :<span style="color: red;">*</span></br></br>
            </td>
            <td>
        		<input type="text" size="30" name="pf_no" id="pf_no"></br></br>
            </td>
        
        <tr>
        	<td>
        		Crew_Type :</br></br>
            </td>
            <td>
        		 <SELECT name="crew">

					<OPTION Value="">--Select option--</OPTION>		
                                        <OPTION Value="Driver">Driver</OPTION>
					<OPTION Value="Astt_Driver">Astt Driver</OPTION>
					<OPTION Value="Gaurd">Guard</OPTION>
			</SELECT>
            </td>
        </tr>
         <tr>
        	<td>
        		Designation :</br></br>
            </td>
            <td>
        		<input type="text" size="30" name="designation"id="designation"></br>
            </td>
        </tr>
        
        <tr>
        	<td>
        		Date of Joining :<span style="color: red;">*</span>
            </td>
            <td>
        		
                        <input type="date" name="doj"id="doj"></br></br>
            </td>
        </tr>
        
        <tr>
        	<td>
        		Total TDT :
            </td>
            <td>
                <input type="text" size="30" name="total_tdt"id="total_tdt"></br></br>
            </td>
        </tr>
        
        <tr>
        	<td>
        		Total NA :
            </td>
            <td>
        		<input type="text" size="30" name="total_na"id="total_na"></br></br>
            </td>
        
        <tr>
        	<td>
        		Basic Salary :
            </td>
            <td>
        		<input type="text" name="basic_salary" size="30" id="basic_salary">
            </td>  
         
        </table>
</br>
    <input type="image" src="images/r2.png" alt="Submit" width="150" height="60">                 
            
</div> 
 <div style="clear:both; height:10px;"></div>   
 </form>   
   <%@ include file="footer.jsp" %> 
  </body>

 
</html>
