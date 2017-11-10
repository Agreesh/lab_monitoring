<%-- 
    Document   : verifystaff
    Created on : Oct 18, 2017, 12:31:51 PM
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
    <body>
     <%
     String logid=request.getParameter("id");
     Dbqueries d=new Dbqueries();
    int i= d.vstaff(logid);
    if(i>0)
    {
        response.sendRedirect("sVerify.jsp");
    }
     %>
    </body>
</html>
