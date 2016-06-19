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

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<!--        <link href="css/jquery.dataTables.min.css" rel="stylesheet" type="text/css"/>
        <script src="js/jquery.dataTables.min.js" type="text/javascript"></script>

        <script>
            $(document).ready(function () {
                $('#dataTable').DataTable({
                    "paging": true,
                    "info": true
                });
            });
        </script>-->
        <style>
            .content {
                display:none;
            }

            .preload {
                margin:0;
                position:absolute;
                top:50%;
                left:50%;
                margin-right: -50%;
                transform:translate(-50%, -50%);
            }
        </style>
    </head>
    <body>

        <div class="preload">
            <img src="images/loading_spinner.gif" alt=""/>
        </div>
        <div class="content">
            <div class="wrapper">
                <!-- Content Wrapper. Contains page content -->
                <div class="content-wrapper">
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
                            <input class="btn btn-flat btn-success" type="submit" value="Submit"/>
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

                        </div>
                    </form>
                </div>
            </div>
        </div>
        <script>
            $(function () {
                $(".preload").fadeOut(9000, function () {
                    $(".content").fadeIn(1000);
                });
            });
        </script>    
    </body>
</html>
