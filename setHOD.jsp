<%@include file="session_Remove.jsp" %>
<%@page import="Dbqueries.Dbqueries"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
        <script language="javascript" type="text/javascript">
            var xmlHttp;
            function show(mid){
                if (typeof XMLHttpRequest != "undefined"){
                xmlHttp= new XMLHttpRequest();
                }
                else if (window.ActiveXObject){
                    xmlHttp= new ActiveXObject("Microsoft.XMLHTTP");
                }
                if (xmlHttp==null){
                    alert("Browser does not support XMLHTTP Request")
                    return;
                }
                var url="nameAjax.jsp"
                url +="?c=" +mid
                xmlHttp.onreadystatechange = stateChange;
                xmlHttp.open("GET", url, true);
                xmlHttp.send(null);
            }
            
            function stateChange(){
                if(xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){
                    document.getElementById("name").innerHTML=xmlHttp.responseText 
//                    document.getElementById("x").value=xmlHttp.responseText 
                }
            }
</script>

</head>

<body><br /><br /><br /><br />
<form id="form1" name="form1" method="post" action="">
  <table width="500" align="center">
    <tr>
      <td>Select Staff</td>
      <td><label for="select"></label>
          <select name="select" id="select" onchange="show(this.value);">
              <option value="-">Select</option>
            <%
      Dbqueries d=new Dbqueries();
      ResultSet rs=d.viewVerifiedStaff();
      while(rs.next())
      {
      %>
      <option value="<%=rs.getString("logid")%>"><%=rs.getString("emp_id")%></option>
      <% } %>
      </select></td>
    </tr>
      <tr>
          <td><label>Emp Name</label></td>
          <td><div id="name"> <input type="text" disabled="disabled" name="viewstaff"/></div> </td>
      </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="button" id="button" value="Set as HOD" /></td>
    </tr>
  </table>
</form>
</body>
</html>

<%
if(request.getParameter("button")!=null)
{
    String selstaff=request.getParameter("select");
   
   d.setHOD(selstaff);
    
}

%>