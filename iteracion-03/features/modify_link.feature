Feature: As a speaker I want to modify the link to make it more readable.
Scenario: Modification successful of a event's link (Happy path)

	Given I am in the "Home" page
	And the event "event1" already exists with the link "evento-programacion-20120926
	When I press "View my events"
	And I press the option "Edit" of my event "event1"
	And I press the option "Regenerate link"
	And  I write "evento-programacion-20120926"
	AND I press "Accept"
	Then the system should generate a new random link to "event1" and show it in a new window
