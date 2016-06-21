<%-- 
    Document   : eKinderPublic
    Created on : Jun 15, 2016, 10:23:41 PM
    Author     : Geraldine
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--IMPORTING HTML IMPORTS (bootstrap + scripts)-->
<%@ include file="../JSPImports/importsAide.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reports Library | Enrollment in Public Secondary Schools</title>
        <script src="js/UploadFile.js" type="text/javascript"></script>
        <link href="cssImported/uploadJSP.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="wrapper">
            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1><i class="fa fa-files-o"></i> Reports Library</h1>
                </section>

                <ol class="breadcrumb" style='background: transparent; margin-left: 3%; font-size: 120%;'>
                    <li class="title">Education</li>
                    <li class="active title">Enrollment in Public Secondary Schools</li>
                </ol>
                <!-- Main content -->
                <section class="content">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="box box-success" style="padding-bottom: 5%;">
                                <div class="box-header">
                                    <h3 class="box-title">Upload A New Report</h3>
                                </div>
                                <div class="box-body">
                                    <form action="UploadPublicSecondary" method="post" enctype="multipart/form-data">
                                        <label for="file" id="filename" class="custom-file-upload btn btn-block btn-default">
                                            <i class="fa fa-cloud-upload"></i> Upload File
                                        </label>
                                        <input id="file" name="file" type="file" onclick="showDiv()" />
                                        <input class="btn btn-flat btn-success button-submit" id="submit" type="submit" value="Submit" style="display:none"/>
                                    </form>
                                </div>
                                <!-- /.box-body -->
                            </div>
                            <!-- /.box -->
                        </div>
                        <!--End of LEFT COLUMN-->

                        <div class="col-md-6">
                            <div class="box box-danger" style="height: 300px;" >
                                <div class="box-header">
                                    <h3 class="box-title">Incomplete Reports</h3>
                                </div>
                                <div class="box-body">
                                    <table class="table">
                                        <tr>
                                            <th>Hello</th>
                                            <th>Hello</th>
                                        </tr>
                                        <tr>
                                            <td>Yo</td>
                                            <td>Yooo</td>
                                        </tr>
                                    </table>
                                </div>
                                <!-- /.box-body -->
                            </div>
                            <!-- /.box -->
                        </div>

                        <!--End of RIGHT Box-->

                        <div class="col-md-12">
                            <div class="box box-default" style="height: 300px;" >
                                <div class="box-header">
                                    <h3 class="box-title">Archived Reports</h3>
                                </div>
                                <div class="box-body">
                                    <table class="table">
                                        <tr>
                                            <th>Hello</th>
                                            <th>Hello</th>
                                        </tr>
                                        <tr>
                                            <td>Yo</td>
                                            <td>Yooo</td>
                                        </tr>
                                    </table>
                                </div>
                                <!-- /.box-body -->
                            </div>
                            <!-- /.box -->
                        </div>
                    </div>
                </section>
                <!-- /.content -->
            </div>
            <!-- /.content-wrapper -->
        </div>
        <!-- ./wrapper -->
        <script src="jsImported/uploadJSP.js" type="text/javascript"></script>
    </body>
</html>
