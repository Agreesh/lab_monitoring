<%-- 
    Document   : nameAjax
    Created on : Oct 17, 2017, 2:46:22 PM
    Author     : Amal Rj
--%>

<%@page import="java.sql.ResultSet"%>
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
       String id=request.getParameter("c");
       Dbqueries d=new Dbqueries();
       ResultSet rs=d.viewName(id);
       if(rs.next())
       {
       %>
       <input type="text" disabled="disabled" name="viewstaff" value="<%=rs.getString("name")%>"/>
       
       <% } %>
    </body>
</html>
