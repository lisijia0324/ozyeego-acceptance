require 'rspec/expectations'
require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'

 Capybara.app_host = "http://www.ozyeego.com"
#Capybara.app_host = "http://localhost:4000"

#Capybara.javascript_driver = :webkit

Capybara.default_driver = :selenium

=begin
Capybara.register_driver :selenium_firefox do |app|
  Capybara::Driver::Selenium.new(app, :browser => :firefox)
end

Capybara.register_driver :selenium_chrome do |app|
  Capybara::Driver::Selenium.new(app, :browser => :chrome)
end

Before('@firefox') do
  Capybara.current_driver = :selenium_firefox
end

Before('@chrome') do
  Capybara.current_driver = :selenium_chrome
end
=end
World(Capybara)

