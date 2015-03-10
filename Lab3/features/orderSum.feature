Feature: Order summary page
Scenario: Navigate order summary page
Given the user navigates to order summary page from catalog or cart page
And "name", "address", and "payment" fields are filled out
And there is one line per item
When the user selects pay for order
Then user is presented a receipt page