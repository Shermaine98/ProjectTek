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
                   //@todo for loop here and add/print to modal
                 //  var radioBtn =null;
                   for (i = 0; i < data.length; i++) {
                 var radioBtn = $('<input type="radio" name="rbtnCount" value ='+ data[i] +'>'+ data[i]+'<br/>');
                   radioBtn.appendTo('#table1');    
            }
                     
             //  }else{
               //    alert('Please Put a Valid Excel Sheet');
               //}
               
               //
               
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
            data: new FormData(document.getElementById("UploadToDatabase")),
            
            processData: false,
            contentType: false,
           success: function(){
                 alert('success');
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