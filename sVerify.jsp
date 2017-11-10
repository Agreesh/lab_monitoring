<%@include file="session_Remove.jsp" %>
<%@page import="Dbqueries.Dbqueries"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<br />
<h2 align="center">Staff Verification</h2>
<br /><br /><br />
<form id="form1" name="form1" method="post" action="">
  <table width="687" border="1">
    <tr>
      <td width="38">Sl.No</td>
      <td width="102">EmpID</td>
      <td width="98"><div align="center">Name</div></td>
      <td width="65">Gender</td>
      <td width="65"><div align="center">Designation</div></td>
      <td width="220"><div align="center">Address</div></td>
      <td width="136"><div align="center">E-mail</div></td>
      <td width="101">Phone No.</td>
      <td width="101">&nbsp;</td>
    </tr>
      <%
      Dbqueries d=new Dbqueries();
      int i=1;
      ResultSet rs=d.viewStaffVerify();
      while(rs.next())
      {
      %>
    <tr>
      <td><%=i++%></td>
      <td><%=rs.getString("emp_id")%></td>
      <td><%=rs.getString("name")%></td>
      <td><%=rs.getString("gender")%></td>
      <td><%=rs.getString("designation")%></td>
      <td><%=rs.getString("address")%></td>
      <td><%=rs.getString("email")%></td>
      <td><%=rs.getString("phone")%></td>
      <td><a href="verifystaff.jsp?id=<%=rs.getString(9)%>">verify</a></td>
    </tr>
    <% } %>
  </table>
</form>
</body>
</html>