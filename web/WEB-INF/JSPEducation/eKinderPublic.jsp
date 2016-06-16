<%-- 
    Document   : eKinderPublic
    Created on : Jun 15, 2016, 10:23:41 PM
    Author     : Geraldine
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--IMPORTING HTML IMPORTS (bootstrap + scripts)-->
<%@ include file="importsAide.html" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reports Library - Kindergarten Data in Public Elementary School</title>
        <script src="js/UploadFile.js" type="text/javascript"></script>
    </head>
    <body class="hold-transition skin-yellow-light fixed sidebar-mini">

        <div class="wrapper">
            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1 style='font-family:"Trebuchet MS", Helvetica, sans-serif'><i class="fa fa-files-o"></i> Reports Library</h1>
                </section>

                <ol class="breadcrumb" style='background: transparent; margin-left: 3%; font-size: 120%;'>
                    <li>Education</li>
                    <li class="active">Kindergarten Data in Public Elementary School</li>
                </ol>
                <!-- Main content -->
                <section class="content">
                    <form action="UploadKinderPublic" method="post" enctype="multipart/form-data">
                        <input id="file1" name="file1" type="file" /><br/>
                        <input class="btn btn-flat btn-success" type="submit" value="Submit"/>
                    </form>
                    <!--/form>-->
                    <br>
                </section>
                <!-- /.content -->
            </div>
            <!-- /.content-wrapper -->
        </div>
        <!-- ./wrapper -->
    </body>
    <%@ include file="footer.html" %>
</html>
