<%@page import="Dbqueries.Dbqueries"%>
<%@include file="session_Remove.jsp" %>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Request Approve</title>
</head>

<body>
<form id="form1" name="form1" method="post" action="">
  <table width="370" align="center">
    <tr>
      <td width="54">Lab</td>
      <td width="67"><label for="select"></label>
        <select name="select2" id="select2">
             <option value="-1">Select</option>
      <%
      Dbqueries b=new Dbqueries();
      ResultSet rs1=b.viewLab();
      while(rs1.next())
      {
      %>
      <option value="<%=rs1.getString(1)%>"><%=rs1.getString("labname")%></option>
      <% } %>
      </select></td>
      <td width="34">&nbsp;</td>
      <td width="187">
      <input type="submit" name="button" id="button" value="Submit" /></td>
    </tr>
   
  </table>
  <p>&nbsp;</p>
  <%
         if(request.getParameter("button")!=null)
          {
              String lab=request.getParameter("select2");;
             
         
          
  %>
  <table width="443" border="1" align="center">
    <tr>
      <td width="42">Sl No.</td>
      <td width="96">Staff</td>
      <td width="96">Acessories</td>
      <td width="80">Quantity</td>
      <td width="95">Status</td>
      <td width="95">&nbsp;</td>
    </tr>
      <% 
      int i=1;
      ResultSet rs=b.reqStatusAdmin(lab);
      while(rs.next())
      {
      %>
    <tr>
      <td><%=i++%></td>
      <td><%=rs.getString("name")%></td>
      <td><%=rs.getString("acessid")%></td>
      <td><%=rs.getString("quantity")%></td>
      <td><%=rs.getString("status")%></td>
      <td><a href="ApproveReq.jsp?id=<%=rs.getString("reqid")%>">Approve</a>
      </br> <a href="RjectReq.jsp?id=<%=rs.getString("reqid")%>">Reject</a>
      </td>
    </tr>
   <% }  %>
  </table>
  <% } %>
  <p>&nbsp;</p>
</form>

<p>&nbsp;</p>
</body>
</html>