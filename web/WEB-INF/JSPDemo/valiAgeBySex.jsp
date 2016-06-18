<%-- 
    Document   : valiAgeBySex
    Created on : Jun 18, 2016, 7:01:18 PM
    Author     : shermainesy
--%>

<%@page import="ModelDemoError.byAgeGroupError"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
                <%            
                    
                    ArrayList<byAgeGroupError> byAgeGroupError = (ArrayList<byAgeGroupError>) request.getAttribute("arrayTemp");
        %>
          <form action="valiAgeByGrpServ" method="post">   
        <div align="center" class="container">
        <table id="productionInventory" class="table table-bordered">
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
                <%for (int i = 0; i < byAgeGroupError.size(); i++) {
                        
                %>
                <tr>
                    
                    <td><input name="location" type="text" value="<%=byAgeGroupError.get(i).getBarangay()%>" /></td>
                    <td><input name="ageGroup" type="text" value="<%=byAgeGroupError.get(i).getAgeGroup()%>" /></td>
                    <td><input name="bothSex" type="text" value="<%=byAgeGroupError.get(i).getBothSex()%>" /></td>
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
