<%-- 
    Document   : home
    Created on : Jun 8, 2016, 10:13:59 PM
    Author     : Geraldine Atayan
--%>
<%@page import="Model.record"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../JSPImports/importsAide.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Reports Library | Household Population by Age Group and Sex</title>
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
                    <li class="active title">Household Population by Age Group and Sex</li>
                </ol>
                <%
                    String temp = (String) request.getAttribute("saveToDB");
                    if (temp.equalsIgnoreCase("success")) {
                %>
                <div class="callout callout-success">
                    <h4>Success! There are no errors.</h4>
                    <p>Successfully Saved Report.</p>
                </div>
                <%
                } else if (temp.equalsIgnoreCase("notSuccess")) {
                %>
                <div class="callout callout-danger">
                    <h4>Oops! There are errors.</h4>
                    <p>There seems to be an error while translating your data</p>
                </div>

                <%}%> 

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
                                    <form action="UploadToDatabaseDemo" method="post" enctype="multipart/form-data">
                                        <br>
                                        <label for="file" id="filename" class="custom-file-upload btn btn-block btn-default">
                                            <i class="fa fa-cloud-upload"></i> Upload File
                                        </label>
                                        <input id="file" name="file" type="file" onclick="showDiv()" />
                                        <input  name="UploadFile" type="hidden" value="AgeGroup" />
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
                        <%
                            ArrayList<record> records = (ArrayList<record>) request.getAttribute("validatedRecords");%>

                        <div class="col-md-6">
                            <div class="box box-default">
                                <div class="box-header">
                                    <h3 class="box-title">Archived Reports > Household Population by Age Group and Sex</h3>
                                </div>
                                <div class="box-body">
                                    <table id="archived" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="incomplete_info">
                                        <thead>
                                            <tr>
                                                <th>Census Year</th>
                                                <th>Report Status</th>
                                            </tr>
                                        </thead>
                                        <%for (int i = 0; i < records.size(); i++) {%>
                                        <tbody>
                                            <tr>
                                                <td><%=records.get(i).getCensusYear()%></td>
                                                <td><%=records.get(i).isApproved()%></td>
                                            </tr></tbody>
                                    </table>
                                    <% }%>
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

                </section>
            </div>   
        </div>
        <!-- ./wrapper -->
        <script src="jsImported/uploadJSP.js" type="text/javascript"></script>
    </body>
</html>
