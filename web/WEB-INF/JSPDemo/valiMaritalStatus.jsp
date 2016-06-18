<%-- 
    Document   : valiMaritalStatus
    Created on : Jun 18, 2016, 7:01:18 PM
    Author     : shermainesy
--%>

<%@page import="ModelDemoError.MaritalStatusTemp"%>
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
                    
                    ArrayList<MaritalStatusTemp> MaritalStatusTemp = (ArrayList<MaritalStatusTemp>) request.getAttribute("arrTempMarital");
        %>
          <form action="ValiAgeByGrpServ" method="post">   
        <div align="center" class="container">
        <table id="productionInventory" class="table table-bordered">
            <thead>
                <tr>
                    <th>Location</th>
                    <th>AgeGroup</th>
                     <th>Marital Status</th>
                    <th>Both Sex</th>
                    <th>Male</th>
                    <th>Female</th>
                </tr>
            </thead>
            <tbody>
                <%
                    for (int i = 0; i < MaritalStatusTemp.size(); i++) {
                        
                %>
                <tr>
                    
                    <td><input name="location" type="text" value="<%=MaritalStatusTemp.get(i).getLocation()%>" /></td>
                    <td><input name="ageGroup" type="text" value="<%=MaritalStatusTemp.get(i).getAgeGroup()%>" /></td>
                    <td><input name="bothSexes" type="text" value="<%=MaritalStatusTemp.get(i).getMaritalStatus()%>" /></td>
                    <td><input name="bothSexes" type="text" value="<%=MaritalStatusTemp.get(i).getBothSex()%>" /></td>
                    <td><input name="male" type="text" value="<%=MaritalStatusTemp.get(i).getMaleCount()%>" /></td>
                     <td><input name="female" type="text" value="<%=MaritalStatusTemp.get(i).getFemaleCount()%>" /></td>
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
