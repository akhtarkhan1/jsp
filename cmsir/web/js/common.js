
function validate()
{
	
	var fname= document.getElementById('fname').value;
	var lname= document.getElementById('lname').value;
	var ph=document.getElementById('contact').value;
	var e=document.getElementById('email').value;
	var illegalChars=/[\(\)\<\>\,\;\:\\\/\"\[\]]/;
	var n1=e.indexOf("@");
	var n2=e.lastIndexOf(".");
	var p1=document.getElementById('pass').value;
	var p2=document.getElementById('repass').value;
	
	
	if(fname==null || fname==''){
		alert('Please enter  First Name');
		document.getElementById('fname').focus();
		return false;
	}
	if(lname==null || lname==''){
		alert('Please enter  Last Name');
		document.getElementById('lname').focus();
		return false;
	}
	
	if(ph==null || ph=='')
	{
		alert('Please enter  your contact number.');
		document.getElementById('contact').focus();
		return false;
	}
	 if(ph.length<10)
	 {
		 alert('contact no must be 10 digits.');
			document.getElementById('contact').focus();
			return false; 
	 }
	 else
	 {
			
			if(isNaN(ph))
			{
				alert('Please enter only numeric value.');
	    		document.getElementById('contact').focus();
	    		return false;				    		
			}
	  }
	 
	 if(e==null || e=='')
	 {
			alert('Please enter Email Address');
			document.getElementById('email').focuss();
			return false;
	}
	 	

	 if(e.match(illegalChars))
	 {
			alert('Invalid Email Address');
			document.getElementById('email').focus();
			return false;
		}
	 if(n1<1||n2-n1<2)
	 {
		 alert('Invalid Email Address');
			document.getElementById('email').focus();
			return false;
	 }
	
	
	 
	 if(p1==null || p1=='')
	 {
			alert('Please enter  Password');
			document.getElementById('pass').focus();
			return false;
		}
		if(p2==null || p2=='')
		{
			alert('Please enter  Re-Password');
			document.getElementById('pass1').focus();
			return false;
		}
	 
		if(p1!=p2)
		{
			alert('Password Mismatched ! Plz Enter correct password');
			document.getElementById('pass1').focus();
			return false;
		}
}
function validate1()
{
	
	var ap_id = document.getElementById('c_id').value;
	if(ap_id == ''){
		alert('Please enter Valid Id.');
		document.getElementById('c_id').focus();
		return false;
	}
}      

function validate2()
{
	
	var tid = document.getElementById('t_id').value;
	if(tid == ''){
		alert('Please enter valid Id.');
		document.getElementById('t_id').focus();
		return false;
	}
}

function validate3()
{
	
	var aid = document.getElementById('a_id').value;
	if(aid == ''){
		alert('Please enter valid Id.');
		document.getElementById('a_id').focus();
		return false;
	}
} 

function validate4()
{
	
	var p_id = document.getElementById('p_id').value;
	if(p_id == ''){
		alert('Please enter Valid Id.');
		document.getElementById('p_id').focus();
		return false;
	}
} 


function showImg(val)
{	
	//alert(val); return false;	
	$('#SHIMG').hide();	
	if(val != '')
	{
		$('#SHIMG').show();
	}
}
