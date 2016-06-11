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
        <title>Project TEK | Total No. of Doctors, Nurses, Midwives </title>
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
                        <small>Upload Total No. of Doctors, Nurses, Midwives here</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><i class="fa fa-files-o"></i> Database</li>
                        <li>Health</li>
                        <li class="active">Total No. of Doctors, Nurses, Midwives</li>
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
                                <button class="btn btn-flat btn-warning btn-sm"  id="addmorePOIbutton" onclick="insRow()"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Add Hospital</button>
                                <!--<button class="btn btn-flat btn-danger btn-sm" onClick=""><span class="glyphicon glyphicon-minus" aria-hidden="true"></span> Delete Hospital</button>-->
                            </div>
                            <!-- /.box-tools -->
                        </div>

                        <div class="body">
                            <div class="box-body">
                                <table class="table table-striped" id="myTable">
                                    <tr>
                                        <th width="25%">Name of Hospital</th>
                                        <th width="30%">Address</th>
                                        <th width="15%">Telephone/Fax Number</th>
                                        <th>Total No. of Doctors</th>
                                        <th>Total No. of Nurses</th>
                                        <th>Total No. of Midwives</th>
                                        <th></th>
                                    </tr>
                                    <tr>
                                        <td><input type="text" class="form-control"> </td>
                                        <td><input type="text" class="form-control"> </td>
                                        <td><input type="text" class="form-control"> </td>
                                        <td><input type="number" class="form-control" min="0"> </td>
                                        <td><input type="number" class="form-control" min="0"> </td>
                                        <td><input type="number" class="form-control" min="0"> </td>
                                        <td><button class="btn" id="delPOIbutton" value="Delete" onclick="deleteRow(this)"/>X</button></td>
                                    </tr>


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


        function insRow()
        {
            var x = document.getElementById('myTable');
            var new_row = x.rows[1].cloneNode(true);
            var len = x.rows.length;
//            new_row.cells[0].innerHTML = len;

            var inp1 = new_row.cells[1].getElementsByTagName('input')[0];
            inp1.id += len;
            inp1.value = '';
            
            var inp2 = new_row.cells[2].getElementsByTagName('input')[0];
            inp2.id += len;
            inp2.value = '';
            x.appendChild(new_row);
        }
    </script>

    <%@ include file="footer.html" %>
</html>