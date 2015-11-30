Feature: Home Page Button

	In order to be on the home page
	As a user
	I want to be able to click the home button and end up on the home page

Background: tasks have been added to database

  Given the database is set up:
    | what_am_i | answer_or_question | node_number |
    | Question  | Are you a Person?  | 1           |
    | Question  | Are you a Person?  | 2           |
    | Question  | Are you a Person?  | 3           |
    | Question  | Are you a Person?  | 4           |
    | Question  | Are you a Person?  | 5           |
    | Question  | Are you a Person?  | 6           |
    | Question  | Are you a Person?  | 7           |
    | Question  | Are you a Person?  | 8           |
    | Question  | Are you a Person?  | 9           |
    | Question  | Are you a Person?  | 10          |
    | Question  | Are you a Person?  | 11          |
    | Question  | Are you a Person?  | 12          |
    | Question  | Are you a Person?  | 13          |
    | Question  | Are you a Person?  | 14          |
    | Question  | Are you a Person?  | 15          |


  Given the following tasks are set up for user guess game:
    | what_am_i | answer_or_question | node_number |
    | Question  | Are you a Male?    | 1           |
    | Answer    | Obi Wan            | 2           |
    | Answer    | Ahsoka Tano        | 3           |

  And  I am on the Welcome page

Scenario: User is on the welcome page
Then I should see "Welcome to Twenty Questions!"
And I should see "Home"
And I follow "Home"
Then I should be on the Welcome page

Scenario: User is on the computer question page
And I follow "Guess Yours"
Then I should be on the ComputersQuestion page
Then I should see "Computers Question"
And I should see "Home"
And I should see "Yes"
And I should see "No"
And I follow "Home"
Then I should be on the Welcome page

Scenario: Click on the home button when on user guessing page
And I follow "Guess Mine"
Then I should be on the UserQuestion page
Then I should see "Home"
And I should see "Rules"
And I follow "Home"
Then I should be on the Welcome page

Scenario: Click on the home button when on the play again page
Given I am on the PlayAgain page
Then I should see "Would you like to play again?"
And I should see "Play Again!"