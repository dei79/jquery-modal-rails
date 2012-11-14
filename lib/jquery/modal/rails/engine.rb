module Jquery
  module Modal
    module Rails
      class Engine < ::Rails::Engine
        config.generators do |g|
          g.test_framework :rspec
          g.integration_tool :rspec
        end
      end
    end
  end
end
