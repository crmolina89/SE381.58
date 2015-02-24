Feature: Subtracting 
Scenario Outline: Subtract two numbers
Given the input "<input>"
When the calculator is run
Then the output should be "<output>"
Examples:
| input | output |
| 2-1 | 1 |
| 98-1 | 97 |