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

        <!--DataTable imports-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <link rel="stylesheet" type="text/css" href="cssImported/datatables.min.css"/>
        <script type="text/javascript" src="jsImported/datatables.min.js"></script>

        <script>
            $(document).ready(function () {
                $('#dataTable').DataTable({
                    "paging": true,
                    "ordering": true,
                    "info": true
                });
            });
        </script>
        <style>
            .loading {
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
            input[type="text"]
            {
                background: transparent;
                border: none;
            }
            .DT{
                width: 95%;
                align-content: center;
                margin: 0 auto;
            }
        </style>

    </head>
    <body>
        <div class="preload">
            <img src="images/loading_spinner.gif" alt=""/>
        </div>
        <div class="wrapper">
            <!-- Content Wrapper. Contains page content -->
            <div class="loading">
                <div class="content-wrapper">
                    <section class="content">
                        <div class="row">
                            <form action="ValiAgeByGrpServ" method="post"> 
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
                                        <p>Successfully Save into Database</p>
                                    </div>
                                    <%}%> 
                                </div>
                                <%if (temp.equalsIgnoreCase("Error")) {
                                        ArrayList<byAgeGroupError> byAgeGroupError = (ArrayList<byAgeGroupError>) request.getAttribute("ArrError");%>

                                <div class="DT">
                                    <table id="dataTable" class="table table-striped table-bordered">
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
                                </div>

                                <%
                                    }
                                    ArrayList<ByAgeGroupSex> ByAgeGroupSex = (ArrayList<ByAgeGroupSex>) request.getAttribute("ArrNoError");
                                %>
                                <div class="DT">
                                    <table id="dataTable" class="table table-striped table-bordered">
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
                                <input class="btn btn-flat btn-success" type="submit" value="Submit" style="float:right;
                                       margin-right: 3%; margin-top: 3%; margin-bottom: 1%"/>
                            </form>
                        </div>
                    </section>
                </div>
            </div>
        </div>
        <script>
            $(function () {
                $(".preload").fadeOut(9000, function () {
                    $(".loading").fadeIn(1000);
                });
            });
        </script>    
    </body>
    <%@ include file="../JSPImports/footer.html" %>
</html>
