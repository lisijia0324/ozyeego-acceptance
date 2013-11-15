require 'rspec/expectations'
require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.app_host = "http://www.ozyeego.com"

#Capybara.javascript_driver = :webkit

Capybara.default_driver = :selenium


World(Capybara)

