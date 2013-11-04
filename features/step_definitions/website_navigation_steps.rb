@chrome
Given /^I am on homepage of Ozyeego$/ do 
  visit('/')
end

When /^I click on (.*) button$/ do |button|
  click_link(button)
end

Then /^I should be on products page$/ do 
  expect(page).to have_title "产品"
end
   
And /^I should see table of product list$/ do
  page.should have_css('div.navbar-inner')
end

#ambiguous test to check opened page
=begin
Then /^I should be on (.*) subpage$/ do |page|
  #expect(page).to have_title page
end
=end

Then /^I have one screenshot in (.*) \* (.*) screen size$/ do |width, height|
  puts width
  puts height
  page.driver.browser.manage.window.resize_to(width.to_i, height.to_i)
  page.save_screenshot("out/screenshot_#{width}_#{height}.png")
end

Then /^I should have Blog page open in a new window$/ do 
  visit('http://http://blog.ozyeego.com/')
end

When /^I click on Ozyeego e-commerce shop logo$/ do
  find(:css, "//a[@href='http://ozyeego.taobao.com/index.htm']").click
end

Then /^I should be on Ozyeego e-commerce shop page$/ do
  visit('http://ozyeego.taobao.com/index.htm')
end

Given /^I am on homepage of google$/ do
  visit ('https://www.google.com.au')
end

When /^I search ozyeego$/ do
  fill_in "gbqfq", :with => "ozyeego.com"
  find(:css, "button#gbqfb").click
end

Then /^I should see the link of ozyeego$/ do
  page.should have_content('ozyeego')
end

And /^I click the link of ozyeego$/ do
  click_link('原装正品保障')
end

Then /^I should have one screenshot of ozyeego$/ do
  visit('http://www.ozyeego.com')
  page.save_screenshot('out/ozyeego.png')
end

And /^I should have one screenshot of apple device (.*) size$/ do |series|

  if Capybara.current_driver == :selenium
  window = Capybara.current_session.driver.browser.manage.window

    case series
    when "iPhone3s" || "iPhone4s"
      window.resize_to(320, 480)
    when "iPhone5s"
      window.resize_to(320, 568)
    when "iPad"
      window.resize_to(1036, 1024)
    when "iPadMini"
      window.resize_to(768, 1024)
    else
      puts "not required device"
    end
  
    page.save_screenshot("out/current_device_#{series}.png")
  else
    page.save_screenshot("out/current_driver_#{series}.png") 
  end
end