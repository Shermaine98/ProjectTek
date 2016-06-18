<%-- 
    Document   : fiveYearsOldAndOver
    Created on : Jun 18, 2016, 1:48:30 PM
    Author     : Gian
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--IMPORTING HTML I../JSPImports/importsAide.htmlMPORTS (bootstrap + scripts)-->
<%@ include file="../JSPImports/importsAide.html" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Project TEK | Dashboard </title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <script src="js/UploadFile.js" type="text/javascript"></script>         
    </head>
    <body class="hold-transition skin-yellow-light fixed sidebar-mini">
        <!--MODAL-->
        
        <div id="ShowSheets" class="modal fade" role="dialog">
          <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Upload Excel File</h4>
              </div>
                <div class="modal-body">
                    <form action="UploadMaritalStatus" method="post" enctype="multipart/form-data">
                        <input id="file1" name="file1" type="file" />

                        <div class="paragraph">
                            <b>Choose the Age by Group Sex Sheet</b> <br />
                            <div id="table1">
                            <!--radio button-->
                            </div>
                            <br>
                            <input class="btn btn-flat btn-success" type="submit" value="Submit"/>
                            <input  name="UploadFile" type="hidden" value="MaritalStatus" />
                            <span style=color:red id="radio_error"></span>
                        </div>
                    </form>
                </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
              </div>
            </div>
          </div>
        </div>
        
        <!--MODAL END HERE-->
        <div class="wrapper">
        <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        Upload Excel File
                        <small>Household Population 10 years old & over by Age group, Sex and Marital Status</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><i class="fa fa-files-o"></i> Database</li>
                        <li>Demographics</li>
                        <li class="active">Household Population by Age Group and Sex</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
                    <br>
                    <!--<form id="UploadExcel" >
                        <input id="file" name="file" type="file" />-->
                        <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#ShowSheets">
                            <i class="fa fa-fw fa-file-excel-o"></i> Import Excel</button>                    
                        <!--/form>-->
                    <br><br>
                </section>
                <!-- /.content -->
            </div>
            <!-- /.content-wrapper -->
        </div>
        <!-- ./wrapper -->
</body>
  <%@ include file="../JSPImports/footer.html" %>
</html>
