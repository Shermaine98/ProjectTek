<!DOCTYPE html>
<%@ include file="imports.html" %>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Caloocan City Hall | Upload to Database</title>

        <!-- FILE UPLOAD -->
        <link href="css/jquery.filer.css" type="text/css" rel="stylesheet" />
        <link href="css/themes/jquery.filer-dragdropbox-theme.css" type="text/css" rel="stylesheet" />

        <!--jQuery-->
        <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
        <script type="text/javascript" src="js/jquery.filer.min.js"></script>
        <script type="text/javascript" src="js/custom.js"></script>

    </head>
    <!-- ADD THE CLASS fixed TO GET A FIXED HEADER AND SIDEBAR LAYOUT -->
    <!-- the fixed layout is not compatible with sidebar-mini -->
    <body class="hold-transition skin-yellow-light fixed hover sidebar-mini">
        <!-- Site wrapper -->
        <div class="wrapper">

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        Upload to Database
                        <small>Upload Household Population by Age Group and Sex here</small>
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
                    <form action="UploadServlet" enctype="multipart/form-data" method="post">;
                        <input name="file" type="file" />;
                        <input name="submit" type="submit" value="Submit" />;
                    </form>
                </section>

                <!-- /.content -->
            </div>
            <!-- /.content-wrapper -->

        </div>
        <!-- ./wrapper -->
    </body>
</html>
