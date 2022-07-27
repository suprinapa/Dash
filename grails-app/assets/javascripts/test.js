$(function() {
    $('.deleteConfirm').click(function(){
        return confirm('Are you sure?'); // answer is a boolean
    });
});

$(function() {
    $("#item").click(function() {
        $("#submenu").slideToggle(500);
    });
});
/*$('#myModal').on('shown.bs.modal', function () {
    $('#myInput').trigger('focus')
})*/
/*

jQuery(document).ready(function () {

    jQuery('.delete-confirmation').confirm({
        title: 'Delete Confirmation!',
        content: 'Are you sure want to delete?'
    });

    jQuery('.card-body').on('click', '.add-new-number ', function () {
        var _this = jQuery(this);
        ajax.call({
            url: "http://localhost:8080/Dash/" + "releaseNotes/create",
            dataType: "html",
            success: function (content) {
                jQuery('.details-panel').append(content);
                _this.removeClass("add-new-number");
                _this.removeClass("btn-primary");
                _this.addClass("remove-number");
                _this.addClass("btn-danger");
                _this.find(".fas").removeClass("fa-plus-circle");
                _this.find(".fas").addClass("fa-trash");
            }
        });
    });

    jQuery('.card-body').on('click', '.remove-number', function () {
        var _this = jQuery(this),
            releaseNotesId = _this.attr("data-id");

        jQuery.confirm({
            title: 'Delete Confirmation!',
            content: 'Are you sure want to delete?',
            buttons: {
                confirm: {
                    text: 'Yes',
                    btnClass: 'btn-blue',
                    action: function () {
                        if(releaseNotesId !== undefined){
                            ajax.call({
                                url: "http://localhost:8080/Dash/" + "releaseNotes/delete/" + releaseNotesId,
                                success: function (content) {
                                    if(content.success === true){
                                        messageBox.showMessage(true, content.info);
                                        _this.closest(".form-group").remove();
                                    }else{
                                        messageBox.showMessage(false, content.info)
                                    }
                                }
                            });
                        }else{
                            _this.closest(".form-group").remove();
                        }
                    }
                },
                cancel: {
                    text: 'No'
                }
            }
        });

    });

});*!/
*/
