require 'rspec/expectations'
require 'capybara'
require 'capybara/selenium'
require 'capybara/cucumber'
require 'test/unit/assertions'

World(Test::Unit::Assertions)

Capybara.default_driver = :selenium
World(Capybara)