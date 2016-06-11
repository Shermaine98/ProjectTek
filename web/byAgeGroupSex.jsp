<%-- 
    Document   : home
    Created on : Jun 8, 2016, 10:13:59 PM
    Author     : Geraldine Atayan
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--IMPORTING HTML IMPORTS (bootstrap + scripts)-->
<%@ include file="importsAide.html" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Project TEK | Dashboard </title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        
        <script>
            function myFunction() {
                var table = document.getElementById("myTable");

                var rowCount = table.rows.length;
                var row = table.insertRow(rowCount);
	
                //cell1
                var cell1 = row.insertCell(0);
                var div = document.createElement("div");
                div.setAttribute('class', 'form-group');
                //Create array of options to be added
                var array = ["Barangay 2"];
                //Create and append select list
                var selectList = document.createElement("select");
                selectList.id = "selectExpenseType";
                selectList.name = "selectExpenseType";
                selectList.setAttribute('class','form-control');
                
                //Create and append the options
                for (var i = 0; i < array.length; i++) {
                    var option = document.createElement("option");
                    option.value = array[i];
                    option.text = array[i];
                    selectList.appendChild(option);
                }
            
                div.appendChild(selectList);
                cell1.appendChild(div); 
        
                //cell2
                var cell2 = row.insertCell(1);
                var div = document.createElement("div");
                cell2.innerHTML = "<center>Under 1</center>";
                cell2.appendChild(div); 
	
                //cell 3
                var cell3 = row.insertCell(2);
                var element3 = document.createElement("input");
                element3.readonly="true";
                element3.className="form-control";
                element3.disabled="true";
                //element6.addEventListener("change", calculate);
                cell3.appendChild(element3);
                
                //cell 4
                var cell4 = row.insertCell(3);
                var element4 = document.createElement("input");
                element4.type = "number";
                element4.name = "totalBudget";
                element4.required=true;
                element4.min="0"
                element4.max="99999999999"
                element4.step="1"
                element4.style.width="100%";
                element4.className="form-control";
                element4.addEventListener("change", calculate);
                cell4.appendChild(element4);
                
                //cell 5
                var cell5 = row.insertCell(4);
                var element5 = document.createElement("input");
                element5.type = "number";
                element5.name = "totalBudget";
                element5.required=true;
                element5.min="0"
                element5.max="99999999999"
                element5.step="0.01"
                element5.style.width="100%";
                element5.className="form-control";
                element5.addEventListener("change", calculate);
                cell5.appendChild(element5);
                
                var rowCount = table.rows.length;
                var row = table.insertRow(rowCount);
                
                var cell1 = row.insertCell(0);
                //cell2
                var cell2 = row.insertCell(1);
                var div = document.createElement("div");
                cell2.innerHTML = "<center>1 - 4</center>";
                cell2.appendChild(div); 
	
                //cell 3
                var cell3 = row.insertCell(2);
                var element3 = document.createElement("input");
                element3.readonly="true";
                element3.className="form-control";
                element3.disabled="true";
                //element6.addEventListener("change", calculate);
                cell3.appendChild(element3);
                
                //cell 4
                var cell4 = row.insertCell(3);
                var element4 = document.createElement("input");
                element4.type = "number";
                element4.name = "totalBudget";
                element4.required=true;
                element4.min="0"
                element4.max="99999999999"
                element4.step="1"
                element4.style.width="100%";
                element4.className="form-control";
                element4.addEventListener("change", calculate);
                cell4.appendChild(element4);
                
                //cell 5
                var cell5 = row.insertCell(4);
                var element5 = document.createElement("input");
                element5.type = "number";
                element5.name = "totalBudget";
                element5.required=true;
                element5.min="0"
                element5.max="99999999999"
                element5.step="0.01"
                element5.style.width="100%";
                element5.className="form-control";
                element5.addEventListener("change", calculate);
                cell5.appendChild(element5);
                
                var rowCount = table.rows.length;
                var row = table.insertRow(rowCount);
        
                var cell1 = row.insertCell(0);
                
                //cell2
                var cell2 = row.insertCell(1);
                var div = document.createElement("div");
                cell2.innerHTML = "<center>5 - 9</center>";
                cell2.appendChild(div); 
	
                //cell 3
                var cell3 = row.insertCell(2);
                var element3 = document.createElement("input");
                element3.readonly="true";
                element3.className="form-control";
                element3.disabled="true";
                //element6.addEventListener("change", calculate);
                cell3.appendChild(element3);
                
                //cell 4
                var cell4 = row.insertCell(3);
                var element4 = document.createElement("input");
                element4.type = "number";
                element4.name = "totalBudget";
                element4.required=true;
                element4.min="0"
                element4.max="99999999999"
                element4.step="1"
                element4.style.width="100%";
                element4.className="form-control";
                element4.addEventListener("change", calculate);
                cell4.appendChild(element4);
                
                //cell 5
                var cell5 = row.insertCell(4);
                var element5 = document.createElement("input");
                element5.type = "number";
                element5.name = "totalBudget";
                element5.required=true;
                element5.min="0"
                element5.max="99999999999"
                element5.step="0.01"
                element5.style.width="100%";
                element5.className="form-control";
                element5.addEventListener("change", calculate);
                cell5.appendChild(element5);
                
                var rowCount = table.rows.length;
                var row = table.insertRow(rowCount);
        
                var cell1 = row.insertCell(0);
                
                //cell2
                var cell2 = row.insertCell(1);
                var div = document.createElement("div");
                cell2.innerHTML = "<center>10 - 14</center>";
                cell2.appendChild(div); 
	
                //cell 3
                var cell3 = row.insertCell(2);
                var element3 = document.createElement("input");
                element3.readonly="true";
                element3.className="form-control";
                element3.disabled="true";
                //element6.addEventListener("change", calculate);
                cell3.appendChild(element3);
                
                //cell 4
                var cell4 = row.insertCell(3);
                var element4 = document.createElement("input");
                element4.type = "number";
                element4.name = "totalBudget";
                element4.required=true;
                element4.min="0"
                element4.max="99999999999"
                element4.step="1"
                element4.style.width="100%";
                element4.className="form-control";
                element4.addEventListener("change", calculate);
                cell4.appendChild(element4);
                
                //cell 5
                var cell5 = row.insertCell(4);
                var element5 = document.createElement("input");
                element5.type = "number";
                element5.name = "totalBudget";
                element5.required=true;
                element5.min="0"
                element5.max="99999999999"
                element5.step="0.01"
                element5.style.width="100%";
                element5.className="form-control";
                element5.addEventListener("change", calculate);
                cell5.appendChild(element5);
                
            }
            function deleteRow(){
                var table = document.getElementById("myTable");
                
                var rowCount = table.rows.length;
                if(rowCount!=3){
                var row = table.deleteRow(rowCount-1);
                }
            }
            
            function calculate() {
            var table = document.getElementById("myTable");
            var rowCount = table.rows.length;
            var sum = 0;
            for(var i = 1 ; i<rowCount ; i++){
                    var male = document.getElementById("myTable").rows[i].cells[3].children[0].value;
                    var female = document.getElementById("myTable").rows[i].cells[4].children[0].value;
                    //if(male != null && male!= "" && female!=null && female!=""){
                    //  if((isNaN(qty)|| Math.sign(parseInt(qty)) == -1 || Math.sign(parseInt(qty)) == -0 || Math.sign(parseInt(qty)) == 0) 
                    //&& (isNaN(costingamt) || Math.sign(parseFloat(costingamt)) == -1 || Math.sign(parseFloat(costingamt)) == -0 || Math.sign(parseFloat(costingamt)) == 0 )){
                    //  alert("Quantity and Costing Amount should both be positive numbers");
                      //document.getElementById("myTable").rows[i].cells[3].children[0].setAttribute('class', 'form-group has-error');
                      //document.getElementById("myTable").rows[i].cells[4].children[0].setAttribute('class','form-group has-error');
                  //}
                  //else if(isNaN(male)|| Math.sign(parseInt(male)) == -1 || Math.sign(parseInt(male)) == -0 || Math.sign(parseInt(male)) == 0 ){
                    //  document.getElementById("myTable").rows[i].cells[4].children[0].setAttribute('class','form-group');
                    //  alert("Quantity should be a positive number");
                    //  document.getElementById("myTable").rows[i].cells[3].children[0].setAttribute('class', 'form-group has-error');
                  //}
                  //else if(isNaN(female) || Math.sign(parseFloat(female)) == -1 || Math.sign(parseFloat(female)) == -0 || Math.sign(parseFloat(female)) == 0 ){
                    //  document.getElementById("myTable").rows[i].cells[3].children[0].setAttribute('class', 'form-group');
                    //  alert("Costing Amount should be a positive number");
                    //  document.getElementById("myTable").rows[i].cells[4].children[0].setAttribute('class','form-group has-error');
                  //} else {
                      sum = parseInt(male) + parseInt(female);
                      document.getElementById("myTable").rows[i].cells[2].children[0].value = sum;
                }
              }
            //}
        //}
	</script>
    </head>
    <body class="hold-transition skin-yellow-light fixed sidebar-mini">
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
                                    </tr>
                                    
                                    
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
