Feature: Ozyeego Website Navigation
	As a potential customer of Ozyeego
	I want to browser the service of Ozyeego.com
	So that I am able to click on menu item
	
Scenario: going to 产品 page service
	Given I am on homepage of Ozyeego
	When I click on 产品 button
	Then I should be on products page 
	And I should see table of product list

Scenario: Taking screenshot of Ozyeego in different device
	Given I am on homepage of Ozyeego
	When I click on 关于我们 button
	Then I have one screenshot in 768 * 1024 screen size
		
Scenario: going to 博客 page service
	Given I am on homepage of Ozyeego
	When I click on 博客 button
	Then I should have Blog page open in a new window
	
Scenario: going to e-commerce shop of Ozyeego
	Given I am on homepage of Ozyeego
	When I click on Ozyeego e-commerce shop logo
	Then I should be on Ozyeego e-commerce shop page

Scenario: going to check different subpage of products page
	Given I am on homepage of Ozyeego
	When I click on 产品 button
	
Scenario: Testing ozyeego link search on google
	Given I am on homepage of google
	When I search ozyeego 
	Then I should see the link of ozyeego
	And I click the link of ozyeego
	Then I should have one screenshot of ozyeego
	And I should have one screenshot of apple device iPad size