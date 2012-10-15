Feature: As a speaker i want to delete events
Scenario: Successful removal of one event (Happy path)

	Given i have created the event called "Charla sobre algo"
	And i am in the "View Event" page
	When I press the "Delete" button on the event called "Charla sobre algo"
	Then the event called "Charla sobre algo" should not exist anymore
