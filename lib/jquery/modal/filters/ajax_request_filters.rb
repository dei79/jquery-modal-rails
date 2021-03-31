module Jquery
  module Filters

    def self.included(base)

      #
      # This filter disables the layout for all AJAX requests so a formular in the dialog
      # can be presentend in the layout of the master form
      #
      base.send :before_action do |controller|
        (controller.action_has_layout = false) if controller.request.xhr?
      end
    end

  end
end


