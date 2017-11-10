<%@page import="javax.xml.registry.infomodel.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="session_Remove.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>JSP Page</title>
    </head>
    
          
      <%
  response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);
  session.removeAttribute("lid");
     if(session.getAttribute("lid")==null){
         response.sendRedirect("login.jsp");
     }
  %>
  
</html>
