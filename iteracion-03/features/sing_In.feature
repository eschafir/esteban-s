Feature: As a speaker I want to Sign In to login.
Scenario: Sign in with a non existing user (happy path)
	
	Given I am in the "Home" page
	And I have not an account
	When I press the "Sign In" button 
	And fill the camp "Name" with "Esteban"
	And fill the camp "Username" with "estebanuser"
	And fill the camp "Email" with "esteban@features.com"
	And fill the camp "Password" with"PasSw0rD"
	When I press the "Continue" button 
	Then the system should take me to the main page of my profile.

Scenario: Sign in with an existing user

	Given I am in the "Home" page
	And I have not an account
	When I press the "Sign In" button
	And fill the camp "Name" with "Estebancito"
	And fill the camp "Username" with "estebanuser"
	And fill the camp "Email" with "esteban@features.com"
	And fill the camp "Password" with"PasSw0rD"
	When I press the button "Continue"
	Then the system should show me a message saying: "The username already exists"
