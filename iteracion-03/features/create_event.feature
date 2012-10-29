Feature: As a speaker I want to create an event in order to receive feedback.
Scenario: Event successfully created (Happy path)

	Given I am logged in 
	When I press the "Create Event" button
	And fill the "Name" camp with "Event1"
	And fill the "Date" camp with "14/10/12"
	Then the system should create a new event with the name and the date that I have indicated.

Scenario: Event already created

	Given I am logged in 
	When I press the "Create Event" button
	And fill the "Name" camp with "Event1"
	And fill the "Date" camp with "14/10/12"
	Then the system should show me a message saying "This name already exists"
