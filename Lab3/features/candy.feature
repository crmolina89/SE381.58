Feature: Candy bar
Scenario: Purchasing candy bar
Given the user had made a "selection"
And entered proper amount to "purchase" 
Then the output should be "total"
But if amount of candy bars to purchase is 0 then an appropriate error message is displayed