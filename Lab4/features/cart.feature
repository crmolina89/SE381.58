Feature: Cart page
Scenario: Navigate cart page
Given the user navigates to cart page from catalog page
And product selected from catalog page appears
And "qty", "desc", "price" and "total" are properly filled out
And the order total is calculated/recalculated and properly displayed
Then user can navigate to order summary page
But the user can return to catalog page to continue adding products