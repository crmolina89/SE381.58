Feature: Lottery ticket
Scenario: Purchasing lottery ticket
Given the user is signed in
And numbers to play are manually selected or quick pick
And the number of draws is selected
When the user presses the place wager button
Then user should get purchase receipt