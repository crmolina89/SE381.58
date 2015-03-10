Feature: Catalog page
Scenario: Open catalog page
Given the products properly appear on catalog page
And product is selected from catalog page
Then user can navigate to cart page
But if the user agrees with cart summary 
Then user can directly navigate to order summary page for checkout