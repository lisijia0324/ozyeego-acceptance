Feature: Functions after Sign In
	As a user of Warpgate
	I need to login and log out with different rold
	so that I can log in as admin or register user
	
Scenario: I log in as a registered user	 (ex p108 declarative style)
	Given I am on the homepage of Warpgate
	And no one is log in now
	When I log in Username with yuanfan 
	And I log in Password with yuanfan
	And I click submit button
	Then I should see a greeting message
	And I log in as yuanfan
	When I log out Warpgate
	Then I should see a welfare message
	
Scenario: I log in as admin
	Given I am on the homepage of Warpgate
	And no one is log in now
	When I log in Username with admin
	And I log in Password with admin
	And I click submit button
	Then I should see admin page with delete notes function
	
Scenario Outline: Login and logout scenario outlets
	Given I am on the homepage of Warpgate
	When I log in as <user>
	And I put in <password>
	And I click submit button
	Then I should see <message>
	
	Examples: successful login with right password
	|User    |Password|Message                           |
	|yuanfan |yuanfan |You are now logged in as yuanfan. |
	|admin   |admin   |You are now logged in as admin.   | 
	
	Examples: unsuccessful login with wrong password
	|User   |Password|Message                            |
	|yuanfan|YuanFan |Wrong password.                    |
	
	
	
