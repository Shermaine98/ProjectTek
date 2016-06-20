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
});

$(function () {
    $(".preload").fadeOut(9000, function () {
        $(".loading").fadeIn(1000);
    });
});

function printDiv(divName) {
    var printContents = document.getElementById(divName).innerHTML;
    var originalContents = document.body.innerHTML;

    document.body.innerHTML = printContents;

    window.print();

    document.body.innerHTML = originalContents;
}

document.getElementById('year').setAttribute('value', new Date().getFullYear());