# -*- encoding: utf-8 -*-
require File.expand_path('../lib/jquery/modal/rails/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = "jquery-modal-rails"
  s.version     = Jquery::Modal::Rails::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Dirk Eisenberg"]
  s.email       = ["dirk.eisenberg@gmail.com"]
  s.homepage    = "https://github.com/dei79/jquery-modal-rails"
  s.summary     = "The simplest possible modal for jQuery for the Rails 3.1+ asset pipeline"
  s.description = "The simplest possible modal for jQuery for the Rails 3.1+ asset pipeline based on https://github.com/kylefox/jquery-modal."

  s.required_rubygems_version = ">= 1.3.6"

  s.add_dependency "railties", ">= 3.2.0", "< 5.0"
  s.add_dependency "thor",     "~> 0.14"
  s.add_dependency "jquery-ui-rails"
  s.add_dependency "uuidtools"

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_path = 'lib'
end
