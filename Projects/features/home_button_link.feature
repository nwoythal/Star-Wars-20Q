Feature: Home Page Button

	In order to be on the home page
	As a user
	I want to be able to click the home button and end up on the home page

Background: tasks have been added to database

  Given the following tasks exist:
  | what_am_i | answer_or_question | node_number |
  | Question  | Are you a Person?  | 1           |
  | Answer    | Obi Wan            | 2           |
  | Answer    | X-Wing             | 3           |

  And  I am on the Welcome page

Scenario: User is on the welcome page
Then I should see "Welcome to Twenty Questions!"
And I should see "Home"
And I follow "Home"
Then I should be on the Welcome page

Scenario: User is on the computer question page
Given I have already picked a category
Then I should be on the ComputersQuestion page
Then I should see "Computers Question"
And I should see "Home"
And I should see "Yes"
And I should see "No"
And I follow "Home"
Then I should be on the Welcome page

Scenario: Click on the home button when on user guessing page
Given I am on the UserQuestion page
Then I should see "Home"
And I should see "Rules"
And I follow "Home"
Then I should be on the Welcome page

Scenario: Click on the home button when on the play again page
Given I am on the PlayAgain page
Then I should see "Would you like to play again?"
And I should see "Play Again!"