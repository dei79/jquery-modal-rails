require 'uuidtools'
require 'jquery/modal/helpers/link_helpers.rb'

module Jquery
  module Helpers
  end
end

ActionView::Base.send :include, Jquery::Helpers
