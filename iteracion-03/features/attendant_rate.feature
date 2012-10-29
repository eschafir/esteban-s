Feature: As an attendant I rate the event to give feedback to the speaker
Scenario: Attendant's rate succesful.

	Given I am in the "rating page"
	And I choose an "option"
	And press the "Send" button
	Then I see the screen with the message, "Your score was sent! Thanks!"
