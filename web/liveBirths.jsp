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
        <title>Project TEK | Live Births </title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        
        
    </head>
    <body class="hold-transition skin-yellow-light fixed sidebar-mini">
        <div class="wrapper">
        <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        Upload to Database
                        <small>Upload Live Births here</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><i class="fa fa-files-o"></i> Database</li>
                        <li>Health</li>
                        <li class="active">Live Births</li>
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
                                <button class="btn btn-flat btn-warning btn-sm" onClick="myFunction()"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Add Barangay</button>
                                <button class="btn btn-flat btn-danger btn-sm" onClick=""><span class="glyphicon glyphicon-minus" aria-hidden="true"></span> Delete Barangay</button>
                            </div>
                          <!-- /.box-tools -->
                        </div>
                        
                        <div class="body">
                            <div class="box-body">
                                <table class="table table-striped" id="myTable">
                                    <tr>
                                        <th></th>
                                        <th>Age Bracket</th>
                                        <th>Both Sexes</th>
                                        <th>Male</th>
                                        <th>Female</th>
                                    </tr>
                                        <tr>
                                            <td>
                                                <center>Barangay 1</center>
                                            </td>
                                            <td>
                                                <center>All Ages</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" disabled="true">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" disabled="true">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                            </td>
                                            <td>
                                                <center>Under 1</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>1 - 4</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>5 - 9</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>10 - 14</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>15 - 19</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>20 - 24</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>25 - 29</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>30 - 34</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>35 - 39</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>40 - 44</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>45 - 49</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>50 - 54</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>55 - 59</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>60 - 64</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>65 - 69</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>70 - 74</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()"name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>75 - 79</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()"name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                        <td></td>
                                        <td>
                                            <center>80 and Over</center>
                                        </td>
                                        <td>
                                            <input class="form-control" disabled="true" value="0"> 
                                        </td>
                                        <td>
                                            <input type="number" class="form-control" onChange="calculate()" name="male">
                                        </td>
                                        <td>
                                            <input type="number" class="form-control" onChange="calculate()" name="female">
                                        </td>
                                    </tr>
                                        <tr>
                                            <td>
                                                <center>Barangay 2</center>
                                            </td>
                                            <td>
                                                <center>All Ages</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" disabled="true">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" disabled="true">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                            </td>
                                            <td>
                                                <center>Under 1</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>1 - 4</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>5 - 9</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>10 - 14</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>15 - 19</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>20 - 24</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>25 - 29</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>30 - 34</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>35 - 39</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>40 - 44</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>45 - 49</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>50 - 54</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>55 - 59</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>60 - 64</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>65 - 69</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>70 - 74</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()"name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>75 - 79</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()"name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                        <td></td>
                                        <td>
                                            <center>80 and Over</center>
                                        </td>
                                        <td>
                                            <input class="form-control" disabled="true" value="0"> 
                                        </td>
                                        <td>
                                            <input type="number" class="form-control" onChange="calculate()" name="male">
                                        </td>
                                        <td>
                                            <input type="number" class="form-control" onChange="calculate()" name="female">
                                        </td>
                                    </tr>
                                        <tr>
                                            <td>
                                                <center>Barangay 3</center>
                                            </td>
                                            <td>
                                                <center>All Ages</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" disabled="true">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" disabled="true">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                            </td>
                                            <td>
                                                <center>Under 1</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>1 - 4</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>5 - 9</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>10 - 14</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>15 - 19</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>20 - 24</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>25 - 29</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>30 - 34</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>35 - 39</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>40 - 44</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>45 - 49</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>50 - 54</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>55 - 59</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>60 - 64</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>65 - 69</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>70 - 74</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()"name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>75 - 79</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()"name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                        <td></td>
                                        <td>
                                            <center>80 and Over</center>
                                        </td>
                                        <td>
                                            <input class="form-control" disabled="true" value="0"> 
                                        </td>
                                        <td>
                                            <input type="number" class="form-control" onChange="calculate()" name="male">
                                        </td>
                                        <td>
                                            <input type="number" class="form-control" onChange="calculate()" name="female">
                                        </td>
                                    </tr>
                                        <tr>
                                            <td>
                                                <center>Barangay 4</center>
                                            </td>
                                            <td>
                                                <center>All Ages</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" disabled="true">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" disabled="true">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                            </td>
                                            <td>
                                                <center>Under 1</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>1 - 4</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>5 - 9</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>10 - 14</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>15 - 19</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>20 - 24</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>25 - 29</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>30 - 34</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>35 - 39</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>40 - 44</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>45 - 49</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>50 - 54</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>55 - 59</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>60 - 64</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>65 - 69</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>70 - 74</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()"name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>75 - 79</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()"name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                        <td></td>
                                        <td>
                                            <center>80 and Over</center>
                                        </td>
                                        <td>
                                            <input class="form-control" disabled="true" value="0"> 
                                        </td>
                                        <td>
                                            <input type="number" class="form-control" onChange="calculate()" name="male">
                                        </td>
                                        <td>
                                            <input type="number" class="form-control" onChange="calculate()" name="female">
                                        </td>
                                    </tr>
                                        <tr>
                                            <td>
                                                <center>Barangay 5</center>
                                            </td>
                                            <td>
                                                <center>All Ages</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" disabled="true">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" disabled="true">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                            </td>
                                            <td>
                                                <center>Under 1</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>1 - 4</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>5 - 9</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>10 - 14</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>15 - 19</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>20 - 24</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>25 - 29</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>30 - 34</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>35 - 39</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>40 - 44</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>45 - 49</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>50 - 54</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>55 - 59</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>60 - 64</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>65 - 69</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>70 - 74</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()"name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>75 - 79</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()"name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                        <td></td>
                                        <td>
                                            <center>80 and Over</center>
                                        </td>
                                        <td>
                                            <input class="form-control" disabled="true" value="0"> 
                                        </td>
                                        <td>
                                            <input type="number" class="form-control" onChange="calculate()" name="male">
                                        </td>
                                        <td>
                                            <input type="number" class="form-control" onChange="calculate()" name="female">
                                        </td>
                                    </tr>
                                        <tr>
                                            <td>
                                                <center>Barangay 6</center>
                                            </td>
                                            <td>
                                                <center>All Ages</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" disabled="true">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" disabled="true">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                            </td>
                                            <td>
                                                <center>Under 1</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>1 - 4</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>5 - 9</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>10 - 14</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>15 - 19</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>20 - 24</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>25 - 29</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>30 - 34</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>35 - 39</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>40 - 44</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>45 - 49</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>50 - 54</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>55 - 59</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>60 - 64</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>65 - 69</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>70 - 74</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()"name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>75 - 79</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()"name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                        <td></td>
                                        <td>
                                            <center>80 and Over</center>
                                        </td>
                                        <td>
                                            <input class="form-control" disabled="true" value="0"> 
                                        </td>
                                        <td>
                                            <input type="number" class="form-control" onChange="calculate()" name="male">
                                        </td>
                                        <td>
                                            <input type="number" class="form-control" onChange="calculate()" name="female">
                                        </td>
                                    </tr>
                                        <tr>
                                            <td>
                                                <center>Barangay 7</center>
                                            </td>
                                            <td>
                                                <center>All Ages</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" disabled="true">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" disabled="true">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                            </td>
                                            <td>
                                                <center>Under 1</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>1 - 4</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>5 - 9</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>10 - 14</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>15 - 19</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>20 - 24</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>25 - 29</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>30 - 34</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>35 - 39</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>40 - 44</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>45 - 49</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>50 - 54</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>55 - 59</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>60 - 64</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>65 - 69</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>70 - 74</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()"name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>75 - 79</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()"name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                        <td></td>
                                        <td>
                                            <center>80 and Over</center>
                                        </td>
                                        <td>
                                            <input class="form-control" disabled="true" value="0"> 
                                        </td>
                                        <td>
                                            <input type="number" class="form-control" onChange="calculate()" name="male">
                                        </td>
                                        <td>
                                            <input type="number" class="form-control" onChange="calculate()" name="female">
                                        </td>
                                    </tr>
                                        <tr>
                                            <td>
                                                <center>Barangay 8</center>
                                            </td>
                                            <td>
                                                <center>All Ages</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" disabled="true">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" disabled="true">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                            </td>
                                            <td>
                                                <center>Under 1</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>1 - 4</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>5 - 9</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>10 - 14</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>15 - 19</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>20 - 24</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>25 - 29</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>30 - 34</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>35 - 39</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>40 - 44</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>45 - 49</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>50 - 54</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>55 - 59</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>60 - 64</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>65 - 69</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>70 - 74</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()"name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>75 - 79</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()"name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                        <td></td>
                                        <td>
                                            <center>80 and Over</center>
                                        </td>
                                        <td>
                                            <input class="form-control" disabled="true" value="0"> 
                                        </td>
                                        <td>
                                            <input type="number" class="form-control" onChange="calculate()" name="male">
                                        </td>
                                        <td>
                                            <input type="number" class="form-control" onChange="calculate()" name="female">
                                        </td>
                                    </tr>
                                        <tr>
                                            <td>
                                                <center>Barangay 9</center>
                                            </td>
                                            <td>
                                                <center>All Ages</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" disabled="true">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" disabled="true">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                            </td>
                                            <td>
                                                <center>Under 1</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>1 - 4</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>5 - 9</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>10 - 14</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>15 - 19</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>20 - 24</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>25 - 29</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>30 - 34</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>35 - 39</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>40 - 44</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>45 - 49</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>50 - 54</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>55 - 59</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>60 - 64</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>65 - 69</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>70 - 74</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()"name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>75 - 79</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()"name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                        <td></td>
                                        <td>
                                            <center>80 and Over</center>
                                        </td>
                                        <td>
                                            <input class="form-control" disabled="true" value="0"> 
                                        </td>
                                        <td>
                                            <input type="number" class="form-control" onChange="calculate()" name="male">
                                        </td>
                                        <td>
                                            <input type="number" class="form-control" onChange="calculate()" name="female">
                                        </td>
                                    </tr>
                                        <tr>
                                            <td>
                                                <center>Barangay 10</center>
                                            </td>
                                            <td>
                                                <center>All Ages</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" disabled="true">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" disabled="true">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                            </td>
                                            <td>
                                                <center>Under 1</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>1 - 4</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>5 - 9</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>10 - 14</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>15 - 19</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>20 - 24</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>25 - 29</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>30 - 34</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>35 - 39</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>40 - 44</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>45 - 49</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>50 - 54</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>55 - 59</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>60 - 64</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>65 - 69</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>70 - 74</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()"name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <center>75 - 79</center>
                                            </td>
                                            <td>
                                                <input class="form-control" disabled="true" value="0"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()"name="male">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="female">
                                            </td>
                                        </tr>
                                        <tr>
                                        <td></td>
                                        <td>
                                            <center>80 and Over</center>
                                        </td>
                                        <td>
                                            <input class="form-control" disabled="true" value="0"> 
                                        </td>
                                        <td>
                                            <input type="number" class="form-control" onChange="calculate()" name="male">
                                        </td>
                                        <td>
                                            <input type="number" class="form-control" onChange="calculate()" name="female">
                                        </td>
                                    
                                    
                                    
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

<%@ include file="footer.html" %>
</html>