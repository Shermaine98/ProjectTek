var isExcel = function (name) {
    return name.match(/xls$/i);
};


$(document).on('submit', '#UploadExcel', function (e) {
    e.preventDefault();
    var file = $('[name="file"]');
    var filename = $.trim(file.val());
    if (!isExcel(filename)) {
        alert('Please Put a Valid Excel 2004?? File');
        return;
    } else {
        $.ajax({
            url: 'UploadServlet',
            type: 'POST',
            enctype: "multipart/form-data",
            dataType: 'json',
            data: new FormData(document.getElementById("UploadExcel")),
            processData: false,
            contentType: false,
            success: function (data) {
                var i;
                $("#ShowSheets").modal("show");
                for (i = 0; i < data.length; i++) {
                    var radioBtn = $('<input type="radio" name="rbtnCount" value =' + data[i] + '>' + data[i] + '<br/>');
                    radioBtn.appendTo('#table1');
                }
            }
        });
        return false;
    }
});



$(document).on('submit', '#UploadToDatabase', function (e) {
    e.preventDefault();

    var fd = new FormData();
    
    var file_data = object.get(0).files[i]; // for multiple files
    var other_data = $('UploadToDatabase').serialize();
    
    fd.append("file", file_data);
    fd.append("UploadToDatabase", other_data);
        
    console.log(other_data);

    var rbtnCounts = document.getElementsByName('file');
    var rbtnCounts = document.getElementsByName('rbtnCount');

    var rate_value;
    var intCount;
    window.alert(rbtnCounts.length);
    for (var i = 0; i < rbtnCounts.length; i++) {
        if (rbtnCounts[i].checked) {
            rate_value = rbtnCounts[i].value;
            intCount = i;
            console.log(intCount);
            console.log(rbtnCounts.value);
            $('input.SheetValue').val(intCount);
        }
    }

    $.ajax({
        url: 'UploadToDatabase',
        type: 'POST',
       // enctype: "multipart/form-data",
        // dataType:'json',
        data: fd,
        processData: false,
        contentType: false,
        success: function () {
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