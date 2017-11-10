<%@include file="session_Remove.jsp" %>
<%@page import="Dbqueries.Dbqueries"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body><br /><br /><br />
<form id="form1" name="form1" method="post" action="">
  <table width="575" border="1" align="center">
    <tr>
      <td width="47" height="27">Sl.No.</td>
      <td width="119">Peripherals</td>
      <td width="82">Quantity</td>
      <td width="123">Description</td>
      <td width="87">&nbsp;</td>
    </tr>
    <%
        Dbqueries d=new Dbqueries();
        ResultSet rs=d.viewAcess();
        int i=1;
        while(rs.next())
        {
    %>
    <tr>
      <td><%=i++%></td>
      <td><%=rs.getString("peripheral")%></td>
      <td><%=rs.getString("quantity")%></td>
      <td><%=rs.getString("description")%></td>
      <td><a href="viewUpdateAcces.jsp">update</a></td>
    </tr>
    <%}%>
  </table>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
</form>
</body>
</html>

<%
if(request.getParameter("button")!=null)
{
    String peripheral=request.getParameter("textfield");
    String quantity=request.getParameter("textfield2");
    String desc=request.getParameter("textarea");
    
   // Dbqueries d=new Dbqueries();
 }
%>