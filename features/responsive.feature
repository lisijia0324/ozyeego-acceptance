Feature: Ozyeego Website Reponsiveness
	As a potential customer of Ozyeego
	I want to browser the service of Ozyeego.com from different devices
	So that I am able to view the website in a good user experience
	
Scenario: Taking screenshot of Ozyeego in different device
	Given I am on homepage of Ozyeego
	When I click on 关于我们 button
	Then I have one screenshot in 768 * 1024 screen size
				
Scenario: Testing ozyeego link search on google
	Given I am on homepage of google
	When I search ozyeego 
	Then I should see the link of ozyeego
	When I click the link of ozyeego
	Then I should have one screenshot of ozyeego
	And I should have one screenshot of apple device iPad size