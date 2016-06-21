<%-- 
    Document   : valiAgeBySex
    Created on : Jun 18, 2016, 7:01:18 PM
    Author     : shermainesy
--%>

<%@page import="ModelDemo.ByAgeGroupSex"%>
<%@page import="ModelDemoError.byAgeGroupError"%>
<%@page import="java.util.ArrayList"%>
<%@ include file="../JSPImports/importsAide.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Preview Upload | Age Group and Sex</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <link href="cssImported/ValidateCSS.css" rel="stylesheet" type="text/css"/>
        <script src="jsImported/ValidateJS.js" type="text/javascript"></script>

        <!--Pace Imports-->
        <script src="Pace/pace.js"></script>
        <link href="Pace/dataurl.css" rel="stylesheet" />
    </head>
    <body>
        <div class="wrapper">
            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <section class="content">
                    <div class="row">
                        <form action="ValiAgeByGrpServ" method="post"> 
                            <div class="box-header with-border">
                                <center>
                                    <h1 class="box-title"><b>Preview of Household Population by Age Group and Sex</b></h1>
                                </center>
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
                                    <p>There are no errors in the excel file.</p>
                                </div>
                                <%}%> 
                            </div>
                            <%if (temp.equalsIgnoreCase("Error")) {
                                    ArrayList<byAgeGroupError> byAgeGroupError = (ArrayList<byAgeGroupError>) request.getAttribute("ArrError");%>
                            <div class="box-body">
                                <div class="DT" id="errorsDiv">
                                    <table id="dataTableError" class="table table-striped table-bordered dataTable">
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
                                            <%

                                                }
                                            %>
                                        </tbody>

                                    </table>
                                    <input name="errorMessage" type="hidden" value="<%=temp%>" />

                                </div>
                                <div align="center">
                                    <input align="center" class="btn btn-flat btn-success" style="margin: 0 auto 5% auto" onClick="printDiv('errorsDiv')" type="button" value="Print Error Summary"/>
                                </div>
                                <%
                                    }
                                    ArrayList<ByAgeGroupSex> ByAgeGroupSex = (ArrayList<ByAgeGroupSex>) request.getAttribute("ArrNoError");
                                %>
                                <div class="DT">
                                    <table id="dataTable" class="table table-striped table-bordered dataTable">
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
                                                <td><input name="location" type="text" value="<%=ByAgeGroupSex.get(i).getBarangay()%>" readonly /></td>
                                                <td><input name="ageGroup" type="text" value="<%=ByAgeGroupSex.get(i).getAgeGroup()%>" readonly /></td>
                                                <td><input name="bothSexes" type="text" value="<%=ByAgeGroupSex.get(i).getBothSex()%>" readonly /></td>
                                                <td><input name="male" type="text" value="<%=ByAgeGroupSex.get(i).getMaleCount()%>" readonly /></td>
                                                <td><input name="female" type="text" value="<%=ByAgeGroupSex.get(i).getFemaleCount()%>" readonly /></td>
                                            </tr>
                                            <%
                                                }

                                            %>
                                        </tbody>
                                    </table>
                                </div>

                                <input type="hidden" name="year" class="year" id="year" />
                                <div style="width:96%; margin-left: 2%; margin-top: 5%;">   
                                    <div style="display:inline; float:left;">
                                        <a href="/ProjectTek/RetrieveDataDemoServlet?redirect=byAgeGroupSex">
                                            <input type="button" class="btn btn-flat btn-default" style="width: 100px;" value='Back'>
                                    </a></div>   
                                    <div  style="display:inline; float:right;"><input class="btn btn-flat btn-success" type="submit" value="Submit" /></div>
                                </div>
                                <div style="">
                                    

                                    
                                </div>
                            </div>
                        </form>


                    </div>
                </section>
            </div>
        </div>
    </body>
</html>
