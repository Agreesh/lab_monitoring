<%-- 
    Document   : forward
    Created on : Oct 18, 2017, 11:33:10 AM
    Author     : Amal Rj
--%>

<%@page import="Dbqueries.Dbqueries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="session_Remove.jsp" %>
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
        int i=d.reqApprove(id);
        if(i>0)
        {
            response.sendRedirect("ApproveRequest.jsp");
        }
        %>
    </body>
</html>
