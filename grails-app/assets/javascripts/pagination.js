$(document).ready(function() {
    setupGridAjax();
});

// Turn all paging links into ajax requests for the grid
function setupGridAjax() {
    $("#grid").find(".pagination a").on('click', function(event) {
        event.preventDefault();
        var url = $(this).attr('href');

        var grid = $(this).parents("table.ajax");
        $(grid).html($("#spinner").html());

        $.ajax({
            type: 'GET',
            url: url,
            success: function(data) {
                $(grid).fadeOut('fast', function() {$(this).html(data).fadeIn('slow');});
            }
        });
    });
}