<%@include file="session_Remove.jsp" %>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body><br /><br /><br />
<form id="form1" name="form1" method="post" action="">
  <table width="396" align="center">
    <tr>
      <td width="80">Semester</td>
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
      <td width="148"><div align="center">
        <input type="submit" name="button" id="button" value="Submit" />
      </div></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
  </table>
  <p>&nbsp;</p>
  <table width="532" border="1" align="center">
    <tr>
      <td width="45">Sl.No.</td>
      <td width="101">StudentID</td>
      <td width="78">Roll No.</td>
      <td width="162">Name</td>
      <td width="112">Attendance</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
  </table>
  <p>&nbsp;</p>
</form>
</body>
</html>