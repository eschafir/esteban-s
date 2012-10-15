Feature: As the speaker, I want to be able to find events and view their statistics
Scenario: The event exists and I can access to the statistics (Happy path)

	Given I am on the “Home” page
	And the event “Talk about something” is created
	When I enter "Talk about something” in the search field and press "Enter"
	Then "Talk about something" event should appear in a new screen

Scenario: The event does not exists and an error screen appears.

	Given I am on the page “Home”
	And the event “Talk about something” is not created
	When I enter "Talk about something" in the search field and press enter
	Then "The event 'Talk about something' do not exists" message should appear in a new screen


