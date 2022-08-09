$(function() {
    $('.deleteConfirm').click(function(){
        return alert('Are you sure?'); // answer is a boolean
    });
});
$(function() {
    $('.updateConfirm').click(function(){
        return alert(''); // answer is a boolean
    });
});
/*
$(function updateBox(){
    //console.log("params");
    $("#show-popup-btn").click(function(){
        $("#popup-container").show();
    })
    $("#popup-close").click(function(){
        $("#popup-container").hide();
    });
});
*/

// $('#release_type').onChange(function(){
//     var updated_release_type = $this.val();
//     $('#updated_relase_type').val(updated_release_type);
// });


function UpdateConfirm(){
        $("#show-popup-btn").click(function(){
        $("#popup-container").show();
    })
    $("#popup-close").click(function(){
        $("#popup-container").hide();
    });
  /*  //$('#updated_release_type').empty();

    var updated_release_type = $('#release_type').val();
    // $('#updated_release_type').val(updated_release_type);
     $('#updated_release_type').html(updated_release_type);*/


    // var updated_release_name = $this.val();
    // $('#updated_relase_name').val(updated_release_name);
}
    $("#clickConfirm").click(function () {
        $("#submit_id").submit();
    });
/*
$(function () {
    $('.updateConfirm').click(function () {
        $("#popup-container").show();
    });
    $("#popup-close").click(function () {
        $("#popup-container").hide();
    });
});*/
/*

function ConfirmDialog(message) {
    $('<div></div>').appendTo('body')
        .html('<div><h6>' + message + '?</h6></div>')
        .dialog({
            modal: true,
            title: 'Are you sure',
            zIndex: 10000,
            autoOpen: true,
            width: 'auto',
            resizable: false,
            buttons: {
                Yes: function() {

                    // $('body').append('<h1>Confirm Dialog Result: <i>Yes</i></h1>');
                    // $(this).dialog("close");
                }
                // No: function() {
                //     // $('body').append('<h1>Confirm Dialog Result: <i>No</i></h1>');
                //
                //     // $(this).dialog("close");
                // }
            }
/!*            close: function(event, ui) {
                alert("df")
                $(this).remove();
                alert("df")
            }*!/
        });
}
*/

/*
// $(function (){
    $('.updateConfirm').click(function (e){
        e.preventDefault();

        ConfirmDialog('Are you sure');
    });
// });
*/


// $(function() {
//     $('.updateConfirm').click(function(){
//         $('.updateConfirmModal').addClass('showModal')
//     });
//     $('.closeModal').click(function(){
//         $('.updateConfirmModal').removeClass('showModal')
//     });
// });


$(function (){
    $('.createConfirm').click(function (){
        return confirm('Created')
    });
});

$(function() {
    $("#item").click(function() {
        $("#submenu").slideToggle(500);
    });
});

/*$(function(){
    $(".edited").click(function(){
        $("#popup-container").show();
    })
    $("#popup-close").click(function(){
    $("#popup-container").hide();
});
});*/

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
