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

      # perform the normal link_to operation
      link_to(body, url, html_options)
    end
  end
end