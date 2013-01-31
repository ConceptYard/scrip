$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "scrip/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "scrip"
  s.version     = Scrip::VERSION
  s.authors     = ["Robert Schmitt"]
  s.email       = ["bob@conceptyard.com"]
  s.homepage    = "TODO"
  s.summary     = "A subscription service system to create and manage purchases and payments in a RoR application."
  s.description = "scrip is a subscription service system packaged as a Rails Engine. 'Subscription' is defined as the purchasing of a right to access one or more resources (typically a web application). Subscriptions can either be free or paid. The engine will provide a management interface and a reporting service for control and monitoring. scrip is meant to integrate with external payment services such as PayPal PayFlow and Spree Gateway for handling credit card transactions. Support for payment by check and purchase order is also provided."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.11"
  s.add_dependency "jquery-rails"
  s.add_dependency 'haml', '>= 3.1.4'
  s.add_dependency 'bootstrap-sass', '~> 2.2.2.0'
  s.add_dependency 'activemerchant'

  s.add_development_dependency "pg"
end
