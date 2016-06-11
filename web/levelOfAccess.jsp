<%@page import="Model.User"%>
<%
    User user = (User) session.getAttribute("user");
    String position = user.getPosition().toLowerCase().trim();
    if (session.getAttribute("user") == null) {
        response.sendRedirect("index.jsp");
    } else if (position.equalsIgnoreCase("Project Development Officer II")) {
%>         <jsp:include page ="" />
<%
} else if (position.equalsIgnoreCase("Project Development Officer III")) {
%>          <jsp:include page ="" />
<%          } else if (position.equalsIgnoreCase("Project Development Officer IV")) {

%>          <jsp:include page ="" />
<%} else if (position.equalsIgnoreCase("Planning Officer II")) {
%>          <jsp:include page ="" />
<%          } else if (position.equalsIgnoreCase("Planning Officer III")) {
%>          <jsp:include page ="" />
<%          } else if (position.equalsIgnoreCase("Planning Officer IV")) {
%>          <jsp:include page ="" />
<%          } else if (position.equalsIgnoreCase("Statistician I")) {
%>          <jsp:include page=""/>
<%          } else if (position.equalsIgnoreCase("Project Development Officer I")) {
%>          <jsp:include page=""/>
<%          } else if (position.equalsIgnoreCase("Administrative Aide VI")) {
%>          <jsp:include page=""/>
<%          } else if (position.equalsIgnoreCase("External Researchers")) {
%>          <jsp:include page=""/>
<%          } else if (position.equalsIgnoreCase("Other Planning Officers")) {
%>          <jsp:include page=""/>
<%          } else if (position.equalsIgnoreCase("IT Admin")) {
%>          <jsp:include page=""/>
<%          } else {
                response.sendRedirect("index.jsp");
            }
%> 