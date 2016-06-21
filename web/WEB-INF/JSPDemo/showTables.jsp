<%-- 
    Document   : showTables
    Created on : Jun 21, 2016, 12:14:03 AM
    Author     : Shermaine
--%>

<%@page import="ModelDemo.ByAgeGroupSex"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../JSPImports/importsAide.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="cssImported/ValidateCSS.css" rel="stylesheet" type="text/css"/>
        <script src="jsImported/ValidateJS.js" type="text/javascript"></script>

        <!--Pace Imports-->
        <script src="Pace/pace.js"></script>
        <link href="Pace/dataurl.css" rel="stylesheet" />
    </head>
    <body>
        
        <div class="wrapper">
             <!--Content Wrapper. Contains page content--> 
            <div class="content-wrapper">
                <section class="content">
                    <div class="row">
        <h1>Hello Tables!</h1>
        <%

            ArrayList<ByAgeGroupSex> ByAgeGroupSex = (ArrayList<ByAgeGroupSex>) request.getAttribute("ageGroupSexData");
        %>


        <div class="box-body">

            <table id="archived" class="table table-striped table-bordered dataTable" role="grid" aria-describedby="incomplete_info">
                <thead>
                    <tr>
                        <th>Location</th>
                        <th>Age Group</th>
                        <th>Both Sex</th>
                         <th>Male</th>
                         <th>Female</th>
                    </tr>
                </thead>
                <tbody>
                    <%for (int i = 0; i < ByAgeGroupSex.size(); i++) {%>
                    <tr>
                        <td><%=ByAgeGroupSex.get(i).getBarangay()%></td>
                        <td><%=ByAgeGroupSex.get(i).getAgeGroup()%></td>
                        <td><%=ByAgeGroupSex.get(i).getMaleCount()+ ByAgeGroupSex.get(i).getFemaleCount()%></td>
                        <td><%=ByAgeGroupSex.get(i).getMaleCount()%></td>
                        <td><%=ByAgeGroupSex.get(i).getFemaleCount()%></td>
                    </tr>
                    <% }%>
                </tbody>
            </table>    
        </div>
                    </div>
                
                    </section>
            </div>  
        </div>
    </body>
</html>
