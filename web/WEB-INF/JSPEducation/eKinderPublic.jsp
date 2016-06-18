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
        <title>Reports Library - Kindergarten Data in Public Elementary School</title>
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
                        <label for="file1" id="filename" class="custom-file-upload btn btn-block btn-default">
                            <i class="fa fa-cloud-upload"></i> Upload File
                        </label>
                        <input id="file1" name="file1" type="file" onclick="showDiv()" />
                        <input class="btn btn-flat btn-success button-submit" id="submit" type="submit" value="Submit" style="display:none"/>
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

    <script>
        document.getElementById('file1').onchange = uploadOnChange;

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
