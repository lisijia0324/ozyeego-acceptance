Before do |scenario|
  # print out each scenario title
  puts "Starting scenario: #{scenario.title}"
end

After do |scenario|
  # print out failure message after failed scenario and  take screenshot

  if scenario.failed?
    fail_message = "#{scenario.exception.message}"
    puts fail_message 
    page.save_screenshot("out/failure_at_#{scenario.title}.png")
  end  
end


