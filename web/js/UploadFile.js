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
               if(data.isValid){
                   $("#ShowSheets").modal("show");
               }else{
                   alert('Please Put a Valid Excel Sheet');
               }
           }
        });
        return false;
    } });