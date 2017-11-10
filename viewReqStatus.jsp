<%@include file="session_Remove.jsp" %>
<%@page import="Dbqueries.Dbqueries"%>
<%@page import="java.util.Deque"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body><br /><br /><br /><br />
    <%
    String lid=session.getAttribute("lid").toString();
    
    %>
<form id="form1" name="form1" method="post" action="">
    <table width="459" align="center" border="1">
    <tr>
      <td width="32">Sl.No.</td>
      <td width="79">Peripheral</td>
      <td width="105">Quantity</td>
      <td width="93">Date</td>
      <td width="116">Status</td>
    </tr>
      <%
      Dbqueries d=new Dbqueries();
      ResultSet rs=d.viewstat(lid);
      int i=1;
      while(rs.next())
      {
      
      %>  
    
    <tr>
      <td><%=i%></td>
      <td><%=rs.getString(7)%></td>
      <td><%=rs.getString(4)%></td>
      <td><%=rs.getString(6)%></td>
      <td><%=rs.getString(5)%></td>
    </tr>
      <% i++; }%>
  </table>
</form>
</body>
</html>