<%-- 
    Document   : valiAgeBySex
    Created on : Jun 18, 2016, 7:01:18 PM
    Author     : shermainesy
--%>

<%@page import="ModelDemo.ByAgeGroupSex"%>
<%@page import="ModelDemoError.byAgeGroupError"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/jquery.dataTables.min.css" rel="stylesheet" type="text/css"/>
        <script src="js/jquery.dataTables.min.js" type="text/javascript"></script>

        <script>
            $(document).ready(function () {
                $('#dataTable').DataTable({
                    "paging": true,
                    "info": true
                });
            });
        </script>
    </head>
    <body>
        <form action="ValiAgeByGrpServ" method="post">   
            <div align="center" class="container">
                <div class="box-header with-border">
                    <center><h1 class="box-title"><b>Preview of Household Population by Age Group and Sex</b></h1></center>
                    <br>
                    <%
                        String temp = (String) request.getAttribute("ErrorMessage");
                        if (temp.equalsIgnoreCase("Error")) {
                    %>
                    <div class="callout callout-danger">
                        <h4>Oops! There are errors.</h4>

                        <p>Kindly head onto the cells highlighted in red to see what's wrong.</p>
                    </div>
                    <%
                    } else {
                    %>
                    <div class="callout callout-success">
                        <p>There are no errors with the Household Population by Age Group and Sex excel file.</p>
                    </div>
                    <%}%> 
                </div>

                <%if (temp.equalsIgnoreCase("Error")) {
                                    ArrayList<byAgeGroupError> byAgeGroupError = (ArrayList<byAgeGroupError>) request.getAttribute("ArrError");%>
                <table id="dataTable" class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Location</th>
                            <th>AgeGroup</th>
                            <th>Both Sex</th>
                            <th>Male</th>
                            <th>Female</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            for (int i = 0; i < byAgeGroupError.size(); i++) {


                        %>
                        <tr>
                            <td><input name="locationError" type="text" value="<%=byAgeGroupError.get(i).getBarangay()%>" /></td>
                            <td><input name="ageGroupError" type="text" value="<%=byAgeGroupError.get(i).getAgeGroup()%>" /></td>
                            <td><input name="bothSexesError" type="text" value="<%=byAgeGroupError.get(i).getBothSex()%>" /></td>
                            <td><input name="maleError" type="text" value="<%=byAgeGroupError.get(i).getMaleCount()%>" /></td>
                            <td><input name="femaleError" type="text" value="<%=byAgeGroupError.get(i).getFemaleCount()%>" /></td>
                        </tr>
                        <input name="errorMessage" type="hidden" value="<%=temp%>" />
                        <%

                            }
                        %>
                    </tbody>
                </table>

                <%
                    } 
                            ArrayList<ByAgeGroupSex> ByAgeGroupSex = (ArrayList<ByAgeGroupSex>) request.getAttribute("ArrNoError");
                %>
                <table id="dataTable" class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Location</th>
                            <th>AgeGroup</th>
                            <th>Both Sex</th>
                            <th>Male</th>
                            <th>Female</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            for (int i = 0; i < ByAgeGroupSex.size(); i++) {
                                    
                        %>
                        <tr>

                            <td><input name="location" type="text" value="<%=ByAgeGroupSex.get(i).getBarangay()%>" /></td>
                            <td><input name="ageGroup" type="text" value="<%=ByAgeGroupSex.get(i).getAgeGroup()%>" /></td>
                            <td><input name="bothSexes" type="text" value="<%=ByAgeGroupSex.get(i).getBothSex()%>" /></td>
                            <td><input name="male" type="text" value="<%=ByAgeGroupSex.get(i).getMaleCount()%>" /></td>
                            <td><input name="female" type="text" value="<%=ByAgeGroupSex.get(i).getFemaleCount()%>" /></td>
                        </tr>
                        <%
                                }
                            
                        %>
                    </tbody>
                </table>
                <input class="btn btn-flat btn-success" type="submit" value="Submit"/>
            </div>
        </form>
    </body>
</html>
