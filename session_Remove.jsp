<%-- 
    Document   : session_Remove
    Created on : Nov 8, 2017, 3:12:03 PM
    Author     : admin
--%>

<%@page import="Dbqueries.Dbqueries" %>
<!DOCTYPE html>
<html>
    <head>
        <title>JSP Page</title>
    </head>
    <body>
        <%
             if( session.getAttribute("lid")==null )
             response.sendRedirect("login.jsp");
             
        %>
    </body>
</html>
