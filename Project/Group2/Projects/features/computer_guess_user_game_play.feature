Feature: As a User I want the computer to guess what I am thinking.

  As a User
  I want to think of a StarWars object
  So that the computer can guess what I am thinking

Background: tasks have been added to database

  Given the following tasks exist:
  | what_am_i | answer_or_question | node_number |
  | Question  | Are you a Person?  | 1           |
  | Answer    | Obi Wan            | 2           |
  | Answer    | X-Wing             | 3           |

  And  I am on the Welcome page

Scenario: The user plays a simple game
 Then I should see "Welcome to Twenty Questions!"
 And I should see "Would you like to pick an object, or guess mine?"
 And I follow "Pick an object"
 Then I should be on the Categories page
 And I should see "Star Wars"
 And I follow "Star Wars"
 Then I should be on the ComputersQuestion page
 And I should see "Are you a person?"
 And I follow "Yes"
 Then I should be on the PlayAgain page
 And I should see "Computer Guesses: Obi Wan"
 And I should see "Would you like to play again?"

Scenario: The user plays another simple game
 Given I have already picked a category
 And I should see "Are you a person?"
 And I follow "No"
 Then I should be on the PlayAgain page
 And I should see "Computer Guesses: X-Wing"
 And I should see "Would you like to play again?"

Scenario: User has played a game and wants to play again
  Given I have already played a game
  And I should be on the PlayAgain page
  And I follow "Play Again!"
  Then I should be on the Welcome page