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
                            <center><b><h2 class="box-title">Household Population by Age Group and Sex</h2></b></center>
                    <% String table = null;
                        String temp  = (String) session.getAttribute("table");
                     %>
                     <%=temp%>
                        </div>
                        <button class="btn btn-success">Submit</button>
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