<%-- 
    Document   : viewGraphs
    Created on : Jun 21, 2016, 12:14:25 AM
    Author     : Shermaine
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello Graphs!</h1>
           <%
               String records = (String) request.getAttribute("formID");
        %>
        <input type="text" value="<%=records%>"/>
    </body>
</html>
