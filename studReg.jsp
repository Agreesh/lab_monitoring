<%@include file="session_Remove.jsp" %>
<%@page import="Dbqueries.Dbqueries"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>
    <script type="text/javascript">
        function valid()
        {
            if(document.getElementById("textfield3").value=="")
	{
		alert("Enter Student Id!");
		document.getElementById("textfield3").focus();
    	return false;
 	}
        if(document.getElementById("textfield2").value=="")
	{
		alert("Enter Name!");
		document.getElementById("textfield2").focus();
    	return false;
 	}
	if(/[^a-z\s]/gi.test(document.getElementById("textfield2").value))
	{
		alert("Special characters are not allowed in name");
		document.getElementById("textfield2").focus();
		return false;
	}
        if(document.getElementById("select").value=="~select semester~")
   	{
     	alert("Select semester");
     	document.getElementById("select").focus();
     	return false;
 	}
        if(document.getElementById("textfield").value=="")
   	{
     	alert("Enter Roll Number!");
     	document.getElementById("textfield").focus();
     	return false;
 	}
	if(/[^0-9]/gi.test(document.getElementById("textfield").value))
	{
		alert("Special characters not allowed in Roll Number");
		document.getElementById("textfield").focus();
		return false;
	}
	if((document.getElementById("textfield").value).length>2)
	
	{
		alert("Roll Number is not valid");
		document.getElementById("textfield").focus();
		return false;
	}
        return true;
        }
    </script>

<body><br /><br /><h2 align="center">Student Registeration</h2><br /><br />
<form id="form1" name="form1" method="post" action="">
  <table width="316" align="center">
    <tr>
      <td width="111">Student ID</td>
      <td width="189"><label for="textfield3"></label>
      <input type="text" name="textfield3" id="textfield3" /></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>Name</td>
      <td><label for="textfield2"></label>
      <input type="text" name="textfield2" id="textfield2" /></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>Semester</td>
      <td><label for="select"></label>
        <select name="select" id="select">
          <option>~select semester~</option>
          <option>S1</option>
          <option>S2</option>
          <option>S3</option>
          <option>S4</option>
          <option>S5</option>
          <option>S6</option>
          <option>S7</option>
          <option>S8</option>
      </select></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>Roll No.</td>
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
    String studid=request.getParameter("textfield3");
    String name=request.getParameter("textfield2");
    String semester=request.getParameter("select");
    String rollno=request.getParameter("textfield");
   

    Dbqueries d=new Dbqueries();
    int i=d.studReg(rollno, name, semester);
}

%>