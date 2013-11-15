Feature: Regular User Functions
	As a regular user of Wrapgate
	I want to edit note on Wrapgate and vote my message
	So that I can leave message to different user and vote the message
	
Background: I log in as a regular user
	Given I am on the homepage of Warpgate
	And no one is log in now
	When I log in Username with yuanfan 
	And I log in Password with yuanfan
	And I click submit button
	
Scenario:Edit notes
	When I click Edit Notes
	Then I should see note form
	And I fill in Name with Lisa
	And I select Type as Positive
	And I click submit button
	Then I should see a success message
	
Scenario:Vote note
	When I click Retro Dashboard
	And There has some note created before
	Then I should see a list of notes
	When I click +
#	Then I can vote 1 more for specific note
	When I click - 
#	Then I can vote 1 less for specific note
	