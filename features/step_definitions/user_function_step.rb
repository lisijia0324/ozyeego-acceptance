When /^I click (.*)$/ do |link|
  click_link(link)
end 
Then /^I should see note form$/ do
 page.should have_xpath('//form[@action="/retro/notes"]')
end

And /^I fill in (.*) with (.*)$/ do |filed, details|
  within(:xpath, "//form[@action='/restro/notes']") do 
    fill_in "#{field}", :with => "#{details}"
  end
end

And /^I select Type as (Positive|Nagitive|Pazzle)$/ do |option|
  find("option[@value=#{option}]").click
end

Then /^I should see a (.*) message$/ do |message|
  
  case message
  when "greeting"
    page.should have_content('You are now logged in as')
  when "welfare"
    page.should have_content('You have been logged out')
  when "successful"
    page.should have_content('') 
  when "delete"
    page.should have_content('')
  end
  
end

And /^There has some note created before$/ do
  page.should have_xpath('')
end

Then /^I should see a list of notes$/ do
end

=begin
When /^I click (+|-)$/ do |vote|
  if button == "+"? vote+=1: vote-=1
end

Then /^I can vote 1 more for specific note$/ do
  
end
=end