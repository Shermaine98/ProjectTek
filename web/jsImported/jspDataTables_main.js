$(function () {
    $("#incomplete").DataTable();
    $("#archived").DataTable();
    $('#saved').DataTable({
        "paging":   false,
        "ordering": false,
        "info":     false
    });
});