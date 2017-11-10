<%@include file="session_Remove.jsp" %>
<%@page import="Dbqueries.Dbqueries"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body><br /><br />
<h2 align="center">Lab</h2><br /><br />
<form id="form1" name="form1" method="post" action="">
  <table width="200" border="1" align="center">
    <tr>
      <td>Sl.No</td>
      <td>Labname</td>
    </tr>
    <tr>
         <%
      Dbqueries d=new Dbqueries();
      int i=1;
      ResultSet rs=d.viewLab();
      while(rs.next())
      {
      %>
      <td><%=i++%></td>
      <td><%=rs.getString("labname")%></td>
    </tr>
      <% } %>
  </table>
</form>
</body>
</html>