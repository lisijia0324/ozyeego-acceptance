Then /^I should have one screenshot of ozyeego$/ do
  visit('http://www.ozyeego.com')
  page.save_screenshot('out/ozyeego.png')
end

Then /^I should have one screenshot of apple device (.*) size$/ do |series|

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

Then /^I have one screenshot in (.*) \* (.*) screen size$/ do |width, height|
  puts width
  puts height
  page.driver.browser.manage.window.resize_to(width.to_i, height.to_i)
  page.save_screenshot("out/screenshot_#{width}_#{height}.png")
end