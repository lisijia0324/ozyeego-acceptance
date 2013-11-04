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
   
Then /^I should see table of product list$/ do
  page.should have_css('div.navbar-inner')
end

#ambiguous test to check opened page
=begin
Then /^I should be on (.*) subpage$/ do |page|
  #expect(page).to have_title page
end
=end

Then /^I should have Blog page open in a new window$/ do 
  visit('http://http://blog.ozyeego.com/')
end

When /^I click on Ozyeego e-commerce shop logo$/ do
  find(:xpath, "//a[@href='http://ozyeego.taobao.com/index.htm']").click
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

When /^I click the link of ozyeego$/ do
  click_link('原装正品保障')
end