Feature: As an attendant I want rate the event to give feedback
Scenario: Successful rating of an event



       Given the "event 1" exists for "2012-10-10"

       Given I am in the event "1" rate page

       When I choose "Positive"

       When I press "Send" 

       Then I should see "Your score was sent!!! Thanks!!!"
