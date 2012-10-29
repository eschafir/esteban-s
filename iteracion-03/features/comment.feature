Feature: As I attendant i want comment my rate  to give more detail of it.
Scenario: Successful case of sending a comment.

	Given I'm in the rating page
	When I input "Great talk" in the Add a Comment box
	And I select an "option" to rate
	And press "Send" button
	Then I go to a page with the message "Your comment has been entered. Thanks for your input"
