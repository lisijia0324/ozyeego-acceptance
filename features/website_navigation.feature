Feature: Ozyeego Website Navigation
	As a potential customer of Ozyeego
	I want to browser the service of Ozyeego.com
	So that I am able to click on menu item
	
Scenario: going to 产品 page service
	Given I am on homepage of Ozyeego
	When I click on 产品 button
	Then I should be on 产品 page 
	
Scenario: going to about us page service
	Given I am on homepage of Ozyeego
	When I click on about us button
	Then I should be on About Us page
	
Scenario: going to common question page service
	Given I am on homepage of Ozyeego
	When I click on common question button
	Then I should be on Common Question page
	
Scenario: going  to any page service
	Given I am on homepage of Ozyeego
	When I click (.*) button
	Then I should be on (.*)page