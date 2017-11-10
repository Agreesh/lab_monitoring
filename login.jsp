<%@page import="java.awt.Window"%>
<%@page import="Dbqueries.Dbqueries"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!--    <script>
    history.forward();
</script>-->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body><br /><br />
<h1 align="center">Login</h1>
<br /><br /><br />
<form id="form1" name="form1" method="post" action="">
  <table width="272" align="center">
    <tr>
      <td width="115">Username</td>
      <td width="141"><label for="textfield"></label>
      <input type="text" name="textfield" id="textfield" /></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>Password</td>
      <td><label for="textfield2"></label>
      <input type="password" name="textfield2" id="textfield2" /></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><div align="center">
        <input type="submit" name="button" id="button" value="Login" />
      </div></td>
    </tr>
    <tr>
      <td>If you are a new user please register first</td>
      <td><a href="staffReg.jsp"><input type="button" name="registr" value="Register"/></a></td>
    </tr>
  </table>
</form>
</body>
</html>
<%    
    if(request.getParameter("button")!=null)
{   
    String uname=request.getParameter("textfield");
    String pass=request.getParameter("textfield2");
    
    Dbqueries d=new Dbqueries();
    ResultSet rs=d.login(uname, pass);
    if(rs.next())
    {
       String lid=rs.getString("logid");
        session.setAttribute("lid", lid);
        String type=rs.getString("usertype");
        if(type.equalsIgnoreCase("admin"))
        {
            Cookie admin = new Cookie("admin", lid);
            response.addCookie(admin);
            response.sendRedirect("AdminHome.jsp");
        }
        else if(type.equalsIgnoreCase("Staff"))
        {
            response.sendRedirect("StaffHome.jsp");
        }else if(type.equalsIgnoreCase("hod"))
        {
            response.sendRedirect("HodHome.jsp");
        }else
        {
            session.setAttribute("lid", null);
            %>
        <script>
            alert("You are in processing");
        </script>
<%
        }
    }else{
        %>
        <script>
            alert("Invalid Username or Password");
        </script>
<%
    }

}

%>
