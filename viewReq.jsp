<%@include file="session_Remove.jsp" %>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<br /><br /><br />
<form id="form1" name="form1" method="post" action="">
  <table width="370" align="center">
    <tr>
      <td width="54">Lab</td>
      <td width="67"><label for="select"></label>
        <select name="select" id="select">
      </select></td>
      <td width="34">&nbsp;</td>
      <td width="187"><label for="select2"></label>
      <input type="submit" name="button" id="button" value="Submit" /></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
  </table>
  <p>&nbsp;</p>
  <table width="443" border="1" align="center">
    <tr>
      <td width="42">Sl No.</td>
      <td width="96">Staff</td>
      <td width="96">Acessories</td>
      <td width="80">Quantity</td>
      <td width="95">&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td><a href="#">approve</a></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td><a href="#">reject</a></td>
    </tr>
  </table>
  <p>&nbsp;</p>
</form>
</body>
</html>