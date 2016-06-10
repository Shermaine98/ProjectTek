<!DOCTYPE html>
<html >
    <head>
        <meta charset="UTF-8">
        <title>Caloocan City Hall: City Planning Department</title>


        <style>
            /* NOTE: The styles were added inline because Prefixfree needs access to your styles and they must be inlined if they are on local disk! */
            @import url(http://fonts.googleapis.com/css?family=Exo:100,200,400);
            @import url(http://fonts.googleapis.com/css?family=Source+Sans+Pro:700,400,300);

            body{
                margin: 0;
                padding: 0;
                background: #fff;

                color: #fff;
                font-family: Arial;
                font-size: 12px;
            }

            .background-image {
                position: absolute;
                left: 0;
                right: 0;
                z-index: 1;

                display: block;
                background-size : 100% auto;
                background-image: url('https://pixabay.com/static/uploads/photo/2015/06/08/15/22/cityscape-802041_960_720.jpg');
                width: 100%;
                height: 100%;

                -webkit-filter: blur(3px);
                -moz-filter: blur(3px);
                -o-filter: blur(3px);
                -ms-filter: blur(3px);
                filter: blur(3px);
            }

            .header{
                position: absolute;
                top: calc(50% - 125px);
                left: calc(50% - 270px);
                z-index: 2;
            }

            .header div{
                float: left;
                color: #1a1a1a;
                font-family: 'Exo', sans-serif;
                font-size: 35px;
                font-weight: 200;
            }

            .header div span{
                color: #5379fa !important;
            }

            .login{
                position: absolute;
                top: calc(50% - 125px);
                left: calc(50% - 50px);
                height: 150px;
                width: 350px;
                padding: 10px;
                z-index: 2;
            }

            .login input[type=text]{
                width: 250px;
                height: 30px;
                background: transparent;
                border: 1px solid rgba(255,255,255,0.6);
                border-radius: 2px;
                color: #fff;
                font-family: 'Exo', sans-serif;
                font-size: 16px;
                font-weight: 400;
                padding: 4px;
            }

            .login input[type=password]{
                width: 250px;
                height: 30px;
                background: transparent;
                border: 1px solid rgba(255,255,255,0.6);
                border-radius: 2px;
                color: #fff;
                font-family: 'Exo', sans-serif;
                font-size: 16px;
                font-weight: 400;
                padding: 4px;
                margin-top: 10px;
            }

            .login input[type=button]{
                width: 260px;
                height: 35px;
                background: #fff;
                border: 1px solid #fff;
                cursor: pointer;
                border-radius: 2px;
                color: #a18d6c;
                font-family: 'Exo', sans-serif;
                font-size: 16px;
                font-weight: 400;
                padding: 6px;
                margin-top: 10px;
            }

            .login input[type=button]:hover{
                opacity: 0.8;
            }

            .login input[type=button]:active{
                opacity: 0.6;
            }

            .login input[type=text]:focus{
                outline: none;
                border: 1px solid rgba(255,255,255,0.9);
            }

            .login input[type=password]:focus{
                outline: none;
                border: 1px solid rgba(255,255,255,0.9);
            }

            .login input[type=button]:focus{
                outline: none;
            }

            ::-webkit-input-placeholder{
                color: #fff;
            }

            ::-moz-input-placeholder{
                color: #fff;
            }
        </style>
        <script src="index_template/js/prefixfree.min.js"></script>


        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="index_template/assets/bootstrap/css/bootstrap.min.css">
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


    </head>

    <body>

        <div class="background-image"></div>
        <div class="header">
            <img src="index_template/Ph_seal_ncr_caloocan.png" style="width:80%; height:80%;"/>
        </div>
        <br>
        <div class="login">
            <div style="
                 color: #1a1a1a;
                 font-family: 'Exo', sans-serif;
                 font-size: 35px;
                 font-weight: 200;">City<span>Planning</span><br/>Department</div><br>
            <input type="text" placeholder="username" name="user"><br>
            <input type="password" placeholder="password" name="password"><br>
            <input type="button" value="Login"><br>
            <a class="launch-modal" href="#" data-modal-id="modal-register" style="color: #990000">No account yet? Register now!</a>

        </div>


        <!-- MODAL -->
        <div class="modal fade" id="modal-register" tabindex="-1" role="dialog" aria-labelledby="modal-register-label" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">

                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">
                            <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                        </button>
                        <h3 class="modal-title" id="modal-register-label">Register Now!</h3>
                        <p>Fill in the form below to get instant access:</p>
                    </div>

                    <div class="modal-body">

                        <form role="form" action="" method="post" class="registration-form">
                            <div class="form-inline">
                                <div class="form-group" style="margin-bottom: 9px;">
                                    <input type="text" name="form-first-name" placeholder="First name..." class="form-control" style="margin-right: 30px;">
                                    <input type="text" name="form-last-name" placeholder="Last name..." class="form-control" >
                                </div>
                                <div class="form-group" style="margin-bottom: 5px;">
                                    <input type="text" name="form-email" placeholder="Email..." class="form-email form-control" id="form-email" style="margin-right: 30px;">
                                </div>
                            </div>
                            <button type="submit" class="btn" style="background-color: #ff9933l; margin-top: 20px">Sign me up!</button>
                        </form>

                    </div>

                </div>
            </div>
        </div>


        <!-- Javascript -->
        <script src="index_template/assets/js/jquery-1.11.1.min.js"></script>
        <script src="index_template/assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="index_template/assets/js/jquery.backstretch.min.js"></script>
        <script src="index_template/assets/js/scripts.js"></script>


    </body>
</html>
