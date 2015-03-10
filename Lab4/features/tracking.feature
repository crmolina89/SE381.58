Feature: Tracking
Scenario: Tracking a shipment
Given the user is signed in
And enters a correct "tracking number"
Then the user will know where their package is currently located
But if an incorrect tracking number is entered an error message is displayed