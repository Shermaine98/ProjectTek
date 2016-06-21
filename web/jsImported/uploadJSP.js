document.getElementById('file').onchange = uploadOnChange;
var isExcel = function (name) {
    return name.match(/xls$/i);
};

function uploadOnChange() {
    var filename = this.value;
    var lastIndex = filename.lastIndexOf("\\");
    if (lastIndex >= 0) {
        filename = filename.substring(lastIndex + 1);
    }

    if (filename != "" && isExcel(filename)) {
        document.getElementById('filename').innerHTML = filename;
        document.getElementById('filename').style.fontStyle = 'italic';
        document.getElementById('filename').style.color = '#cc5200';
        document.getElementById('submit').style.display = "block";
    } else {
        alert('Please The Correct File');
        document.getElementById('filename').style.fontStyle = 'normal';
        document.getElementById('filename').style.color = '#333333';
        document.getElementById('filename').innerHTML = '<i class="fa fa-cloud-upload"></i> Upload File';
        document.getElementById('submit').style.display = "none";
    }
}

document.getElementById('year').setAttribute('value', new Date().getFullYear());