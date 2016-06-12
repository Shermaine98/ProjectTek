/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var isExcel = function(name) {
    return name.match(/xls$/i);
};
    

 $(document).on('submit', '#UploadExcel', function(e){
  e.preventDefault();
  var file = $('[name="file"]');
  
  var filename = $.trim(file.val());
        
      if (!isExcel(filename)){
            alert('Please Put a Valid Excel 2004?? File');
     return;
 }else{
        $.ajax({
            url:'UploadServlet',
            type:'POST',
             enctype:"multipart/form-data",
            dataType:'json',
            data: new FormData(document.getElementById("UploadExcel")),
            processData: false,
            contentType: false,
           success: function(data){
               var i;
                //  if(data.isValid){
                   $("#ShowSheets").modal("show");
                //  var radioBtn =null;
                //  i want to put file name here
                //    var textbox = $('<input type="text" name="rbtnCount" value =i want to put file name here hahaaha <br/>');
                //textbox.appendTo('#table1'); 
               for (i = 0; i < data.length; i++) {
                 var radioBtn = $('<input type="radio" name="rbtnCount"'+i+' value ='+ data[i] +'>'+ data[i]+'<br/>');
                   radioBtn.appendTo('#table1');    
                     window.alert("hello");
                     var rate_value = document.getElementsByName('rbtnCount'+i);
                     window.alert(rate_value);
                if (document.getElementsByName('rbtnCount'+i).checked) {
                    rate_value = document.getElementsByName('rbtnCount'+i).value;
                    
               }
               
                  }
                //  }else{
                //    alert('Please Put a Valid Excel Sheet');
                //}
           }
        });
        return false;
    } });



$(document).on('submit', '#UploadToDatabase', function(e){
  e.preventDefault();
        $.ajax({
            url:'UploadToDatabase',
            type:'POST',
            enctype:"multipart/form-data",
            dataType:'json',
            data: new FormData(document.getElementById("UploadExcel")),
            processData: false,
            contentType: false,
           success: function(){
            }
           });
        return false;
    });


//function validate() {
//	    var radioError = checkRadio();
//		
//		if (radioError) {
//		  document.frmOne.submit();
//		}
//		else {
//		  return false;
//		}
//	  }
//	  function checkRadio() {
//	    var headphone = "";
//		var len = document.frmOne.headphone.length;
//		var i;
//		
//		for (i = 0; i < len; i++) {
//		  if (document.frmOne.headphone[i].checked) {
//		    headphone = document.frmOne.headphone[i].value;
//			break;
//	      }
//		}
//		
//		if (headphone == "") {
//		  document.getElementById("radio_error").innerHTML = "You do not have a choice selected.  Please select a choice.";
//		  return false;
//		}
//		else {
//		  document.getElementById("radio_error").innerHTML = "";
//		  return true;
//		}
//	  }