<%@page import="Dbqueries.Dbqueries"%>
<%@include file="session_Remove.jsp" %>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Lab Register</title>
</head>
    <script type="text/javascript">
        function valid()
        {
            
            if(document.getElementById("textfield").value=="")
	{
		alert("Enter Lab ID!");
		document.getElementById("textfield").focus();
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
      
	return true;
        }
        
    </script>

<body><br /><br />
<h2 align="center">Lab Registeration</h2>
<form id="form1" name="form1" method="post" action="">
  <table width="296" align="center">
    <tr>
      <td width="114">LabID</td>
      <td width="166"><label for="textfield"></label>
      <input type="text" name="textfield" id="textfield" /></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>Lab Name</td>
      <td><label for="textfield2"></label>
      <input type="text" name="textfield2" id="textfield2" /></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><div align="center">
              <input type="submit" name="button" id="button" value="Register" onclick="return valid()"/>
      </div></td>
    </tr>
  </table>
</form>
</body>
</html>

<%
if(request.getParameter("button")!=null)
{
    String labid=request.getParameter("textfield");
    String lname=request.getParameter("textfield2");
    
    Dbqueries d=new Dbqueries();
    int i=d.lab(labid,lname);
}

%>