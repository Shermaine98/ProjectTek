<%-- 
    Document   : liveBirths
    Created on : Jun 11, 2016, 10:59:00 PM
    Author     : Dinding
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="importsAide.html" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Project TEK | Live Births </title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

        <style>
            th{
                text-align: center; 
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
                            <center><h1 class="box-title"><b>Preview of Household Population by Age Group and Sex</b></h1></center>
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
                                }
                            %>
                             <%=temp%>
                        </div>
                        <center>
                        <%if(withError==true){%>
                        <button class="btn btn-success" disabled="true" style='width:20%'>Next</button>
                        <%} else{%>
                        <button class="btn btn-success" disabled="true" style='width:20%'>Next</button>
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
    </body>

    <%@ include file="footer.html" %>
</html>