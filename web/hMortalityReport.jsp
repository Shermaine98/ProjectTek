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
        <script src="js/UploadFile.js" type="text/javascript"></script>
        <link rel="stylesheet" href="AdminLTE/plugins/select2/select2.min.css">

        <script>
            function myFunction() {
                var table = document.getElementById("myTable");

                var rowCount = table.rows.length;
                var row = table.insertRow(rowCount);
	
                //cell1
                var cell1 = row.insertCell(0);
                //var div = document.createElement("div");
                //div.setAttribute('class', 'form-group');
                //Create array of options to be added
                //var array = ["Barangay 2"];
                //Create and append select list
                //var selectList = document.createElement("select");
                //selectList.id = "selectExpenseType";
                //selectList.name = "selectExpenseType";
                //selectList.setAttribute('class','form-control');
                
                //Create and append the options
                //for (var i = 0; i < array.length; i++) {
                   // var option = document.createElement("option");
                  //  option.value = array[i];
                  //  option.text = array[i];
                  //  selectList.appendChild(option);
                //}
            
                //div.appendChild(selectList);
                //cell1.appendChild(div); 
                
                //cell 1
                var cell1 = row.insertCell(0);
                var element1 = document.createElement("input");
                element1.className="form-control";
                //element6.addEventListener("change", calculate);
                element1.placeholder="Disease";
                cell1.appendChild(element1);
                
                //cell 2
                var cell2 = row.insertCell(1);
                var element2 = document.createElement("input");
                element2.type = "number";
                element2.name = "m1";
                element2.required=true;
                element2.min="0"
                element2.max="99999999999"
                element2.step="1"
                element2.style.width="100%";
                element2.className="form-control";
                element2.addEventListener("change", calculate);
                cell2.appendChild(element2);
                
                //cell 3
                var cell3 = row.insertCell(2);
                var element3 = document.createElement("input");
                element3.type = "number";
                element3.name = "f1";
                element3.required=true;
                element3.min="0"
                element3.max="99999999999"
                element3.step="1"
                element3.style.width="100%";
                element3.className="form-control";
                element3.addEventListener("change", calculate);
                cell3.appendChild(element3);
                
                //cell 4
                var cell4 = row.insertCell(3);
                var element4 = document.createElement("input");
                element4.type = "number";
                element4.name = "m2";
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
                element5.name = "f2";
                element5.required=true;
                element5.min="0"
                element5.max="99999999999"
                element5.step="1"
                element5.style.width="100%";
                element5.className="form-control";
                element5.addEventListener("change", calculate);
                cell5.appendChild(element5);
                
                //cell 6
                var cell6 = row.insertCell(5);
                var element6 = document.createElement("input");
                element6.type = "number";
                element6.name = "m3";
                element6.required=true;
                element6.min="0"
                element6.max="99999999999"
                element6.step="1"
                element6.style.width="100%";
                element6.className="form-control";
                element6.addEventListener("change", calculate);
                cell6.appendChild(element6);
                
                //cell 7
                var cell7 = row.insertCell(6);
                var element7 = document.createElement("input");
                element7.type = "number";
                element7.name = "f3";
                element7.required=true;
                element7.min="0"
                element7.max="99999999999"
                element7.step="1"
                element7.style.width="100%";
                element7.className="form-control";
                element7.addEventListener("change", calculate);
                cell7.appendChild(element7);
                
                //cell 8
                var cell8 = row.insertCell(7);
                var element8 = document.createElement("input");
                element8.type = "number";
                element8.name = "m4";
                element8.required=true;
                element8.min="0"
                element8.max="99999999999"
                element8.step="1"
                element8.style.width="100%";
                element8.className="form-control";
                element8.addEventListener("change", calculate);
                cell8.appendChild(element8);
                
                //cell 9
                var cell9 = row.insertCell(8);
                var element9 = document.createElement("input");
                element9.type = "number";
                element9.name = "f4";
                element9.required=true;
                element9.min="0"
                element9.max="99999999999"
                element9.step="1"
                element9.style.width="100%";
                element9.className="form-control";
                element9.addEventListener("change", calculate);
                cell9.appendChild(element9);
                
                //cell 10
                var cell10 = row.insertCell(9);
                var element10 = document.createElement("input");
                element10.type = "number";
                element10.name = "m5";
                element10.required=true;
                element10.min="0"
                element10.max="99999999999"
                element10.step="1"
                element10.style.width="100%";
                element10.className="form-control";
                element10.addEventListener("change", calculate);
                cell10.appendChild(element10);
                
                //cell 11
                var cell11 = row.insertCell(10);
                var element11 = document.createElement("input");
                element11.type = "number";
                element11.name = "f5";
                element11.required=true;
                element11.min="0"
                element11.max="99999999999"
                element11.step="1"
                element11.style.width="100%";
                element11.className="form-control";
                element11.addEventListener("change", calculate);
                cell11.appendChild(element11);
                
                //cell 12
                var cell12 = row.insertCell(11);
                var element12 = document.createElement("input");
                element12.type = "number";
                element12.name = "m6";
                element12.required=true;
                element12.min="0"
                element12.max="99999999999"
                element12.step="1"
                element12.style.width="100%";
                element12.className="form-control";
                element12.addEventListener("change", calculate);
                cell12.appendChild(element12);    
                
                //cell 13
                var cell13 = row.insertCell(12);
                var element13 = document.createElement("input");
                element13.type = "number";
                element13.name = "f6";
                element13.required=true;
                element13.min="0"
                element13.max="99999999999"
                element13.step="1"
                element13.style.width="100%";
                element13.className="form-control";
                element13.addEventListener("change", calculate);
                cell13.appendChild(element13);
                
                //cell 14
                var cell14 = row.insertCell(13);
                var element14 = document.createElement("input");
                element14.type = "number";
                element14.name = "m7";
                element14.required=true;
                element14.min="0"
                element14.max="99999999999"
                element14.step="1"
                element14.style.width="100%";
                element14.className="form-control";
                element14.addEventListener("change", calculate);
                
                cell14.appendChild(element14);
                
                //cell 15
                var cell15 = row.insertCell(14);
                var element15 = document.createElement("input");
                element15.type = "number";
                element15.name = "f7";
                element15.required=true;
                element15.min="0"
                element15.max="99999999999"
                element15.step="1"
                element15.style.width="100%";
                element15.className="form-control";
                element15.addEventListener("change", calculate);
                cell15.appendChild(element15);
                
                //cell 16
                var cell16 = row.insertCell(15);
                var element16 = document.createElement("input");
                element16.type = "number";
                element16.name = "m8";
                element16.required=true;
                element16.min="0"
                element16.max="99999999999"
                element16.step="1"
                element16.style.width="100%";
                element16.className="form-control";
                element16.addEventListener("change", calculate);
                cell16.appendChild(element16);
                
                //cell 17
                var cell17 = row.insertCell(16);
                var element17 = document.createElement("input");
                element17.type = "number";
                element17.name = "f8";
                element17.required=true;
                element17.min="0"
                element17.max="99999999999"
                element17.step="1"
                element17.style.width="100%";
                element17.className="form-control";
                element17.addEventListener("change", calculate);
                cell17.appendChild(element17);
                
                //cell 18
                var cell18 = row.insertCell(17);
                var element18 = document.createElement("input");
                element18.type = "number";
                element18.name = "m9";
                element18.required=true;
                element18.min="0"
                element18.max="99999999999"
                element18.step="1"
                element18.style.width="100%";
                element18.className="form-control";
                element18.addEventListener("change", calculate);
                cell18.appendChild(element18);
                
                //cell 19
                var cell19 = row.insertCell(18);
                var element19 = document.createElement("input");
                element19.type = "number";
                element19.name = "f9";
                element19.required=true;
                element19.min="0"
                element19.max="99999999999"
                element19.step="1"
                element19.style.width="100%";
                element19.className="form-control";
                element19.addEventListener("change", calculate);
                cell19.appendChild(element19);
                
                //cell 20
                var cell20 = row.insertCell(19);
                var element20 = document.createElement("input");
                element20.type = "number";
                element20.name = "m10";
                element20.required=true;
                element20.min="0"
                element20.max="99999999999"
                element20.step="1"
                element20.style.width="100%";
                element20.className="form-control";
                element20.addEventListener("change", calculate);
                cell20.appendChild(element20);    
                
                //cell 21
                var cell21 = row.insertCell(20);
                var element21 = document.createElement("input");
                element21.type = "number";
                element21.name = "f10";
                element21.required=true;
                element21.min="0"
                element21.max="99999999999"
                element21.step="1"
                element21.style.width="100%";
                element21.className="form-control";
                element21.addEventListener("change", calculate);
                cell21.appendChild(element21);
                
                //cell 22
                var cell22 = row.insertCell(21);
                var element22 = document.createElement("input");
                element22.type = "number";
                element22.name = "m11";
                element22.required=true;
                element22.min="0"
                element22.max="99999999999"
                element22.step="1"
                element22.style.width="100%";
                element22.className="form-control";
                element22.addEventListener("change", calculate);
                cell22.appendChild(element22);
                
                //cell 23
                var cell23 = row.insertCell(22);
                var element23 = document.createElement("input");
                element23.type = "number";
                element23.name = "f11";
                element23.required=true;
                element23.min="0"
                element23.max="99999999999"
                element23.step="1"
                element23.style.width="100%";
                element23.className="form-control";
                element23.addEventListener("change", calculate);
                cell23.appendChild(element23);
                
                //cell 24
                var cell24 = row.insertCell(23);
                var element24 = document.createElement("input");
                element24.type = "number";
                element24.name = "m12";
                element24.required=true;
                element24.min="0"
                element24.max="99999999999"
                element24.step="1"
                element24.style.width="100%";
                element24.className="form-control";
                element24.addEventListener("change", calculate);
                cell24.appendChild(element24);
                
                //cell 25
                var cell25 = row.insertCell(24);
                var element25 = document.createElement("input");
                element25.type = "number";
                element25.name = "f12";
                element25.required=true;
                element25.min="0"
                element25.max="99999999999"
                element25.step="1"
                element25.style.width="100%";
                element25.className="form-control";
                element25.addEventListener("change", calculate);
                cell25.appendChild(element25);
                
                //cell 26
                var cell26 = row.insertCell(25);
                var element26 = document.createElement("input");
                element26.type = "number";
                element26.name = "m13";
                element26.required=true;
                element26.min="0"
                element26.max="99999999999"
                element26.step="1"
                element26.style.width="100%";
                element26.className="form-control";
                element26.addEventListener("change", calculate);
                cell26.appendChild(element26);
                
                //cell 27
                var cell27 = row.insertCell(26);
                var element27 = document.createElement("input");
                element27.type = "number";
                element27.name = "f13";
                element27.required=true;
                element27.min="0"
                element27.max="99999999999"
                element27.step="1"
                element27.style.width="100%";
                element27.className="form-control";
                element27.addEventListener("change", calculate);
                cell27.appendChild(element27);
                
                //cell 28
                var cell28 = row.insertCell(27);
                var element28 = document.createElement("input");
                element28.type = "number";
                element28.name = "m14";
                element28.required=true;
                element28.min="0"
                element28.max="99999999999"
                element28.step="1"
                element28.style.width="100%";
                element28.className="form-control";
                element28.addEventListener("change", calculate);
                cell28.appendChild(element28);    
                
                //cell 29
                var cell29 = row.insertCell(28);
                var element29 = document.createElement("input");
                element29.type = "number";
                element29.name = "f14";
                element29.required=true;
                element29.min="0"
                element29.max="99999999999"
                element29.step="1"
                element29.style.width="100%";
                element29.className="form-control";
                element29.addEventListener("change", calculate);
                cell29.appendChild(element29);
                
                //cell 30
                var cell30 = row.insertCell(29);
                var element30 = document.createElement("input");
                element30.type = "number";
                element30.name = "m15";
                element30.required=true;
                element30.min="0"
                element30.max="99999999999"
                element30.step="1"
                element30.style.width="100%";
                element30.className="form-control";
                element30.addEventListener("change", calculate);
                cell30.appendChild(element30);
                
                //cell 31
                var cell31 = row.insertCell(30);
                var element31 = document.createElement("input");
                element31.type = "number";
                element31.name = "f15";
                element31.required=true;
                element31.min="0"
                element31.max="99999999999"
                element31.step="1"
                element31.style.width="100%";
                element31.className="form-control";
                element31.addEventListener("change", calculate);
                cell31.appendChild(element31);
                
                //cell 32
                var cell32 = row.insertCell(31);
                var element32 = document.createElement("input");
                element32.type = "number";
                element32.name = "mt";
                element32.required=true;
                element32.disabled=true;
                element32.style.width="100%";
                element32.className="form-control";
                cell32.appendChild(element32);
                
                //cell 33
                var cell33 = row.insertCell(32);
                var element33 = document.createElement("input");
                element33.type = "number";
                element33.name = "ft";
                element33.required=true;
                element33.disabled=true;
                element33.style.width="100%";
                element33.className="form-control";
                cell33.appendChild(element33);
                
                //cell 34
                var cell34 = row.insertCell(33);
                var element34 = document.createElement("input");
                element34.type = "number";
                element34.name = "total";
                element34.required=true;
                element34.disabled=true;
                element34.style.width="100%";
                element34.className="form-control";
                cell34.appendChild(element34);
                
                //cell 34
                var cell34 = row.insertCell(33);
                var element34 = document.createElement("input");
                element34.type = "number";
                element34.name = "total";
                element34.required=true;
                element34.disabled=true;
                element34.style.width="100%";
                element34.className="form-control";
                cell34.appendChild(element34);
                
                
            }
            function deleteRow(row)
            {
                var i = row.parentNode.parentNode.rowIndex;
                document.getElementById('myTable').deleteRow(i);
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
        <!--MODAL-->
        <!-- Modal -->
<div id="ShowSheets" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Modal Header</h4>
      </div>
	<br />
	<br />
	<form id="UploadToDatabase">
	  <div class="paragraph">
	    <b>Choose the Age by Group Sex Sheet</b> <br />
            <div id="table1">
            <!--radio button-->
            </div>
	    <input type="button" value="Submit">
        <span style=color:red id="radio_error"></span>
	  </div>
        </form>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
      </div>
    </div>

  </div>
</div>
        <!--MODAL END HERE-->
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
                    <form id="UploadExcel" >
                        <input id="file" name="file" type="file" />
                        <input  type="submit" value="Submit" />
                    </form>
                    <br><br>
                    <!-- table -->
                    <div class="box box-danger">
                        <div class="box-header with-border">
                            <h2 class="box-title">Input manually the forms</h2>
                            <div class="box-tools pull-right">
                                <button class="btn btn-flat btn-warning btn-sm" onClick="myFunction()"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Add Barangay</button>
                            </div>
                          <!-- /.box-tools -->
                        </div>
                        
                        <div class="body">
                            <div class="box-body">
                                <div style="overflow-x: scroll">
                                <table class="table table-striped" id="myTable" style="width:1000px">
                                    <tr>
                                        <th><center>Disease</center></th>
                                        <th colspan="2"><center>Under 1</center></th>
                                        <th colspan="2"><center>1-4</center></th>
                                        <th colspan="2"><center>5-9</center></th>
                                        <th colspan="2"><center>10-14</center></th>
                                        <th colspan="2"><center>15-19</center></th>
                                        <th colspan="2"><center>20-24</center></th>
                                        <th colspan="2"><center>25-29</center></th>
                                        <th colspan="2"><center>30-34</center></th>
                                        <th colspan="2"><center>35-39</center></th>
                                        <th colspan="2"><center>40-44</center></th>
                                        <th colspan="2"><center>45-49</center></th>
                                        <th colspan="2"><center>50-54</center></th>
                                        <th colspan="2"><center>55-59</center></th>
                                        <th colspan="2"><center>60-64</center></th>
                                        <th colspan="2"><center>65&above</center></th>
                                        <th><center>M</center></th>
                                        <th><center>F</center></th>
                                        <th><center>Total</center></th>
                                    </tr>
                                    <tr>
                                        <th></th>
                                        <th><center>M</center></th>
                                        <th><center>F</center></th>
                                        <th><center>M</center></th>
                                        <th><center>F</center></th>
                                        <th><center>M</center></th>
                                        <th><center>F</center></th>
                                        <th><center>M</center></th>
                                        <th><center>F</center></th>
                                        <th><center>M</center></th>
                                        <th><center>F</center></th>
                                        <th><center>M</center></th> 
                                        <th><center>F</center></th>
                                        <th><center>M</center></th>
                                        <th><center>F</center></th>
                                        <th><center>M</center></th>
                                        <th><center>F</center></th>
                                        <th><center>M</center></th>
                                        <th><center>F</center></th>
                                        <th><center>M</center></th>
                                        <th><center>F</center></th>
                                        <th><center>M</center></th>
                                        <th><center>F</center></th>
                                        <th><center>M</center></th>
                                        <th><center>F</center></th>
                                        <th><center>M</center></th>
                                        <th><center>F</center></th>
                                        <th><center>M</center></th>
                                        <th><center>F</center></th>
                                        <th><center>M</center></th>
                                        <th><center>F</center></th>
                                        <th></th>
                                    </tr>
                                        <tr>
                                            <td>
                                                <!--<select class="form-control select2" style="width: 200px;">
                                                    <option selected="selected" value="0"></option>
                                                    <option>Abdominal Malignancy</option>
                                                    <option>Abdominal Mass</option>
                                                    <option>Accidents</option>
                                                    <option>Acid Peptic Dis</option>
                                                    <option>Acute Alumonia Heparatis</option>
                                                    <option>Acute Cerebral Infraction</option>
                                                    <option>Acute Cerebral Infraction</option>
                                                    <option>Acute Cerebral Infraction</option>
                                                    <option>Acute Cerebral Infraction</option>
                                                    <option>Acute Cerebral Infraction</option>
                                                  </select>-->
                                                <input type="disease" class="form-control" placeholder="Disease" style="width: 200px;">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="m1" style="width:80px">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="f1"style="width:80px">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="m2" style="width:80px">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="f2" style="width:80px"> 
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="m3" style="width:80px">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="f3" style="width:80px">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="m4" style="width:80px">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="f4" style="width:80px">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="m5" style="width:80px">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="f5" style="width:80px">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="m6" style="width:80px">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="f6" style="width:80px">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="m7" style="width:80px">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="f7" style="width:80px">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="m8" style="width:80px">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="f8" style="width:80px">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="m9" style="width:80px">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="f9" style="width:80px">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="m10" style="width:80px">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="f10" style="width:80px">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="m11" style="width:80px">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="f11" style="width:80px">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="m12" style="width:80px">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="f12" style="width:80px">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="m13" style="width:80px">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="f13" style="width:80px">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="m14" style="width:80px">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="f14" style="width:80px">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="m15" style="width:80px">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="f15" style="width:80px">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="mt" disabled="true" style="width:80px">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="ft" disabled="true" style="width:80px">
                                            </td>
                                            <td>
                                                <input type="number" class="form-control" onChange="calculate()" name="total" disabled="true" style="width:80px">
                                            </td>
                                            <td>
                                                <button class="btn btn-flat btn-danger btn-sm" id="delPOIbutton" onclick="deleteRow(this)"><span class="glyphicon glyphicon-minus" aria-hidden="true"></span></button>
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
