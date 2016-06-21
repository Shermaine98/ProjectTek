$(function () {
    $("#dataTableError").DataTable({
        "paging": false,
        "ordering": true,
        "info": false
    });
    $("#dataTable").DataTable({
        "paging": true,
        "ordering": true,
        "info": false
    });
    $("#archived").DataTable({
        "paging": true,
        "ordering": true,
        "info": false
    });
});

function printDiv(divToPrint) {
    var x = document.getElementById(divToPrint);

    var printPage = window.open('', '_blank');
    printPage.document.write(x.innerHTML);
    setTimeout(printPage.print(), 5);

//    window.print();
}

document.getElementById('year').setAttribute('value', new Date().getFullYear());