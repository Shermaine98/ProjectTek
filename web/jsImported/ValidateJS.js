$(function () {
    $("#error-ageGroup").DataTable({
        "paging": false,
        "ordering": true,
        "info": false
    });
    $("#dataTable-ageGroup").DataTable({
        "paging": true,
        "ordering": true,
        "info": false,
        "columnDefs": [
            {
                "targets": [5],
                "visible": false,
                "searchable": false
            },
            {
                "targets": [6],
                "visible": false,
                "searchable": false
            },
            {
                "targets": [7],
                "visible": false
            },
            {
                "targets": [8],
                "visible": false,
                "searchable": false
            },
            {
                "targets": [9],
                "visible": false,
                "searchable": false
            }

        ]
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