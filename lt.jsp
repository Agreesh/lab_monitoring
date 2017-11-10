<%-- 
    Document   : lt
    Created on : Nov 8, 2017, 1:12:58 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);
  session.removeAttribute("lid");
  if(session.getAttribute("lid")==null){
      
      response.sendRedirect("login.jsp");}
  else{
      session.removeAttribute("lid");
  }        %>
    </body>
</html>
