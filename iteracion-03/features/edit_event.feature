Feature: As the speaker, I want to update the event details
Scenario: The event has not been rated so it can be modified (happy path)

	Given I am on the “View Event” page
	And the event “Talk about something” has not been rated
	When I press the “Edit” button of the event
	Then the "Edit Event" page should appear on a new window

Scenario: The event has already been rated and can not be modified.

	Given I am on the page “View Event”
	And the event “Talk about something” has already been rated
	When I press the “Edit” button of the event
	Then the message "This event can not be modified, it has already been rated” should appear
