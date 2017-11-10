<%-- 
    Document   : labStaffDelete
    Created on : Oct 29, 2017, 1:53:34 PM
    Author     : Amal Rj
--%>
<%@include file="session_Remove.jsp" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="Dbqueries.Dbqueries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Dbqueries d = new Dbqueries();
   
    String id = request.getParameter("id");
    int i=d.labstaffDelete(id);
    response.sendRedirect("labUpdate.jsp");
%>
