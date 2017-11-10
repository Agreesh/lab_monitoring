<%-- 
    Document   : forward
    Created on : Oct 18, 2017, 11:33:10 AM
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
        
        String id=request.getParameter("id");
        Dbqueries d=new Dbqueries();
        int i=d.reqReject(id);
        if(i>0)
        {
            response.sendRedirect("ApproveRequest.jsp");
        }
        %>
    </body>
</html>
