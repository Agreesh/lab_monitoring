<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Staff Home</title>
</head>

<body><br /><br /><br />
<form id="form1" name="form1" method="post" action="">
    <%@include file="session_Remove.jsp" %>
    <p><a href="profile.jsp">view profile</a>
  </p>
    <p><a href="studReg.jsp">student registeration</a></p>
    <p><a href="viewStud.jsp">view student details</a></p>
    <p><a href="addAcess.jsp">add acessories</a></p>
    <p><a href="updateAcess.jsp">view and update acessories</a></p>
    <p><a href="acessReq.jsp">request acessories</a></p>
    <p><a href="viewReqStatus.jsp">view request status</a></p>
    <p><a href="studAttend.jsp">view student attendance</a></p>
    <p><a href="logout.jsp">Log out</a></p>
</form>
</body>
</html>