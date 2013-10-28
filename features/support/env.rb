require 'rspec/expectations'
require 'capybara'
require 'capybara/cucumber'

Capybara.app_host = "http://www.ozyeego.com"
Capybara.default_driver = :selenium
World(Capybara)