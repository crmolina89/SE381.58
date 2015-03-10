Feature: Game of Life
Scenario: 
Given a board like this:
| |1|2|3|4|5|6|7|8|
|1| | | | | | | | |
|2| | | | | | | | |
|3| | | | | | | | |
|4| | | | | | | | |
|5| | | | | | | | |
|6| | | | | | | | |
|7| | | | | | | | |
|8| | | | | | | | |
When the game begins these are selected where x = alive and o = dead
Then the board should look like this:
| |1|2|3|4|5|6|7|8|
|1| | | | | | | | |
|2| | | | |x|x| | |
|3| |x| |x| | | | |
|4| | | | |o| | | |
|5| | |o|x|x|x| | |
|6| | | | | | | | |
|7| | | | | | | | |
|8| | | | | | | | |
When x is next to less than two x it becomes o
When x is next to two or three x it remains x
When x is next to more than three other x it becomes o
When o is next to three x it becomes an x