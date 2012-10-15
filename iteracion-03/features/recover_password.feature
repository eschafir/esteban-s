Feature: As a speaker I want to retrieve the key in case of losing it.
Scenario: Key recovery successfull (Happy path)

	Given I am registered on the site
	And I am in the "Home" page
	And I forgot my password
	And my email address is "user@rateme.com"
	When I press "Forgot your password?"
	And I enter my email address
	Then the system should send me an email with my password.
