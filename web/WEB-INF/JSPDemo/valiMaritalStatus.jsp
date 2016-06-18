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
                    <th>Sex</th>
                     <th>Age Group</th>
                    <th>Single</th>
                    <th>Married</th>
                    <th>Windowed</th>
                     <th>Divorced/Separated</th>
                    <th>Common Law/ Live-in</th>
                     <th>Unknown</th>
                    <th>Total</th>
                </tr>
            </thead>
            <tbody>
                <%
                    for (int i = 0; i < MaritalStatusTemp.size(); i++) {
                        
                %>
                <tr>
                    <td><input name="location" type="text" value="<%=MaritalStatusTemp.get(i).getLocation()%>" /></td>
                    <td><input name="sex" type="text" value="<%=MaritalStatusTemp.get(i).getBothSex()%>" /></td>
                    <td><input name="ageGroup" type="text" value="<%=MaritalStatusTemp.get(i).getAgeGroup()%>" /></td>
                    <td><input name="single" type="text" value="<%=MaritalStatusTemp.get(i).getSingle()%>" /></td>
                    <td><input name="married" type="text" value="<%=MaritalStatusTemp.get(i).getMarried() %>" /></td>
                     <td><input name="windowed" type="text" value="<%=MaritalStatusTemp.get(i).getWidowed()%>" /></td>
                     <td><input name="divorcedSeparated" type="text" value="<%=MaritalStatusTemp.get(i).getDivorcedSeparated()%>" /></td>
                     <td><input name="commonLawLiveIn" type="text" value="<%=MaritalStatusTemp.get(i).getCommonLawLiveIn()%>" /></td>
                     <td><input name="unknown" type="text" value="<%=MaritalStatusTemp.get(i).getUnknown()%>" /></td>
                      <td><input name="total" type="text" value="<%=MaritalStatusTemp.get(i).getTotal()%>" /></td>
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
