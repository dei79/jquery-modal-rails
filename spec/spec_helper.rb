ENV['RAILS_ENV'] = 'test'
ENGINE_RAILS_ROOT = File.join(File.dirname(__FILE__), '../')

require File.expand_path("../../demoapp/config/environment", __FILE__)

require 'bundler'
Bundler.require(:default)

require 'rspec/rails'
require 'shoulda'

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[File.join(ENGINE_RAILS_ROOT, "spec/support/**/*.rb")].each {|f| require f }

#
# General config for RSpec
RSpec.configure do |config|

end
