(function($) {

    // Automatically bind links with rel="modal:open:ajaxpost" to
    $(document).on('click', 'a[rel="modal:open:ajaxpost"]', function(event)
    {
        //ensure that our custom events will be received
        event.preventDefault();

        // show the dialog
        $(this).modal();

        // bind the event
        $(this).bind($.modal.AJAX_COMPLETE, function() {
            $('form').submit(function(){

                // show the spinner again
                $.modal.showSpinner();

                // send the ajax call
                $.ajax({
                    type: this.method,
                    url: this.action + '.json',
                    data: $(this).serialize(),
                    dataType: 'html',
                    success: function(data)
                    {
                        // hide the sinner
                        $.modal.hideSpinner();

                        // close the dialog
                        $.modal.close();
                    },
                    error: function(data)
                    {
                        // hide the sinner
                        $.modal.hideSpinner();

                        //alert
                        alert('It as not possible the perform the operation');
                    }
                });
                return false;
            });
        });


        // return false to prevent normal anchor action
        return false;
    });
})(jQuery);
