<%-- 
    Document   : fiveYearsOldAndOver
    Created on : Jun 18, 2016, 1:48:30 PM
    Author     : Gian
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../JSPImports/importsAide.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Reports Library | Household Population 5 years old & over by Highest Grade/Year Completed, Age Group and Sex</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
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
                    <li class="title">Demographics</li>
                    <li class="active title">Household Population 5 years old & over by Highest Grade/Year Completed, Age Group and Sex</li>
                </ol>

                <!-- Main content -->
                <section class="content">
                    <div class="row">
                        <div class="col-md-6">

                            <div class="box box-success" style="padding-bottom: 5%;">
                                <div class="box-header">
                                    <h3 class="box-title">Upload A New Report For The Year 
                                        <input type="text" name="year" class="year" id="year" readonly /></h3>
                                </div>
                                <div class="box-body">
                                    <form action="UploadHighestAttainment" method="post" enctype="multipart/form-data">
                                        <label for="file" id="filename" class="custom-file-upload btn btn-block btn-default">
                                            <i class="fa fa-cloud-upload"></i> Upload File
                                        </label>
                                        <input id="file" name="file" type="file" onclick="showDiv()" />
                                        <input  name="UploadFile" type="hidden" value="HHPop.5yrs." />
                                        <input class="btn btn-flat btn-success button-submit" id="submit" type="submit" value="Submit" style="display:none"/>
                                    </form>                
                                    <!--/form>-->
                                </div>
                                <!-- /.box-body -->
                            </div>
                            <!-- /.box -->
                        </div>
                        <!--End of LEFT COLUMN-->

                        <div class="col-md-6">
                            <div class="box box-danger">
                                <div class="box-header">
                                    <h3 class="box-title">Incomplete Reports</h3>
                                </div>
                                <div class="box-body">
                                    <table id="incomplete" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="incomplete_info">
                                        <thead>
                                            <tr>
                                                <th>Census Year</th>
                                                <th>Missing Fields</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>2010</td>
                                                <td>3</td>
                                            </tr></tbody>
                                    </table>
                                </div>
                                <!-- /.box-body -->
                            </div>
                            <!-- /.box -->
                        </div>

                        <!--End of RIGHT Box-->

                        <div class="col-md-6">
                            <div class="box box-default">
                                <div class="box-header">
                                    <h3 class="box-title">Archived Reports > Household Population 5 years old & over by Highest Grade/Year Completed, Age Group and Sex</h3>
                                </div>
                                <div class="box-body">
                                    <table id="archived" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="incomplete_info">
                                        <thead>
                                            <tr>
                                                <th>Census Year</th>
                                                <th>Report Status</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>2007</td>
                                                <td>Saved</td>
                                            </tr><tr>
                                                <td>2008</td>
                                                <td>Approved</td>
                                            </tr></tbody>
                                    </table>
                                </div>
                                <!-- /.box-body -->
                            </div>
                            <!-- /.box -->
                        </div>
                        <!--END OF ARCHIVED-->

                        <div class="col-md-6">
                            <div class="box box-default">
                                <div class="box-header">
                                    <h3 class="box-title">Saved Reports</h3>
                                </div>
                                <div class="box-body">
                                    <table id="saved" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="incomplete_info">
                                        <thead>
                                            <tr>
                                                <th>Rendering engine</th>
                                                <th>Browser</th>
                                                <th>Platform(s)</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Moo</td>
                                                <td>Firefox 1.0</td>
                                                <td>Win 98+ / OSX.2+</td>
                                            </tr><tr>
                                                <td>Sample 2</td>
                                                <td>Firefox 1.5</td>
                                                <td>Win 98+ / OSX.2+</td>
                                            </tr><tr>
                                                <td>Gecko</td>
                                                <td>Firefox 2.0</td>
                                                <td>Win 98+ / OSX.2+</td>
                                            </tr></tbody>
                                    </table>
                                </div>
                                <!-- /.box-body -->
                            </div>
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
