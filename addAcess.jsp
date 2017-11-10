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
  <table width="321" align="center">
      <tr>
      <td width="107">Lab</td>
      <td width="198"><label for="textfield"></label>
          <select name="lab">
                <option value="-">Select</option>
            <%
      Dbqueries d=new Dbqueries();
      ResultSet rs=d.viewLab();
      while(rs.next())
      {
      %>
      <option value="<%=rs.getString(1)%>"><%=rs.getString(2)%></option>
      <% } %>
          </select></td>
    </tr>
          <tr>
      <td width="107">Peripherals</td>
      <td width="198"><label for="textfield"></label>
      <input type="text" name="textfield" id="textfield" /></td>
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
      <td>Description</td>
      <td><label for="textarea"></label>
      <textarea name="textarea" id="textarea" cols="45" rows="5"></textarea></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><div align="center">
        <input type="submit" name="button" id="button" value="Submit" />
      </div></td>
    </tr>
  </table>
</form>
</body>
</html>

<%
if(request.getParameter("button")!=null)
{
    String lid=session.getAttribute("lid").toString();
    String name=request.getParameter("textfield");
    String quantity=request.getParameter("textfield2");
    String desc=request.getParameter("textarea");
    String labid=request.getParameter("lab");;
    // Dbqueries d=new Dbqueries();
     int i=0;
     ResultSet rs1=d.viewProfile(lid);
     if(rs1.next())
     {
         labid=rs1.getString(1);
         i=d.acess(labid, name, quantity, desc);
     }else{
         %>
         <script>
             alert("You are not a labstaff");
         </script>
<%
     }
    
}

%>