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
<br /><br />
<form id="form1" name="form1" method="post" action="">
  <table width="389" align="center">
    <tr>
      <td width="93">Semester</td>
      <td width="146"><label for="select"></label>
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
      <td width="128"><div align="center">
        <input type="submit" name="button" id="button" value="Submit" />
      </div></td>
    </tr>
   
  </table>
  <p>&nbsp;</p>
  <%
  if(request.getParameter("button")!=null)
  {
      String sem=request.getParameter("select");
      Dbqueries d=new Dbqueries();
      ResultSet rs=d.viewStudDetails(sem);
      int i=1;
  %>
  <table width="356" border="1" align="center">
    <tr>
      <td width="24">Sl No.</td>
      <td width="75">StudentID</td>
      <td width="96">Name</td>
      <td width="56">Roll No.</td>
      <td width="71">Semester</td>
    </tr>
      <%
      while(rs.next())
      {
      %>
    <tr>
      <td><%=i++%></td>
      <td><%=rs.getString("studentid")%></td>
      <td><%=rs.getString("name")%></td>
      <td><%=rs.getString("rollno")%></td>
      <td><%=rs.getString("semester")%></td>
    </tr>
    <% } %>
  </table>
  <% } %>
  <p>&nbsp;</p>
</form>
</body>
</html>