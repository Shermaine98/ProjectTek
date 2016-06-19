<%-- 
    Document   : home
    Created on : Jun 8, 2016, 10:13:59 PM
    Author     : Geraldine Atayan
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../JSPImports/importsAide.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Reports Library | Household Population by Age Group and Sex</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <script src="js/UploadFile.js" type="text/javascript"></script>
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
                selectList.setAttribute('class', 'form-control');

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
                element3.readonly = "true";
                element3.className = "form-control";
                element3.disabled = "true";
                //element6.addEventListener("change", calculate);
                cell3.appendChild(element3);

                //cell 4
                var cell4 = row.insertCell(3);
                var element4 = document.createElement("input");
                element4.type = "number";
                element4.name = "totalBudget";
                element4.required = true;
                element4.min = "0"
                element4.max = "99999999999"
                element4.step = "1"
                element4.style.width = "100%";
                element4.className = "form-control";
                element4.addEventListener("change", calculate);
                cell4.appendChild(element4);

                //cell 5
                var cell5 = row.insertCell(4);
                var element5 = document.createElement("input");
                element5.type = "number";
                element5.name = "totalBudget";
                element5.required = true;
                element5.min = "0"
                element5.max = "99999999999"
                element5.step = "0.01"
                element5.style.width = "100%";
                element5.className = "form-control";
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
                element3.readonly = "true";
                element3.className = "form-control";
                element3.disabled = "true";
                //element6.addEventListener("change", calculate);
                cell3.appendChild(element3);

                //cell 4
                var cell4 = row.insertCell(3);
                var element4 = document.createElement("input");
                element4.type = "number";
                element4.name = "totalBudget";
                element4.required = true;
                element4.min = "0"
                element4.max = "99999999999"
                element4.step = "1"
                element4.style.width = "100%";
                element4.className = "form-control";
                element4.addEventListener("change", calculate);
                cell4.appendChild(element4);

                //cell 5
                var cell5 = row.insertCell(4);
                var element5 = document.createElement("input");
                element5.type = "number";
                element5.name = "totalBudget";
                element5.required = true;
                element5.min = "0"
                element5.max = "99999999999"
                element5.step = "0.01"
                element5.style.width = "100%";
                element5.className = "form-control";
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
                element3.readonly = "true";
                element3.className = "form-control";
                element3.disabled = "true";
                //element6.addEventListener("change", calculate);
                cell3.appendChild(element3);

                //cell 4
                var cell4 = row.insertCell(3);
                var element4 = document.createElement("input");
                element4.type = "number";
                element4.name = "totalBudget";
                element4.required = true;
                element4.min = "0"
                element4.max = "99999999999"
                element4.step = "1"
                element4.style.width = "100%";
                element4.className = "form-control";
                element4.addEventListener("change", calculate);
                cell4.appendChild(element4);

                //cell 5
                var cell5 = row.insertCell(4);
                var element5 = document.createElement("input");
                element5.type = "number";
                element5.name = "totalBudget";
                element5.required = true;
                element5.min = "0"
                element5.max = "99999999999"
                element5.step = "0.01"
                element5.style.width = "100%";
                element5.className = "form-control";
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
                element3.readonly = "true";
                element3.className = "form-control";
                element3.disabled = "true";
                //element6.addEventListener("change", calculate);
                cell3.appendChild(element3);

                //cell 4
                var cell4 = row.insertCell(3);
                var element4 = document.createElement("input");
                element4.type = "number";
                element4.name = "totalBudget";
                element4.required = true;
                element4.min = "0"
                element4.max = "99999999999"
                element4.step = "1"
                element4.style.width = "100%";
                element4.className = "form-control";
                element4.addEventListener("change", calculate);
                cell4.appendChild(element4);

                //cell 5
                var cell5 = row.insertCell(4);
                var element5 = document.createElement("input");
                element5.type = "number";
                element5.name = "totalBudget";
                element5.required = true;
                element5.min = "0"
                element5.max = "99999999999"
                element5.step = "0.01"
                element5.style.width = "100%";
                element5.className = "form-control";
                element5.addEventListener("change", calculate);
                cell5.appendChild(element5);

            }
            function deleteRow() {
                var table = document.getElementById("myTable");

                var rowCount = table.rows.length;
                if (rowCount != 3) {
                    var row = table.deleteRow(rowCount - 1);
                }
            }

            function calculate() {
                var table = document.getElementById("myTable");
                var rowCount = table.rows.length;
                var sum = 0;
                for (var i = 1; i < rowCount; i++) {
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
        <style>
            input[type="file"] {
                display: none;
            }
            .custom-file-upload {
                padding: 6px 12px;
                width: 75%;
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
                margin:7% auto 0 auto; 
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
                    <h1><i class="fa fa-files-o"></i> Reports Library</h1>
                </section>

                <ol class="breadcrumb" style='background: transparent; margin-left: 3%; font-size: 120%;'>
                    <li class="title">Demographics</li>
                    <li class="active title">Household Population by Age Group and Sex</li>
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
                                    <form action="UploadToDatabaseDemo" method="post" enctype="multipart/form-data">
                                        <br>
                                        <label for="file" id="filename" class="custom-file-upload btn btn-block btn-default">
                                            <i class="fa fa-cloud-upload"></i> Upload File
                                        </label>
                                        <input id="file" name="file" type="file" onclick="showDiv()" />
                                        <input  name="UploadFile" type="hidden" value="AgeGroup" />
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
                            <div class="box box-danger" style="height: 300px;" >
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
            </div>   
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
