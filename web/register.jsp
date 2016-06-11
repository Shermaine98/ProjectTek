<%-- 
    Document   : register
    Created on : Jun 11, 2016, 1:12:39 PM
    Author     : Dinding
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Register</title>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="index_template/assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="index_template/assets/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="index_template/assets/css/form-elements.css">
        <link rel="stylesheet" href="index_template/assets/css/style.css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="index_template/assets/ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="index_template/assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="index_template/assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="index_template/assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="index_template/assets/ico/apple-touch-icon-57-precomposed.png">

        <style>
            .container {
                display: flex;
                justify-content: center;
            }
            .post-thumb {
                margin-top: 20px;
                margin-right: 30px;
                float: left
            }
            .post-thumb img {
                display: block
            }
            .post-content {
                margin-left: 160px
            }
            .post-content p{
                color: #000;
            }
            .post-title {
                margin-top: 15%;
                font-weight: bold;
                font-size: 250%;
                color: #000
            }
            .form_element{
                padding: 0 20px;
                vertical-align: middle;
                background: #fff;
                border: 3px solid #fff;height:50px;
                font-family: 'Roboto', sans-serif;
                font-size: 16px;
                font-weight: 300;
                line-height: 50px;
                line-height: 50px;
                color: #888;
            }
            .form-group p{
                color: #000;
            }
            .form-title {
                font-weight: bold;
                font-size: 150%;
                color: #000
            }
        </style>
    </head>
    <body>
        <img src='https://secure.static.tumblr.com/74d2f4dd51e8cbb2a8ad25419533a5b3/ypppws5/oLWn0dbq1/tumblr_static_blurred-background-5-2000x1250.jpg' style='position:fixed;top:0px;left:0px;width:100%;z-index:-1; '>
        <div class="container">
            <div class="col-sm-5">

                <div class="form-box">
                    <div class="form-top">
                        <div class="post-thumb">
                            <img src="index_template/Ph_seal_ncr_caloocan.png" width="130px"  /></div>
                        <div class="post-content">    
                            <h3 class="post-title">City Planning Department</h3>
                            <p>Join the department!</p></div>
                    </div>
                    <div class="form-bottom">
                        <form role="form" action="register" method="post">
                            <h4 class="form-title">Personal Information</h4>
                            <div class="form-group" style="float:left; width: 49%; margin-right: 2%">
                                <label class="sr-only">First Name</label>
                                <input type="text" name="firstName" placeholder="First Name" class="form-control" id="">
                            </div>
                            <div class="form-group" style="float:left; width: 49%; ">
                                <label class="sr-only">Last Name</label>
                                <input type="text" name="lastName" placeholder="Last Name" class="form-control" id="">
                            </div>
                            <div class="form-group">
                                <select name="gender" class="form-control form_element" style="">
                                    <option value="" disabled selected>Select Gender</option>
                                    <option value="Male">Male</option>
                                    <option value="Female">Female</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <p>Input Birthdate:</p>
                            </div>
                            <div class="form-group">
                                <label class="sr-only">Birthdate</label>
                                <input class="form-control form_element" id="Birthdate" placeholder="Birth Date" type="date" name="birthdate" onfocus="(this.type = 'date')" onblur="(this.type = 'text')" />
                            </div>
                            <div class="form-group">
                                <select class="form-group form_element" style="width:100%;" onchange="yesnoCheck(this)" name="division">
                                    <option value="" disabled selected>Select Division</option>
                                    <option value="Admin">Administrative Division</option>
                                    <option value="Physical">Physical Planning Division</option>
                                    <option value="Social">Social Planning Division</option>
                                    <option value="Others">Others</option>
                                </select>
                            </div>
                            <div id="ifNo" style="display:none; margin-bottom:10%;">
                                <div class="form-group">
                                    <p>Input Date of Employment:</p>
                                </div>
                                <div class="form-group">
                                    <label class="sr-only">Date of Employment</label>
                                    <input class="form-control form_element" id="employmentDate" placeholder="Date of Employment" type="date" name="employmentDate" onfocus="(this.type = 'date')" onblur="(this.type = 'text')" />
                                </div>
                            </div>
                            <div class="form-group" id="ifYes" style="display:none;">
                                <p>Input Reason for Data Access</p>
                                <textarea rows="4" name="reason" style='width:100%;'></textarea><br><br>

                                <p>Until when do you need access?</p>
                                <input class="form-group form_element" style='width:100%' type="date" id='DateValid' name="dateValid" onfocus="(this.type = 'date')" onblur="(this.type = 'text')" />

                            </div>

                            <h4 class="form-title">Account Details</h4>
                            <div class="form-group">
                                <label class="sr-only">Email</label>
                                <input type="text" name="email" placeholder="Email Address" class="form-control" id="form-username">
                            </div>
                            <div class="form-group">
                                <label class="sr-only" for="form-username">Username</label>
                                <input type="text" name="username" placeholder="Username" class="form-username form-control" id="form-username">
                            </div>
                            <div class="form-group">
                                <label class="sr-only" for="form-password">Password</label>
                                <input type="password" name="password" placeholder="Password" class="form-password form-control" id="form-password">
                            </div>
                            <button type="submit" class="btn">Submit</button>
                            <a href="index.jsp">Back</a>
                        </form>
                    </div>
                </div>
            </div>
        </div><br/><br/>

        <!-- Javascript -->
        <script src="index_template/assets/js/jquery-1.11.1.min.js"></script>
        <script src="index_template/assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="index_template/assets/js/jquery.backstretch.min.js"></script>
        <script src="index_template/assets/js/scripts.js"></script>
        <script src="index_template/DateTime.js" type="text/javascript"></script>
    </body>
</html>
