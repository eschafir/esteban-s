Feature: As a speaker I want to see global historical scores
Scenario: View global rankings.

	Given I am in the  "Home" page
	And I press the "View Global Stats" button
	Then it should be displayed rating for each score
