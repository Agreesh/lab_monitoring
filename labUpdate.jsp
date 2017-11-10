<%@include file="session_Remove.jsp" %>
<%@page import="Dbqueries.Dbqueries"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body><br /><br /><br /><br />
<form id="form1" name="form1" method="post" action="">
  <table width="564" border="1" align="center">
    <tr>
      <td width="43">Sl.No.</td>
      <td width="95">LabID</td>
      <td width="123">Lab Name</td>
      <td width="87">EmpID</td>
      <td width="87">Staff</td>
      <td width="89">&nbsp;</td>
    </tr>
        <%
      Dbqueries d=new Dbqueries();
      int i=1;
      ResultSet rs=d.viewAllocUpdate();
      while(rs.next())
      {
      %>
    <tr>
      <td><%=i++%></td>
      <td><%=rs.getString("labid")%></td>
      <td><%=rs.getString("labname")%></td>
      <td><%=rs.getString("emp_id")%></td>
      
      <td><%=rs.getString("name")%></td>
      <td><a href="labStaffupdate.jsp?id=<%=rs.getString("allocid")%>&emid=<%=rs.getString("emp_id")%>">update</a></td>
      <td><a href="labStaffDelete.jsp?id=<%=rs.getString("allocid")%>">Delete</a></td>
    </tr><% } %>
  </table>
</form>
</body>
</html>