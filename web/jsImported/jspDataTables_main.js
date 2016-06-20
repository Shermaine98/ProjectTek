$(function () {
    $("#incomplete").DataTable({
        "paging":   false,
        "ordering": true,
        "info":     false
    });
    $("#archived").DataTable({
        "paging":   false,
        "ordering": true,
        "info":     false
    });
    $('#saved').DataTable({
        "paging":   false,
        "ordering": true,
        "info":     false
    });
});