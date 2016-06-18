<%-- 
    Document   : hMorbidityReport
    Created on : Jun 13, 2016, 11:58:45 AM
    Author     : Gian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../JSPImports/importsAide.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Morbidity Report</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <script src="js/UploadFile.js" type="text/javascript"></script>
        <link rel="stylesheet" href="AdminLTE/plugins/select2/select2.min.css">

        <script>
            function deleteRow(row)
            {
                var i = row.parentNode.parentNode.rowIndex;
                document.getElementById('myTable').deleteRow(i);
            }
            
            function calculate() {
            var table = document.getElementById("myTable");
            var rowCount = table.rows.length;
            var sum = 0;
            var ftotal = 0;
            var mtotal = 0;
            for(var i = 2; i<rowCount ; i++){
                     
                    var m1 = document.getElementById("myTable").rows[i].cells[1].children[0].value;
                    var f1 = document.getElementById("myTable").rows[i].cells[2].children[0].value;
                    var m2 = document.getElementById("myTable").rows[i].cells[3].children[0].value;
                    var f2 = document.getElementById("myTable").rows[i].cells[4].children[0].value;
                    var m3 = document.getElementById("myTable").rows[i].cells[5].children[0].value;
                    var f3 = document.getElementById("myTable").rows[i].cells[6].children[0].value;
                    var m4 = document.getElementById("myTable").rows[i].cells[7].children[0].value;
                    var f4 = document.getElementById("myTable").rows[i].cells[8].children[0].value;
                    var m5 = document.getElementById("myTable").rows[i].cells[9].children[0].value;
                    var f5 = document.getElementById("myTable").rows[i].cells[10].children[0].value;
                    var m6 = document.getElementById("myTable").rows[i].cells[11].children[0].value;
                    var f6 = document.getElementById("myTable").rows[i].cells[12].children[0].value;
                    var m7 = document.getElementById("myTable").rows[i].cells[13].children[0].value;
                    var f7 = document.getElementById("myTable").rows[i].cells[14].children[0].value;
                    var m8 = document.getElementById("myTable").rows[i].cells[15].children[0].value;
                    var f8 = document.getElementById("myTable").rows[i].cells[16].children[0].value;
                    var m9 = document.getElementById("myTable").rows[i].cells[17].children[0].value;
                    var f9 = document.getElementById("myTable").rows[i].cells[18].children[0].value;
                    var m10 = document.getElementById("myTable").rows[i].cells[19].children[0].value;
                    var f10 = document.getElementById("myTable").rows[i].cells[20].children[0].value;
                    var m11 = document.getElementById("myTable").rows[i].cells[21].children[0].value;
                    var f11 = document.getElementById("myTable").rows[i].cells[22].children[0].value;
                    var m12 = document.getElementById("myTable").rows[i].cells[23].children[0].value;
                    var f12 = document.getElementById("myTable").rows[i].cells[24].children[0].value;
                    var m13 = document.getElementById("myTable").rows[i].cells[25].children[0].value;
                    var f13 = document.getElementById("myTable").rows[i].cells[26].children[0].value;
                    var m14 = document.getElementById("myTable").rows[i].cells[27].children[0].value;
                    var f14 = document.getElementById("myTable").rows[i].cells[28].children[0].value;
                    var m15 = document.getElementById("myTable").rows[i].cells[29].children[0].value;
                    var f15 = document.getElementById("myTable").rows[i].cells[30].children[0].value;
                    
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
                  
                  //total
                    sum = parseInt(m1) + parseInt(f1)
                        +parseInt(m2) + parseInt(f2)
                        +parseInt(m3) + parseInt(f3)
                        +parseInt(m4) + parseInt(f4)
                        +parseInt(m5) + parseInt(f5)
                        +parseInt(m6) + parseInt(f6)
                        +parseInt(m7) + parseInt(f7)
                        +parseInt(m8) + parseInt(f8)
                        +parseInt(m9) + parseInt(f9)
                        +parseInt(m10) + parseInt(f10)
                        +parseInt(m11) + parseInt(f11)
                        +parseInt(m12) + parseInt(f12)
                        +parseInt(m13) + parseInt(f13)
                        +parseInt(m14) + parseInt(f14)
                        +parseInt(m15) + parseInt(f15);
                    document.getElementById("myTable").rows[i].cells[33].children[0].value = sum;
                    
                    //Male total
                    mtotal = parseInt(m1) 
                        +parseInt(m2) + 
                        +parseInt(m3) + 
                        +parseInt(m4) + 
                        +parseInt(m5) + 
                        +parseInt(m6) +
                        +parseInt(m7) +
                        +parseInt(m8) +
                        +parseInt(m9) +
                        +parseInt(m10) + 
                        +parseInt(m11) + 
                        +parseInt(m12) + 
                        +parseInt(m13) + 
                        +parseInt(m14) + 
                        +parseInt(m15);
                    document.getElementById("myTable").rows[i].cells[31].children[0].value = mtotal;
                    
                    //Male total
                    ftotal = parseInt(f1) 
                        +parseInt(f2) + 
                        +parseInt(f3) + 
                        +parseInt(f4) + 
                        +parseInt(f5) + 
                        +parseInt(f6) +
                        +parseInt(f7) +
                        +parseInt(f8) +
                        +parseInt(f9) +
                        +parseInt(f10) + 
                        +parseInt(f11) + 
                        +parseInt(f12) + 
                        +parseInt(f13) + 
                        +parseInt(f14) + 
                        +parseInt(f15);
                    document.getElementById("myTable").rows[i].cells[32].children[0].value = ftotal;
                        
                        
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
                        <small>Upload Morbidity Report here</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><i class="fa fa-files-o"></i> Database</li>
                        <li>Health</li>
                        <li class="active">Morbidity Report</li>
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
                                <button class="btn btn-flat btn-warning btn-sm"  id="add_row"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Add Row</button>
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
                                            <td><input type='text' name='disease' class='form-control' placeholder='Disease' style='width: 200px;'></td>
                                            <td><input type='number' class='form-control' onChange='calculate()' name='m1' style='width:80px' min='0'></td>
                                            <td><input type='number' class='form-control' onChange='calculate()' name='f1'style='width:80px' min='0'></td>
                                            <td><input type='number' class='form-control' onChange='calculate()' name='m2' style='width:80px' min='0'></td>
                                            <td><input type='number' class='form-control' onChange='calculate()' name='f2' style='width:80px' min='0'> </td>
                                            <td><input type='number' class='form-control' onChange='calculate()' name='m3' style='width:80px' min='0'></td>
                                            <td><input type='number' class='form-control' onChange='calculate()' name='f3' style='width:80px' min='0'></td>
                                            <td><input type='number' class='form-control' onChange='calculate()' name='m4' style='width:80px' min='0'></td>
                                            <td><input type='number' class='form-control' onChange='calculate()' name='f4' style='width:80px' min='0'></td>
                                            <td><input type='number' class='form-control' onChange='calculate()' name='m5' style='width:80px' min='0'></td>
                                            <td><input type='number' class='form-control' onChange='calculate()' name='f5' style='width:80px' min='0'></td>
                                            <td><input type='number' class='form-control' onChange='calculate()' name='m6' style='width:80px' min='0'></td>
                                            <td><input type='number' class='form-control' onChange='calculate()' name='f6' style='width:80px' min='0'></td>
                                            <td><input type='number' class='form-control' onChange='calculate()' name='m7' style='width:80px' min='0'></td>
                                            <td><input type='number' class='form-control' onChange='calculate()' name='f7' style='width:80px' min='0'></td>
                                            <td><input type='number' class='form-control' onChange='calculate()' name='m8' style='width:80px' min='0'></td>
                                            <td><input type='number' class='form-control' onChange='calculate()' name='f8' style='width:80px' min='0'></td>
                                            <td><input type='number' class='form-control' onChange='calculate()' name='m9' style='width:80px' min='0'></td>
                                            <td><input type='number' class='form-control' onChange='calculate()' name='f9' style='width:80px' min='0'></td>
                                            <td><input type='number' class='form-control' onChange='calculate()' name='m10' style='width:80px' min='0'></td>
                                            <td><input type='number' class='form-control' onChange='calculate()' name='f10' style='width:80px' min='0'></td>
                                            <td><input type='number' class='form-control' onChange='calculate()' name='m11' style='width:80px' min='0'></td>
                                            <td><input type='number' class='form-control' onChange='calculate()' name='f11' style='width:80px' min='0'></td>
                                            <td><input type='number' class='form-control' onChange='calculate()' name='m12' style='width:80px' min='0'></td>
                                            <td><input type='number' class='form-control' onChange='calculate()' name='f12' style='width:80px' min='0'></td>
                                            <td><input type='number' class='form-control' onChange='calculate()' name='m13' style='width:80px' min='0'></td>
                                            <td><input type='number' class='form-control' onChange='calculate()' name='f13' style='width:80px' min='0'></td>
                                            <td><input type='number' class='form-control' onChange='calculate()' name='m14' style='width:80px' min='0'></td>
                                            <td><input type='number' class='form-control' onChange='calculate()' name='f14' style='width:80px' min='0'></td>
                                            <td><input type='number' class='form-control' onChange='calculate()' name='m15' style='width:80px' min='0'></td>
                                            <td><input type='number' class='form-control' onChange='calculate()' name='f15' style='width:80px' min='0'></td>
                                            <td><input type='number' class='form-control' onChange='calculate()' name='mt' disabled='true' style='width:80px'></td>
                                            <td><input type='number' class='form-control' onChange='calculate()' name='ft' disabled='true' style='width:80px'></td>
                                            <td><input type='number' class='form-control' onChange='calculate()' name='total' disabled='true' style='width:80px'></td>
                                            <td><button class='btn btn-flat btn-danger btn-sm' id='delPOIbutton' onclick='deleteRow(this)'><span class='glyphicon glyphicon-minus' aria-hidden='true'></span></button></td>
                                        </tr>
                                        <tr id="addr1"></tr>
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

<script>
    var i = 1;
    $("#add_row").click(function () {
        $('#addr' + i).html("\
            <td><input type='text' name='disease' class='form-control' placeholder='Disease' style='width: 200px;'></td>\
            <td><input type='number' class='form-control' onChange='calculate()' name='m1' style='width:80px' min='0'></td>\
            <td><input type='number' class='form-control' onChange='calculate()' name='f1'style='width:80px' min='0'></td>\
            <td><input type='number' class='form-control' onChange='calculate()' name='m2' style='width:80px' min='0'></td>\
            <td><input type='number' class='form-control' onChange='calculate()' name='f2' style='width:80px' min='0'> </td>\
            <td><input type='number' class='form-control' onChange='calculate()' name='m3' style='width:80px' min='0'></td>\
            <td><input type='number' class='form-control' onChange='calculate()' name='f3' style='width:80px' min='0'></td>\
            <td><input type='number' class='form-control' onChange='calculate()' name='m4' style='width:80px' min='0'></td>\
            <td><input type='number' class='form-control' onChange='calculate()' name='f4' style='width:80px' min='0'></td>\
            <td><input type='number' class='form-control' onChange='calculate()' name='m5' style='width:80px' min='0'></td>\
            <td><input type='number' class='form-control' onChange='calculate()' name='f5' style='width:80px' min='0'></td>\
            <td><input type='number' class='form-control' onChange='calculate()' name='m6' style='width:80px' min='0'></td>\
            <td><input type='number' class='form-control' onChange='calculate()' name='f6' style='width:80px' min='0'></td>\
            <td><input type='number' class='form-control' onChange='calculate()' name='m7' style='width:80px' min='0'></td>\
            <td><input type='number' class='form-control' onChange='calculate()' name='f7' style='width:80px' min='0'></td>\
            <td><input type='number' class='form-control' onChange='calculate()' name='m8' style='width:80px' min='0'></td>\
            <td><input type='number' class='form-control' onChange='calculate()' name='f8' style='width:80px' min='0'></td>\
            <td><input type='number' class='form-control' onChange='calculate()' name='m9' style='width:80px' min='0'></td>\
            <td><input type='number' class='form-control' onChange='calculate()' name='f9' style='width:80px' min='0'></td>\
            <td><input type='number' class='form-control' onChange='calculate()' name='m10' style='width:80px' min='0'></td>\
            <td><input type='number' class='form-control' onChange='calculate()' name='f10' style='width:80px' min='0'></td>\
            <td><input type='number' class='form-control' onChange='calculate()' name='m11' style='width:80px' min='0'></td>\
            <td><input type='number' class='form-control' onChange='calculate()' name='f11' style='width:80px' min='0'></td>\
            <td><input type='number' class='form-control' onChange='calculate()' name='m12' style='width:80px' min='0'></td>\
            <td><input type='number' class='form-control' onChange='calculate()' name='f12' style='width:80px' min='0'></td>\
            <td><input type='number' class='form-control' onChange='calculate()' name='m13' style='width:80px' min='0'></td>\
            <td><input type='number' class='form-control' onChange='calculate()' name='f13' style='width:80px' min='0'></td>\
            <td><input type='number' class='form-control' onChange='calculate()' name='m14' style='width:80px' min='0'></td>\
            <td><input type='number' class='form-control' onChange='calculate()' name='f14' style='width:80px' min='0'></td>\
            <td><input type='number' class='form-control' onChange='calculate()' name='m15' style='width:80px' min='0'></td>\
            <td><input type='number' class='form-control' onChange='calculate()' name='f15' style='width:80px' min='0'></td>\
            <td><input type='number' class='form-control' onChange='calculate()' name='mt' disabled='true' style='width:80px'></td>\
            <td><input type='number' class='form-control' onChange='calculate()' name='ft' disabled='true' style='width:80px'></td>\
            <td><input type='number' class='form-control' onChange='calculate()' name='total' disabled='true' style='width:80px'></td>\
            <td><button class='btn btn-flat btn-danger btn-sm' id='delPOIbutton' onclick='deleteRow(this)'><span class='glyphicon glyphicon-minus' aria-hidden='true'></span></button></td>");
            $('#myTable').append('<tr id="addr' + (i + 1) + '"></tr>');

        i++;
    });
</script>

  <%@ include file="../JSPImports/footer.html" %>
</html>
