module Jquery
  module Helpers

    # Creates a link tag to a given url or path and ensures that the linke will be rendered
    # as jquery modal dialog
    #
    # ==== Signatures
    #
    #   link_to(body, url, html_options = {})
    #   link_to(body, url)
    #
    def link_to_modal(body, url, html_options = {})
      # extend the html_options
      html_options[:rel] = "modal:open"

      # check if we have an id
      html_options[:id] = UUIDTools::UUID.timestamp_create().to_s unless html_options.has_key?(:id)

      # perform the normal link_to operation
      html_link = link_to(body, url, html_options)

      # add the javascript portion
      js_code ="
<script>
    $('##{html_options[:id]}').on($.modal.AJAX_SUCCESS_DONE, function() {
        $('form').submit(function(){
            $.ajax({
                type: this.method,
                url: this.action + '.json',
                data: $(this).serialize(),
                dataType: 'html',
                success: function(data)
                {
                    $.modal.close();
                },
                error: function(data)
                {
                    alert('It as not possible the perform the operation');
                }
            });
            return false;
        });
    });
</script>"

      # emit both
      "#{html_link} #{js_code}".html_safe
    end
  end
end