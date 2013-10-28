Feature: Ozyeego Website Navigation
	As a potential customer of Ozyeego
	I want to browser the service of Ozyeego.com
	So that I am able to click on menu item
	
Scenario: going to 产品 page service
	Given I am on homepage of Ozyeego
	When I click on 产品 button
	Then I should be on products page 

Scenario: going to 博客 page service
	Given I am on homepage of Ozyeego
	When I click on 博客 button
	Then I should be on Blog page
	
Scenario: going  to any page service
	Given I am on homepage of Ozyeego
	When I click on 关于我们 page
	Then I should be on 关于我们 subpage