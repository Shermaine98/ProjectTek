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
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="AdminLTE/dist/css/AdminLTE.min.css">
        <!-- AdminLTE Skins. Choose a skin from the css/skins
             folder instead of downloading all of them to reduce the load. -->
        <link rel="stylesheet" href="AdminLTE/dist/css/skins/_all-skins.min.css">
        <!-- iCheck -->
        <link rel="stylesheet" href="AdminLTE/plugins/iCheck/flat/blue.css">
        <!-- Morris chart -->
        <link rel="stylesheet" href="AdminLTE/plugins/morris/morris.css">
        <!-- jvectormap -->
        <link rel="stylesheet" href="AdminLTE/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
        <!-- Date Picker -->
        <link rel="stylesheet" href="AdminLTE/plugins/datepicker/datepicker3.css">
        <!-- Daterange picker -->
        <link rel="stylesheet" href="AdminLTE/plugins/daterangepicker/daterangepicker-bs3.css">
        <!-- bootstrap wysihtml5 - text editor -->
        <link rel="stylesheet" href="AdminLTE/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

        <style>
            .circles-small{
                font-size: 60%;
            }
        </style>

    </head>



    <body>

        <!-- jQuery 2.2.0 -->
        <script src="AdminLTE/plugins/jQuery/jQuery-2.2.0.min.js"></script>
        <!-- jQuery UI 1.11.4 -->
        <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
        <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
        <script>
            $.widget.bridge('uibutton', $.ui.button);
        </script>
        <!-- Bootstrap 3.3.6 -->
        <script src="AdminLTE/bootstrap/js/bootstrap.min.js"></script>
        <!-- Morris.js charts -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
        <script src="AdminLTE/plugins/morris/morris.min.js"></script>
        <!-- Sparkline -->
        <script src="AdminLTE/plugins/sparkline/jquery.sparkline.min.js"></script>
        <!-- jvectormap -->
        <script src="AdminLTE/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
        <script src="AdminLTE/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
        <!-- jQuery Knob Chart -->
        <script src="AdminLTE/plugins/knob/jquery.knob.js"></script>
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
        <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
        <script src="AdminLTE/dist/js/pages/dashboard.js"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="AdminLTE/dist/js/demo.js"></script>

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
                                    <span class="label label-danger">10</span></a>
                                <ul class="dropdown-menu">
                                    <li class="header">You have 10 notifications</li>
                                    <li>
                                        <!-- inner menu: contains the actual data -->
                                        <ul class="menu">
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-users text-aqua"></i> 5 new members joined today
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-warning text-yellow"></i> Very long description here that may not fit into the
                                                    page and may cause design problems
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-users text-red"></i> 5 new members joined
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-shopping-cart text-green"></i> 25 sales made
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-user text-red"></i> You changed your username
                                                </a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="footer"><a href="#">View all</a></li>
                                </ul>
                            </li>
                            <!-- User Account: style can be found in dropdown.less -->
                                        <% User user = (User) session.getAttribute("user"); %>
                            <li class="user user-menu">
                                <a href="#" >
                                    <span class="hidden-xs">
                                        <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                                        <b><%= user.getFirstName() %> <%= user.getLastName() %></b> - <%= user.getPosition() %>
                                    </span>
                                </a>
                            </li>
                            <!-- Control Sidebar Toggle Button -->
                            <li>
                                <a href="#"  class="dropdown-toggle" data-toggle="dropdown"><i class="glyphicon glyphicon-cog"></i></a>
                                <ul class="dropdown-menu">
                                    <li>My Profile</li>
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
                        <li class="active header">MAIN NAVIGATION</li>
                        <li>
                            <a href="/ProjectTek/ServletAccess?redirect=home">
                                <i class="fa fa-dashboard"></i><span>Dashboard</span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa fa-files-o"></i>
                                <span>Reports Library</span>
                            </a>
                            <ul>
                                <li style="font-size: 110%; padding-bottom: 8px; color: #cc5200"><a href="#" style="color: #cc5200">Education<span class="fa fa-angle-right" style="float: right; margin-right: 5%; "></span></a>
                                    <ul class="treeview-menu">
                                        <li style="margin-left: -20px;"><a href="/ProjectTek/ServletAccess?redirect=eKinderPublic"><i class="fa fa-circle-o circles-small"></i>Kindergarten Data in<br/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   Public Elementary School</a></li>
                                        <li style="margin-left: -20px;"><a href="/ProjectTek/ServletAccess?redirect=<!-NAME-->"><i class="fa fa-circle-o circles-small"></i>Enrollment in Private<br/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Elementary Schools</a></li>
                                        <li style="margin-left: -20px;"><a href="/ProjectTek/ServletAccess?redirect=<!-NAME-->"><i class="fa fa-circle-o circles-small"></i>Enrollment in Private<br/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   Kinder Schools</a></li>
                                        <li style="margin-left: -20px;"><a href="/ProjectTek/ServletAccess?redirect=<!-NAME-->"><i class="fa fa-circle-o circles-small"></i>Enrollment in Public<br/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Elementary Schools</a></li>
                                        <li style="margin-left: -20px;"><a href="/ProjectTek/ServletAccess?redirect=<!-NAME-->"><i class="fa fa-circle-o circles-small"></i>Enrollment in Public<br/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Secondary Schools (?)</a></li>
                                        <li style="margin-left: -20px;"><a href="/ProjectTek/ServletAccess?redirect=<!-NAME-->"><i class="fa fa-circle-o circles-small"></i>Total Enrollment in Public<br/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Secondary Schools</a></li>
                                        <li style="margin-left: -20px;"><a href="/ProjectTek/ServletAccess?redirect=<!-NAME-->"><i class="fa fa-circle-o circles-small"></i>Government Secondary<br/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Schools - Teacher<br/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Deployment</a></li>
                                        <li style="margin-left: -20px;"><a href="/ProjectTek/ServletAccess?redirect=<!-NAME-->"><i class="fa fa-circle-o circles-small"></i>Classroom Furnitures for<br/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Government Secondary<br/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Schools</a></li>
                                        <li style="margin-left: -20px;"><a href="/ProjectTek/ServletAccess?redirect=<!-NAME-->"><i class="fa fa-circle-o circles-small"></i>Instructional Rooms for<br/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Government Elementary<br/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Schools</a></li>
                                        <li style="margin-left: -20px;"><a href="/ProjectTek/ServletAccess?redirect=<!-NAME-->"><i class="fa fa-circle-o circles-small"></i>Instructional Rooms for<br/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Government Secondary<br/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Schools</a></li>
                                    </ul>
                                </li>
                                <li style="font-size: 110%; padding-bottom: 8px; color: #cc5200"><a href="#" style="color: #cc5200">Demographics<span class="fa fa-angle-right" style="float: right; margin-right: 5%;"></span></a>
                                    <ul class="treeview-menu">
                                        <li style="margin-left: -20px;"><a href="/ProjectTek/ServletAccess?redirect=byAgeGroupSex"><i class="fa fa-circle-o circles-small"></i>Household Population by<br/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Age Group and Sex</a></li>
                                        <li style="margin-left: -20px;"><a href="/ProjectTek/ServletAccess?redirect=highestCompleted"><i class="fa fa-circle-o circles-small"></i>Household Population 5<br/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; years old and over by Highest<br/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Grade/Year Completed,<br/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; age group and sex</a></li>
                                        <li style="margin-left: -20px;"><a href="/ProjectTek/ServletAccess?redirect=maritalStatus"><i class="fa fa-circle-o circles-small"></i>Household Population 10<br/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; years old and over by Age<br/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Group, Sex, and<br/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Marital Status </a></li>
                                    </ul>
                                </li>
                                <li style="font-size: 110%; padding-bottom: 8px; color: #cc5200"><a href="#" style="color: #cc5200">Health<span class="fa fa-angle-right" style="float: right; margin-right: 5%;"></span></a>
                                    <ul class="treeview-menu">
                                        <li style="margin-left: -20px;"><a href="/ProjectTek/ServletAccess?redirect=liveBirths"><i class="fa fa-circle-o circles-small"></i>Live Birth Per Day</a></li>
                                        <li style="margin-left: -20px;"><a href="/ProjectTek/ServletAccess?redirect=mortality"><i class="fa fa-circle-o circles-small"></i>Mortality Report</a></li>
                                        <li style="margin-left: -20px;"><a href="/ProjectTek/ServletAccess?redirect=morbidity"><i class="fa fa-circle-o circles-small"></i>Morbidity Report</a></li>
                                        <li style="margin-left: -20px;"><a href="/ProjectTek/ServletAccess?redirect=<?>"><i class="fa fa-circle-o circles-small"></i>Percentage Distribution of<br/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Elementary School
                                                Children<br/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; in Each District in the<br/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Division of
                                                Caloocan by<br/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nutritional Status/By Gender</a></li>
                                        <li style="margin-left: -20px;"><a href="/ProjectTek/ServletAccess?redirect=numOfDocsNursesMidwives"><i class="fa fa-circle-o circles-small"></i>Total Number of Doctors,<br/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nurses, Midwives</a></li>
                                        <li style="margin-left: -20px;"><a href="/ProjectTek/ServletAccess?redirect=<--?-->"><i class="fa fa-circle-o circles-small"></i>List of Private and<br/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Government Hospitals</a></li>
                                    </ul>
                                </li>          
                            </ul>
                        </li>
                </section>
                <!-- /.sidebar -->
            </aside>
        </div>

    </body>
</html>
