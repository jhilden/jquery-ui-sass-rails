# -*- encoding: utf-8 -*-
require File.expand_path('../lib/jquery/ui/sass/rails/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = "jquery-ui-sass-rails"
  s.version     = Jquery::Ui::Sass::Rails::VERSION
  s.authors     = ["Jakob Hilden"]
  s.email       = ["jakobhilden@gmail.com"]
  s.homepage    = "https://github.com/jhilden/jquery-ui-sass-rails"
  s.summary     = "jQuery UI stylesheets packaged as Sass files for the Rails asset pipeline"
  s.description = "jQuery UI's CSS packaged as Sass stylesheets (with variables) for the Rails 3.1+ asset pipeline"

  s.required_rubygems_version = ">= 1.3.6"

  s.add_dependency "railties", ">= 3.1.0"
  s.add_dependency "jquery-rails"
  s.add_dependency "jquery-ui-rails", ">= #{Jquery::Ui::Sass::Rails::JQUERY_UI_RAILS_VERSION}"

  s.add_development_dependency "json", "~> 1.7"

  s.files        = `git ls-files`.split("\n").reject { |f| f =~ /^testapp|^jquery-ui|^jquery-ui-rails|^jquery-ui-themes/ }
  s.executables  = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_path = 'lib'
end
