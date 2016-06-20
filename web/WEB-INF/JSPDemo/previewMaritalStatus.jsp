<%-- 
    Document   : previewMaritalStatus
    Created on : Jun 18, 2016, 4:14:22 PM
    Author     : Gian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../JSPImports/importsAide.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Project TEK | Marital Status </title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

        <style>
            th{
                
                vertical-align:middle;
            }
            .table tbody td > td.success {
                background-color: #dff0d8 !important;
            }

            .table tbody td > td.error {
                background-color: #f2dede !important;
            }

            .table tbody td > td.warning {
                background-color: #fcf8e3 !important;
            }

            .table tbody td > td.info {
                background-color: #d9edf7 !important;
            }
        </style>

    </head>
    <body class="hold-transition skin-yellow-light fixed sidebar-mini">
        
        <div class="wrapper">
            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <div class="box box-danger">
                        <div class="box-header with-border">
                            <center><h1 class="box-title"><b>Preview of Household Population 10 years old & over by Age Group, Sex and Marital Status</b></h1></center>
                            <br>
                            <% String table = null;
                                String temp  = (String) session.getAttribute("table");
                                boolean withError = false;
                                if(temp.contains("bgcolor='#f2dede'")){
                                    withError = true;
                              %>
                                    <div class="callout callout-danger">
                                        <h4>Oops! There are errors.</h4>

                                        <p>Kindly head onto the cells highlighted in red to see what's wrong.</p>
                                    </div>
                            <%
                                }else{
                            %>
                                    <div class="callout callout-success">
                                        <p>There are no errors with the Household Population by Age Group and Sex excel file.</p>
                                    </div>
                            <%}%>
                            <%=temp%>  
                        </div>
                        <center>
                        <button onclick="goBack()" class="btn btn-default btn-flat">Go Back</button>
                        &nbsp;&nbsp;
                        <%if(withError==true){%>
                            <button class="btn btn-success btn-flat" disabled="true" style='width:20%'>Next</button>
                        <%} else{%>
                            <button class="btn btn-success btn-flat" style='width:20%'>Next</button>
                        <%}%>
                        </center>
                        <br>
                    </div>
                </section>

                <!-- /.content -->
            </div>
            <!-- /.content-wrapper -->
        </div>
        <!-- ./wrapper -->
    <script>
        function goBack() {
            window.history.back();
        }
    </script>
    </body>
</html>