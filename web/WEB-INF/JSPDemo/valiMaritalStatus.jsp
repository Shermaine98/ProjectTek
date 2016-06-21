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
        <form action="ValiMaritalStatus" method="post">   
            <div align="center" class="container">
                <div class="box-header with-border">
                    <center><h1 class="box-title"><b>Preview of Household Population by Age Group and Sex</b></h1></center>
                    <br>
                    <% String table = null;
                        String temp = (String) request.getAttribute("table");
                        boolean withError = false;
                        if (temp.contains("bgcolor='#f2dede'")) {
                            withError = true;
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
                    <%=temp%>  
                </div>

                <table id="dataTable" class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Location</th>
                            <th>Sex</th>
                            <th>Age Group</th>
                            <th>Single</th>
                            <th>Married</th>
                            <th>Widowed</th>
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
                            <td><%=MaritalStatusTemp.get(i).getLocation()%></td>
                            <input name="location" type="hidden" value="<%=MaritalStatusTemp.get(i).getLocation()%>" />
                            <td><%=MaritalStatusTemp.get(i).getBothSex()%></td>
                            <input name="sex" type="hidden" value="<%=MaritalStatusTemp.get(i).getBothSex()%>" />
                            <td><input name="ageGroup" type="text" value="<%=MaritalStatusTemp.get(i).getAgeGroup()%>" /></td>
                            <td><%=MaritalStatusTemp.get(i).getSingle()%></td>
                            <input name="single" type="text" value="<%=MaritalStatusTemp.get(i).getSingle()%>" />
                            <td><%=MaritalStatusTemp.get(i).getMarried()%></td>
                            <input name="married" type="hidden" value="<%=MaritalStatusTemp.get(i).getMarried()%>" />
                            <td><%=MaritalStatusTemp.get(i).getWidowed()%></td>
                            <input name="windowed" type="hidden" value="<%=MaritalStatusTemp.get(i).getWidowed()%>" />
                            <td><%=MaritalStatusTemp.get(i).getDivorcedSeparated()%></td>
                            <input name="divorcedSeparated" type="hidden" value="<%=MaritalStatusTemp.get(i).getDivorcedSeparated()%>" />
                            <td><%=MaritalStatusTemp.get(i).getCommonLawLiveIn()%></td>
                            <input name="commonLawLiveIn" type="hidden" value="<%=MaritalStatusTemp.get(i).getCommonLawLiveIn()%>" />
                            <td><%=MaritalStatusTemp.get(i).getUnknown()%></td>
                            <input name="unknown" type="hidden" value="<%=MaritalStatusTemp.get(i).getUnknown()%>" />
                            <td><%=MaritalStatusTemp.get(i).getTotal()%></td>
                            <input name="total" type="hidden" value="<%=MaritalStatusTemp.get(i).getTotal()%>" />
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
