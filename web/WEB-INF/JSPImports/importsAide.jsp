<%@page import="Model.User"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <!-- Bootstrap 3.3.6 -->
        <link rel="stylesheet" href="AdminLTE/bootstrap/css/bootstrap.min.css">
        <!--Font Awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
        <!--Ionicons -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">

        <link href='https://fonts.googleapis.com/css?family=Nunito' rel='stylesheet' type='text/css'>
        <!-- Theme style -->
        <link rel="stylesheet" href="AdminLTE/dist/css/AdminLTE.min.css">
        <!-- AdminLTE Skins. Choose a skin from the css/skins
             folder instead of downloading all of them to reduce the load. -->
        <link rel="stylesheet" href="AdminLTE/dist/css/skins/_all-skins.min.css">
        <!-- Date Picker -->
        <link rel="stylesheet" href="AdminLTE/plugins/datepicker/datepicker3.css">
        <!-- Daterange picker -->
        <link rel="stylesheet" href="AdminLTE/plugins/daterangepicker/daterangepicker-bs3.css">
        <!-- bootstrap wysihtml5 - text editor -->
        <link rel="stylesheet" href="AdminLTE/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

        <link href='https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300' rel='stylesheet' type='text/css'>

        <!--DataTables--> 
        <link rel="stylesheet" href="AdminLTE/plugins/datatables/dataTables.bootstrap.css">

        <style>
            .circles-small{
                font-size: 60%;
            }
            .title, h1{
                font-family: "Nunito", sans-serif;
            }
        </style>
    </head>

    <body class="hold-transition skin-yellow-light fixed sidebar-mini">

        <div class="wrapper">
            <header class="main-header">
                <!-- Logo -->
                <div class="logo">
                    <!-- mini logo for sidebar mini 50x50 pixels -->
                    <span class="logo-mini"><img src="index_template/Ph_seal_ncr_caloocan.png" style="width:30px"/></span>
                    <!-- logo for regular state and mobile devices -->
                    <span class="logo-lg"><b>Caloocan</b> City</span>
                </div>
                <!-- Header Navbar: style can be found in header.less -->
                <nav class="navbar navbar-static-top">

                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">
                            <!-- Notifications: style can be found in dropdown.less -->
                            <li class="dropdown notifications-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-bell-o"></i>
                                    <span class="label label-danger"></span></a>
                                <ul class="dropdown-menu">
                                    <li class="header">You have 0 notifications</li>
                                    <li>
                                        <!-- inner menu: contains the actual data -->
                                        <ul class="menu">
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-users text-aqua"></i> 5 new members joined today
                                                </a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="footer"><a href="#">View all</a></li>
                                </ul>
                            </li>
                            <!-- User Account: style can be found in dropdown.less -->
                            <% User user = (User) session.getAttribute("user");%>
                            <li class="dropdown user user-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                    <img src="AdminLTE/dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
                                    <b><%= user.getFirstName()%> <%= user.getLastName()%></b>
                                </a>

                                <ul class="dropdown-menu">
                                    <!-- User image -->
                                    <li class="user-header">
                                        <img src="AdminLTE/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">

                                        <p>
                                            <%= user.getFirstName()%> <%= user.getLastName()%><br/>
                                            <small><%= user.getPosition()%></small>
                                        </p>
                                    </li>
                                </ul>
                            </li>
                            <!-- Control Sidebar Toggle Button -->
                            <li>
                                <a href="#"  class="dropdown-toggle" data-toggle="dropdown"><i class="glyphicon glyphicon-cog"></i></a>
                                <ul class="dropdown-menu" style="padding: 5px;">
                                    <li><a href="">My Profile</a></li>
                                    <li><a href="logout">Sign out</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </nav>
            </header>
            <!-- Left side column. contains the logo and sidebar -->
            <aside class="main-sidebar">
                <!-- sidebar: style can be found in sidebar.less -->
                <section class="sidebar">
                    <!-- sidebar menu: : style can be found in sidebar.less -->
                    <ul class="sidebar-menu">
                        <li class="header">MAIN NAVIGATION</li>
                        <li>
                            <a href="/ProjectTek/ServletAccess?redirect=home">
                                <i class="fa fa-dashboard"></i><span>Dashboard</span>
                            </a>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-files-o"></i>
                                <span>Reports Library</span>
                            </a>
                            <ul class="treeview-menu menu-open" style="display:block; background-color: #f9fafc">
                                <li class="treeview"><a href="#" style="color: #cc5200"><span class="fa fa-mortar-board"></span> Education<span class="fa fa-angle-left" style="float: right; "></span></a>
                                    <ul class="treeview-menu">
                                        <li class="treeview">
                                            <a href="#">Public<span class="fa fa-angle-left" style="float: right; "></span></a>
                                            <ul class="treeview-menu">
                                                <li><a href="/ProjectTek/ServletAccess?redirect=eKinderPublic">Kindergarten Data in<br/>Public Elementary School</a></li>
                                                <li><a href="/ProjectTek/ServletAccess?redirect=ePublicElementary">Enrollment in Public<br/>Elementary Schools</a></li>
                                                <li><a href="/ProjectTek/ServletAccess?redirect=ePublicSecondary">Enrollment in Public<br/>Secondary Schools</a></li> 
                                                <li><a href="/ProjectTek/ServletAccess?redirect=eTotalPublicSecondary">Total Enrollment in Public<br/>Secondary Schools</a></li>
                                                <li><a href="/ProjectTek/ServletAccess?redirect=eGovSecondaryTeacherDeployment">Government Secondary<br/>Schools - Teacher<br/>Deployment</a></li>
                                                <li><a href="/ProjectTek/ServletAccess?redirect=eClassroomFurnitures">Classroom Furniture for<br/>Government Secondary<br/>Schools</a></li>
                                                <li><a href="/ProjectTek/ServletAccess?redirect=eInstructionalElem">Instructional Rooms for<br/>Government Elementary<br/>Schools</a></li>
                                                <li><a href="/ProjectTek/ServletAccess?redirect=eInstructionalSecondary">Instructional Rooms for<br/>Government Secondary<br/>Schools</a></li>
                                            </ul>
                                        </li>

                                        <li class="treeview"><a href="#">Private<span class="fa fa-angle-left" style="float: right; "></span></a>
                                            <ul class="treeview-menu">
                                                <li>
                                                    <a href="/ProjectTek/ServletAccess?redirect=ePrivateElementary">Enrollment in Private<br/>Elementary Schools</a></li>
                                                <li>
                                                    <a href="/ProjectTek/ServletAccess?redirect=ePrivateKinder">Enrollment in Private<br/>Kinder Schools</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li class="treeview"><a href="#" style="color: #cc5200"><span class="fa fa-users"></span> Demographics<span class="fa fa-angle-left" style="float: right;"></span></a>
                                    <ul class="treeview-menu">
                                        <li><a href="/ProjectTek/RetrieveDataDemoServlet?redirect=byAgeGroupSex">Household Population by<br/>Age Group and Sex</a></li>
                                        <li><a href="/ProjectTek/ServletAccess?redirect=highestCompleted">Household Population 5<br/>years old and over by Highest<br/>Grade/Year Completed,<br/>age group and sex</a></li>
                                        <li><a href="/ProjectTek/ServletAccess?redirect=maritalStatus">Household Population 10<br/>years old and over by Age<br/>Group, Sex, and<br/> Marital Status </a></li>
                                    </ul>
                                </li>
                                <li class="treeview"><a href="#" style="color: #cc5200"><span class="fa fa-heartbeat"></span> Health<span class="fa fa-angle-left" style="float: right;"></span></a>
                                    <ul class="treeview-menu">
                                        <li><a href="/ProjectTek/ServletAccess?redirect=liveBirths">Live Birth Per Day</a></li>
                                        <li><a href="/ProjectTek/ServletAccess?redirect=mortality">Mortality Report</a></li>
                                        <li><a href="/ProjectTek/ServletAccess?redirect=morbidity">Morbidity Report</a></li>
                                        <li><a href="/ProjectTek/ServletAccess?redirect=percentageDist">Percentage Distribution of<br/>Elementary School
                                                Children<br/>in Each District in the<br/>Division of
                                                Caloocan by<br/>Nutritional Status/By Gender</a></li>
                                        <li><a href="/ProjectTek/ServletAccess?redirect=numOfDocsNursesMidwives">Total Number of Doctors,<br/>Nurses, Midwives</a></li>
                                        <li><a href="/ProjectTek/ServletAccess?redirect=hListOfPrivateGovHosp">List of Private and<br/>Government Hospitals</a></li>
                                    </ul>
                                </li>          
                            </ul>
                        </li>
                </section>
                <!-- /.sidebar -->
            </aside>
        </div>


        <!-- jQuery 2.2.0 -->
        <script src="AdminLTE/plugins/jQuery/jQuery-2.2.0.min.js"></script>
        <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
        <script>
            $.widget.bridge('uibutton', $.ui.button);
        </script>
        <!-- Bootstrap 3.3.6 -->
        <script src="AdminLTE/bootstrap/js/bootstrap.min.js"></script>
        <!-- daterangepicker -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script>
        <script src="AdminLTE/plugins/daterangepicker/daterangepicker.js"></script>
        <!-- datepicker -->
        <script src="AdminLTE/plugins/datepicker/bootstrap-datepicker.js"></script>
        <!-- Bootstrap WYSIHTML5 -->
        <script src="AdminLTE/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
        <!-- Slimscroll -->
        <script src="AdminLTE/plugins/slimScroll/jquery.slimscroll.min.js"></script>
        <!-- FastClick -->
        <script src="AdminLTE/plugins/fastclick/fastclick.js"></script>
        <!-- AdminLTE App -->
        <script src="AdminLTE/dist/js/app.min.js"></script>
        <!--DataTables-->
        <script src="AdminLTE/plugins/datatables/jquery.dataTables.min.js"></script>
        <script src="AdminLTE/plugins/datatables/dataTables.bootstrap.min.js"></script>

    </body>
</html>
