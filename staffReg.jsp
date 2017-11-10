<%@page import="Dbqueries.Dbqueries"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Staff Registration</title>
</head>
    <script type="text/javascript">
        function valid()
        {
            if(document.getElementById("textfield6").value=="")
	{
		alert("Enter Employee ID!");
		document.getElementById("textfield6").focus();
    	return false;
 	}
           if(document.getElementById("textfield5").value=="")
	{
		alert("Enter Name!");
		document.getElementById("textfield5").focus();
    	return false;
 	}
	if(/[^a-z\s]/gi.test(document.getElementById("textfield5").value))
	{
		alert("Special characters are not allowed in name");
		document.getElementById("textfield5").focus();
		return false;
	}
        if(document.getElementById("textarea").value=="")
	{
		alert("Enter Address!");
		document.getElementById("textarea").focus();
    	return false;
 	}
        if(document.getElementById("textfield").value=="")
   	{
     	alert("Enter Phone Number!");
     	document.getElementById("textfield").focus();
     	return false;
 	}
	if(/[^0-9]/gi.test(document.getElementById("textfield").value))
	{
		alert("Special characters not allowed in Phone Number");
		document.getElementById("textfield").focus();
		return false;
	}
	if((document.getElementById("textfield").value).length<10)
	
	{
		alert("Phone number is not valid");
		document.getElementById("textfield").focus();
		return false;
	}
	if((document.getElementById("textfield").value).length>15)
	
	{
		alert("Phone number is not valid");
		document.getElementById("textfield").focus();
		return false;
	}
        if(document.getElementById("textfield2").value=="")
	{
		alert("Enter your E-mail ID");
		document.getElementById("textfield2").focus();
		return false;
	}
	var emailPat =/^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
	var emailid=document.getElementById("textfield2").value;
	var matchArray = emailid.match(emailPat);
	if (matchArray == null)
	{
		alert("Your Email ID seems incorrect. Enter Correct Email ID.");
		document.getElementById("textfield2").focus();
		return false;
	}
        if(document.getElementById("textfield4").value=="")
	{
		alert("Enter Password!");
		document.getElementById("textfield4").focus();
    	return false;
 	}
	if(document.getElementById("textfield4").value.length<6)
	{
		alert("Password is too short..Password should be atleast 6 characters...");
		document.getElementById("textfield4").focus();
    	return false;
	}
	if(document.getElementById("textfield3").value=="")
	{
		alert("Enter Confirm Password!");
		document.getElementById("textfield3").focus();
    	return false;
 	}
	if((document.getElementById("textfield3").value)!=(document.getElementById("textfield4").value))
	{
		alert("Password is missmatch!");
		document.getElementById("textfield3").focus();
    	return false;
 	}
        if((document.getElementById("select").value) == "~select Designation~"){
            alert("Select the Desination");
            document.getElementById("select").focus();
            return false;
        }
	return true;
        
    </script>

<body><br /><br /><br />
<form id="form1" name="form1" method="post" action="">
  <table width="437" align="center">
    <tr>
      <td width="134">EmpID</td>
      <td width="287"><label for="textfield6"></label>
      <input type="text" name="textfield6" id="textfield6" /></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>Name</td>
      <td><label for="textfield5"></label>
      <input type="text" name="textfield5" id="textfield5" /></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>Gender</td>
      <td><p>
              <input type="radio" name="gender" id="radio" value="Male" checked="checked" />
        MALE</p>
        <p>
          <input type="radio" name="gender" id="radio2" value="Female" />
          <label for="radio2"></label>
        FEMALE</p></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>Address</td>
      <td><label for="textarea"></label>
      <textarea name="textarea" id="textarea" cols="45" rows="5"></textarea></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
      <tr>
      <td>Designation</td>
      <td><label for="select"></label><select name="select" id="select">
      <option>~select Designation~</option>
      <option>Professor</option>
      <option>Assistant Professor</option>
      <option>Technical Staff</option></select>
      </td>
      </tr>
      <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>Password</td>
      <td><label for="textfield4"></label>
      <input type="password" name="textfield4" id="textfield4" /></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>Confirm Password</td>
      <td><label for="textfield3"></label>
      <input type="password" name="textfield3" id="textfield3" /></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>E-mail</td>
      <td><label for="textfield2"></label>
      <input type="text" name="textfield2" id="textfield2" /></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>Phone No.</td>
      <td><label for="textfield"></label>
      <input type="text" name="textfield" id="textfield" /></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><div align="center">
             
        <input type="submit" name="button" id="button" value="Register" onclick="return valid()" />
      </div></td>
    </tr>
  </table>
</form>
</body>
</html>

<%
if(request.getParameter("button")!=null)
{
    String empid=request.getParameter("textfield6");
    String name=request.getParameter("textfield5");
    String gender=request.getParameter("gender");
    String address=request.getParameter("textarea");
    String desg = request.getParameter("select");
    String password=request.getParameter("textfield4");
    String email=request.getParameter("textfield2");
    String phone=request.getParameter("textfield");
    
    Dbqueries d=new Dbqueries();
    int i=d.staffReg(empid,name, gender, desg, address, email, phone, password);

    if(i!=0){%>
    <script>
        alert("Successfully Registered");
            <%response.sendRedirect("login.jsp");%>
    </script>
    <%}
        else{
            %>
            <script>
                alert("Error");
                </script><%
        }

}

%>