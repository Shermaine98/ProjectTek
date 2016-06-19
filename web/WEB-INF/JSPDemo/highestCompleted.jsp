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
        <script src="js/UploadFile.js" type="text/javascript"></script> 
        <style>
            input[type="file"] {
                display: none;
            }
            .custom-file-upload {
                padding: 6px 12px;
                width: 40%;
                height: 45px;
                line-height: 45px;
                margin:0px auto; 
                display:block;
                font-size: 120%;
                text-align: center;
                padding:0 5px;
            }
            .button-submit{
                width: 13%;
                margin:5% auto; 
                display:block;
            }
        </style>        
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
                                    <h3 class="box-title">Upload A New Report</h3>
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
    </body>
    <script>
        document.getElementById('file').onchange = uploadOnChange;

        function uploadOnChange() {
            var filename = this.value;
            var lastIndex = filename.lastIndexOf("\\");
            if (lastIndex >= 0) {
                filename = filename.substring(lastIndex + 1);
            }

            if (filename != "") {
                document.getElementById('filename').innerHTML = filename;
                document.getElementById('filename').style.fontStyle = 'italic';
                document.getElementById('filename').style.color = '#cc5200';
                document.getElementById('submit').style.display = "block";
            } else {
                document.getElementById('filename').style.fontStyle = 'normal';
                document.getElementById('filename').style.color = '#333333';
                document.getElementById('filename').innerHTML = '<i class="fa fa-cloud-upload"></i> Upload File';
                document.getElementById('submit').style.display = "none";
            }
        }
    </script>
    <%@ include file="../JSPImports/footer.html" %>
</html>
