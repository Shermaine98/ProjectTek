<%-- 
    Document   : index
    Created on : Jun 8, 2016, 10:10:21 PM
    Author     : Geraldine Atayan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Caloocan City Hall Planning Division</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport" />
        <meta content="" name="description" />
        <meta content="" name="author" />
        <!-- BEGIN GLOBAL MANDATORY STYLES -->
        <link href="index_template/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="index_template/plugins/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
        <link href="index_template/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="index_template/css/style-metro.css" rel="stylesheet" type="text/css"/>
        <link href="index_template/css/style.css" rel="stylesheet" type="text/css"/>
        <link href="index_template/css/style-responsive.css" rel="stylesheet" type="text/css"/>
        <link href="index_template/css/themes/default.css" rel="stylesheet" type="text/css" id="style_color"/>
        <link href="index_template/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" type="text/css" href="index_template/plugins/select2/select2_metro.css" />
        <!-- END GLOBAL MANDATORY STYLES -->
        <!-- BEGIN PAGE LEVEL STYLES -->
        <link href="index_template/css/pages/login-soft.css" rel="stylesheet" type="text/css"/>
        <!-- END PAGE LEVEL STYLES -->
        <link rel="shortcut icon" href="favicon.ico" />
    </head>
    <!-- END HEAD -->
    <!-- BEGIN BODY -->
    <body class="login">
        <!-- BEGIN LOGO -->
        <div class="logo">
            <img src="index_template/img/logo/Ph_seal_ncr_caloocan.png" alt="Caloocan City Logo" style="width:40%;height:40%;">
        </div>
        <!-- END LOGO -->
        <!-- BEGIN LOGIN -->
        <div class="content">
            <!-- BEGIN LOGIN FORM -->
            <form class="form-vertical login-form form-signin" role="form" action="AccountServlet" method="post">
                <h3 style='margin-bottom: -5px ; margin-left: -5px; margin-right: -5px;'>City Planning Department</h3>
                <h5 style='color:white;'>Let's get planning!</h5>
                <div class="alert alert-error hide">
                    <button class="close" data-dismiss="alert"></button>
                    <span>Enter any username and password.</span>
                </div>
                <div class="control-group">
                    <!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
                    <label class="control-label visible-ie8 visible-ie9">Username</label>
                    <div class="controls">
                        <div class="input-icon left">
                            <i class="icon-user"></i>
                            <input class="m-wrap placeholder-no-fix" type="text" autocomplete="off" placeholder="Username" name="username"/>
                        </div>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label visible-ie8 visible-ie9">Password</label>
                    <div class="controls">
                        <div class="input-icon left">
                            <i class="icon-lock"></i>
                            <input class="m-wrap placeholder-no-fix" type="password" autocomplete="off" placeholder="Password" name="password"/>
                        </div>
                    </div>
                </div>
                <button type="submit" class="btn blue" style="width:100%">
                    <!--LOGIN BUTTON-->
                        Login <i class="m-icon-swapright m-icon-white"></i>
                </button>  
                <div class="create-account">
                    <p>
                        Don't have an account yet ?&nbsp; 
                        <a href="javascript:;" id="register-btn" >Create an account</a>
                    </p>
                </div>
            </form>
            <!-- END LOGIN FORM -->        
            <!-- BEGIN REGISTRATION FORM -->
            <form class="form-vertical register-form" action="RegisterServlet" method="post">
                <h3 >Sign Up</h3>
                <p>Enter your personal details below:</p>
                <div class="control-group">
                    <label class="control-label visible-ie8 visible-ie9">First Name</label>
                    <div class="controls">
                        <div class="input-icon left">
                            <i class="icon-font"></i>
                            <input class="m-wrap placeholder-no-fix" type="text" placeholder="First Name" name="firstName"/>
                        </div>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label visible-ie8 visible-ie9">Last Name</label>
                    <div class="controls">
                        <div class="input-icon left">
                            <i class="icon-font"></i>
                            <input class="m-wrap placeholder-no-fix" type="text" placeholder="Last Name" name="lastName"/>
                        </div>
                    </div>
                </div>
                <div class="control-group">
                    <div class="row-fluid">
                        <label class="control-label visible-ie8 visible-ie9">Gender</label>
                        <div class="controls">
                            <select name="gender" style='width:100%; height:35px; margin-bottom:-5px'>
                                <option value="" disabled selected>Select Gender</option>
                                <option value="Male">Male</option>
                                <option value="Female">Female</option>
                            </select>
                        </div>
                    </div>
                </div>
                <p>Input birthdate:</p>
                <div class="control-group">
                    <label class="control-label visible-ie8 visible-ie9">Birthdate</label>
                    <div class="controls">
                        <div class="input-icon left">
                            <i class="icon-calendar"></i>
                            <input class="m-wrap placeholder-no-fix" id="Birthdate" type="date" name="birthdate" onfocus="(this.type = 'date')" onblur="(this.type = 'text')" />
                        </div>
                    </div>
                </div>
                <p>Input date of employment:</p>
                <div class="control-group">
                    <label class="control-label visible-ie8 visible-ie9">Date of Employment</label>
                    <div class="controls">
                        <div class="input-icon left">
                            <i class="icon-calendar"></i>
                            <input class="m-wrap placeholder-no-fix" type="date" id="employmentDate" name="employmentDate" onfocus="(this.type = 'date')" onblur="(this.type = 'text')" />
                        </div>
                    </div>
                </div>
                <div class="control-group">
                    <div class="row-fluid">
                        <label class="control-label visible-ie8 visible-ie9">Division</label>
                        <div class="controls">
                            <select onchange="yesnoCheck(this)" name="division" style='width:100%; height:35px; margin-bottom:-5px'>
                                <option value="" disabled selected>Select Division</option>
                                <option value="Admin">Administrative Division</option>
                                <option value="Physical">Physical Planning Division</option>
                                <option value="Social">Social Planning Division</option>
                                <option value="Others">Others</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="control-group" id="ifYes" style="display:none;">
                    <div class="row-fluid">
                        <div class="controls" style='width:95%;' >
                            <p>Input Reason for Data Access</p>
                            <textarea rows="4" name="Reason" style='width:100%;'></textarea>

                            <p>Until when do you need access?</p>
                            <div class="input-icon left">
                                <i class="icon-calendar"></i>
                                <input class="m-wrap placeholder-no-fix" style='width:90%;' type="date" id='DateValid' name="DateValid" onfocus="(this.type = 'date')" onblur="(this.type = 'text')" />
                            </div>
                        </div>
                    </div>
                </div>
                <p>Enter your account details below:</p>
                <div class="control-group">
                    <!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
                    <label class="control-label visible-ie8 visible-ie9">Email</label>
                    <div class="controls">
                        <div class="input-icon left">
                            <i class="icon-envelope"></i>
                            <input class="m-wrap placeholder-no-fix" type="text" placeholder="Email" name="email"/>
                        </div>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label visible-ie8 visible-ie9">Username</label>
                    <div class="controls">
                        <div class="input-icon left">
                            <i class="icon-user"></i>
                            <input class="m-wrap placeholder-no-fix" type="text" autocomplete="off" placeholder="Username" name="username"/>
                        </div>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label visible-ie8 visible-ie9">Password</label>
                    <div class="controls">
                        <div class="input-icon left">
                            <i class="icon-lock"></i>
                            <input class="m-wrap placeholder-no-fix" type="password" autocomplete="off" id="register_password" placeholder="Password" name="password"/>
                        </div>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label visible-ie8 visible-ie9">Re-type Your Password</label>
                    <div class="controls">
                        <div class="input-icon left">
                            <i class="icon-ok"></i>
                            <input class="m-wrap placeholder-no-fix" type="password" autocomplete="off" placeholder="Re-type Your Password" name="rpassword"/>
                        </div>
                    </div>
                </div>
                <div class="form-actions">
                    <button id="register-back-btn" type="button" class="btn">
                        <i class="m-icon-swapleft"></i>  Back
                    </button>
                    <button type="submit" id="register-submit-btn" class="btn green pull-right">
                        Sign Up <i class="m-icon-swapright m-icon-white"></i>
                    </button>            
                </div>
            </form>
            <!-- END REGISTRATION FORM -->
        </div>
        <!-- END LOGIN -->
        <!-- BEGIN COPYRIGHT -->
        <div class="copyright" style="margin-bottom:50px">
            2014 &copy; <a href="http://www.justukfreebies.co.uk/">Just UK Freebies</a> Login Form
            <br>
            <a href="http://www.justukfreebies.co.uk/website-templates/free-responsive-login-form-template/">Free Website Templates</a>

        </div>
        <!-- END COPYRIGHT -->
        <!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
        <!-- BEGIN CORE PLUGINS -->   <script src="index_template/plugins/jquery-1.10.1.min.js" type="text/javascript"></script>
        <script src="index_template/plugins/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
        <!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
        <script src="index_template/plugins/jquery-ui/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>      
        <script src="index_template/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="index_template/plugins/bootstrap-hover-dropdown/twitter-bootstrap-hover-dropdown.min.js" type="text/javascript" ></script>
        
        <script src="index_template/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
        <script src="index_template/plugins/jquery.blockui.min.js" type="text/javascript"></script>  
        <script src="index_template/plugins/jquery.cookie.min.js" type="text/javascript"></script>
        <script src="index_template/plugins/uniform/jquery.uniform.min.js" type="text/javascript" ></script>
        <!-- END CORE PLUGINS -->
        <!-- BEGIN PAGE LEVEL PLUGINS -->
        <script src="index_template/plugins/jquery-validation/dist/jquery.validate.min.js" type="text/javascript"></script>
        <script src="index_template/plugins/backstretch/jquery.backstretch.min.js" type="text/javascript"></script>
        <script type="text/javascript" src="index_template/plugins/select2/select2.min.js"></script>
        <!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN PAGE LEVEL SCRIPTS -->
        <script src="index_template/scripts/app.js" type="text/javascript"></script>
        <script src="index_template/scripts/login-soft.js" type="text/javascript"></script>      
        <!-- END PAGE LEVEL SCRIPTS --> 
        <script>
        jQuery(document).ready(function () {
                                        App.init();
                                        Login.init();
                                    });
        </script>

        <script src="AdminLTE/js/DateTime.js" type="text/javascript"></script>
        
        <!-- END JAVASCRIPTS -->
    </body>
    <!-- END BODY -->
</html>
