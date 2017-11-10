
<%-- 

    Document   : viewUpdateAcces
    Created on : Oct 17, 2017, 3:23:06 PM
    Author     : Amal Rj
--%>
<%@include file="session_Remove.jsp" %>
<%@page import="Dbqueries.Dbqueries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body><br><br><br><br>
        <form >
            <table width="307" align="center">
    <tr>
      <td width="92">Peripherals</td>
      <td width="199"><label for="textfield"></label>
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
    String peripheral=request.getParameter("texfield");
    String quantity=request.getParameter("textfield2");
    String des = request.getParameter("textarea");
    Dbqueries d=new Dbqueries();
    //int i=d;//regInsert(name, age);
}
%>