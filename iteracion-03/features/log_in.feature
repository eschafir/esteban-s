Feature: As a speaker I want to login in order to use the application.
Scenario: Entering in the site properly (happy path)

	Given my nickname on the site is "Alejandro"
	And my password on the site is "abc1234"
	When I fill the "username" camp with "Alejandro"
	And I fill the "password" camp with "abc1234"
	When I press the "OK" buttom
	Then the system should let me enter the site

Scenario:  Entering the site with incorrect username.

	Given my nickname on the site is "Alejandro".
	And my password on the site is "abc1234".
	When I fill the "username" camp with "Aleandro"
	And I fill the "password" camp with "abc1234"
	Then the system should launch the poster "Username wrong".

Scenario:  Entering the site with incorrect password.

	Given my nickname on the site is "Alejandro".
	And my password on the site is "abc1234".
	When I fill the "username" camp with "Alejandro"
	And I fill the "password" camp with "abc12356"
	Then the system should launch the poster "Password wrong".


