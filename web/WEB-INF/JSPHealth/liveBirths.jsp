<%-- 
    Document   : liveBirths
    Created on : Jun 11, 2016, 10:59:00 PM
    Author     : Dinding
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../JSPImports/importsAide.html" %>
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
                    <h1>
                        Upload to Database
                        <small>Upload Live Births here</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><i class="fa fa-files-o"></i> Database</li>
                        <li>Health</li>
                        <li class="active">Live Births</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
                    <br>
                    <form action="UploadServlet" enctype="multipart/form-data" method="post">
                        <input name="file" type="file" />
                        <input name="submit" type="submit" value="Submit" />
                    </form>
                    <br><br>
                    <!-- table -->
                    <div class="box box-danger">
                        <div class="box-header with-border">
                            <h2 class="box-title">Input manually the forms</h2>
                            <div class="box-tools pull-right">
                                <button class="btn btn-flat btn-warning btn-sm"  id="add_row"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Add Row</button>
                                <!--<button class="btn btn-flat btn-danger btn-sm" onClick=""><span class="glyphicon glyphicon-minus" aria-hidden="true"></span> Delete Day</button>-->
                            </div>
                            <!-- /.box-tools -->
                        </div>

                        <div class="body">
                            <div class="box-body">
                                <table class="table table-striped" id="myTable">
                                    <tr>
                                        <th rowspan="3">Age of Mother</th>
                                        <th rowspan="3">Male</th>
                                        <th rowspan="3">Female</th>
                                        <th rowspan="3">Birth Weight</th>
                                        <th colspan="5">Place of Delivery</th>
                                        <th></th>
                                    </tr>
                                    <tr>
                                        <th colspan="2">House</th>
                                        <th colspan="2">Hospital/Clinic</th>
                                        <th></th>
                                    </tr>
                                    <tr>
                                        <th>Trad. Mid.</th>
                                        <th>Midwife</th>
                                        <th>Doctor</th>
                                        <th>Nurse</th>
                                        <th>Midwife</th>
                                        <th></th>
                                    </tr>
                                    <tr>
                                        <td><input type="number" class="form-control" value="0" min="0"> </td>
                                        <td><input type="number" class="form-control" value="0" min="0"> </td>
                                        <td><input type="number" class="form-control" value="0" min="0"> </td>
                                        <td><input type="text" class="form-control" placeholder="in grams"> </td>
                                        <td><input type="number" class="form-control" value="0" min="0"> </td>
                                        <td><input type="number" class="form-control" value="0" min="0"> </td>
                                        <td><input type="number" class="form-control" value="0" min="0"> </td>
                                        <td><input type="number" class="form-control" value="0" min="0"> </td>
                                        <td><input type="number" class="form-control" value="0" min="0"> </td>
                                        <td><button class="btn" id="delPOIbutton" onclick="deleteRow(this)"/>X</button></td>
                                    </tr>
                                    <tr id="addr1"></tr>

                                </table>
                            </div>
                        </div>
                        <br>
                        <center><button type="submit" class="btn btn-flat btn-success" style="width:20%">Submit</button></center>
                        <br>
                    </div>
                </section>
                <!-- /.content -->
            </div>
            <!-- /.content-wrapper -->
        </div>
        <!-- ./wrapper -->
    </body>

    <script>
        function deleteRow(row)
        {
            var i = row.parentNode.parentNode.rowIndex;
            document.getElementById('myTable').deleteRow(i);
        }

        var i = 1;
        $("#add_row").click(function () {
            $('#addr' + i).html("\
    <td><input type='number' class='form-control' value='0' min='0'> </td>\
                                        <td><input type='number' class='form-control' value='0' min='0'> </td>\
                                        <td><input type='number' class='form-control' value='0' min='0'> </td>\
                                        <td><input type='text' class='form-control' placeholder='in grams'> </td>\
                                        <td><input type='number' class='form-control' value='0' min='0'> </td>\
                                        <td><input type='number' class='form-control' value='0' min='0'> </td>\
                                        <td><input type='number' class='form-control' value='0' min='0'> </td>\
                                        <td><input type='number' class='form-control' value='0' min='0'> </td>\
                                        <td><input type='number' class='form-control' value='0' min='0'> </td>\
                                        <td><button class='btn' id='delPOIbutton' onclick='deleteRow(this)'>X</button></td>");
            $('#myTable').append('<tr id="addr' + (i + 1) + '"></tr>');

            i++;
        });
    </script>

    <%@ include file="../JSPImports/footer.html" %>
</html>