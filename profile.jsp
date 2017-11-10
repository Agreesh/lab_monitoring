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
<h1 align="center">Profile</h1><br />
<%
String lid=session.getAttribute("lid").toString();
Dbqueries d=new Dbqueries();
ResultSet rs=d.viewProfile(lid);
if(rs.next())
{
%>

<form id="form1" name="form1" method="post" action="">
  <table width="333" border="1" align="center">
    <tr>
      <td width="166">EmpID</td>
      <td width="151"><%=rs.getString("emp_id")%></td>
    </tr>
    <tr>
      <td>Name</td>
      <td><%=rs.getString("name")%></td>
    </tr>
    <tr>
      <td>Phone No.</td>
      <td><%=rs.getString("phone")%></td>
    </tr>
    <tr>
      <td>E-mail</td>
      <td><%=rs.getString("email")%></td>
    </tr>
     <tr>
      <td>Lab</td>
      <td>
          <%
          ResultSet rs1=d.ViewOwnLab(lid);
          if(rs1.next())
          {
              String lab=rs1.getString("labname");
              out.print(lab);
          }else{
              out.print("No Lab");
          }
          %>
          
      
      </td>
    </tr>
  </table>
   
</form>
<%}%>
</body>
</html>