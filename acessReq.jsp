<%@include file="session_Remove.jsp" %>
<%@page import="Dbqueries.Dbqueries"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body><br /><br /><br /><br /><br />
    <%
    String lid=session.getAttribute("lid").toString();
        Dbqueries db=new Dbqueries();
    
    %>
<form id="form1" name="form1" method="post" action="">
  <table width="288" align="center">
    <tr>
      <td width="116">Peripheral</td>
      <td width="156"><label for="textfield"></label>
          <select name="peri" >
              
       <option value="Select">select</option>
       <%
   
       ResultSet rs=db.peri(lid);
       while(rs.next())
       {
       %>
      <option value="<%=rs.getString(1)%>"><%=rs.getString(3)%></option><%}%>
          </select></td>
     
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>Quantity</td>
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
        <input type="submit" name="button" id="button" value="Request" />
      </div></td>
    </tr>
  </table>
</form>
</body>
</html>
          <%
          if(request.getParameter("button")!=null)
          {
              String p=request.getParameter("peri");
              String q=request.getParameter("textfield2");
              db.insertreq(p,q,lid);
              
              
          }
          
          
          %>
  