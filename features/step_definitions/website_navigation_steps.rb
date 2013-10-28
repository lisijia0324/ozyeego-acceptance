Given /^I am on homepage of Ozyeego$/ do 
  visit('/')
end

When /^I click on 产品 button$/ do 
  click_link('产品')
end

Then /^I should be on products page$/ do 
  expect(page).to have_title "产品"
end   

When /^I click on 博客 button$/ do 
  click_link('博客')
end

Then /^I should be on Blog page$/ do 
  visit('http://http://blog.ozyeego.com/')
end

When /^I click on (.*) page$/ do |button|
  click_link(button)
end

Then /^I should be on (.*) subpage$/ do |page|
  page.should have_xpath('html/head/title', page)
end
