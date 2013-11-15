Given /^I am on the homepage of Warpgate$/ do
  visit('http://www.warpgate.jit.su')
end

And /^no one is log in now$/ do 
  if page.has_xpath?('//ul/li[@href="logout"]')
    click_link('Logout')
  else
    click_link('Login')
  end
   
end

When /^I log in (.*) with (.*)$/ do |field, details|
  
  within(:xpath, "//form[@action='/sessions']") do 
    fill_in "#{field}", :with => "#{details}"
  end
end

And /^I click submit button$/ do
  click_button('Submit')
end

Then /^I should see a greeting message$/ do
  page.should have_content('You are now logged in as yuanfan')
end

And /^I log in as (.*)$/ do |user|
  page.should have_content("You are now logged in as #{user}")
end

When /^I log out Warpgate$/ do
  click_link('Logout')
end

Then /^I should see a welfare message$/ do
  page.should have_content('You have been logged out')
end

Then /^I should see admin page with delete notes function$/ do
  page.should have_content('Destroy All Notes')
end