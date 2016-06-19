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
                <%            
                    
                    ArrayList<byAgeGroupError> byAgeGroupError = (ArrayList<byAgeGroupError>) request.getAttribute("ArrError");
        %>
          <form action="ValiAgeByGrpServ" method="post">   
        <div align="center" class="container">
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
                    
                    <td><input name="location" type="text" value="<%=byAgeGroupError.get(i).getBarangay()%>" /></td>
                    <td><input name="ageGroup" type="text" value="<%=byAgeGroupError.get(i).getAgeGroup()%>" /></td>
                    <td><input name="bothSexes" type="text" value="<%=byAgeGroupError.get(i).getBothSex()%>" /></td>
                    <td><input name="male" type="text" value="<%=byAgeGroupError.get(i).getMaleCount()%>" /></td>
                     <td><input name="female" type="text" value="<%=byAgeGroupError.get(i).getFemaleCount()%>" /></td>
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
