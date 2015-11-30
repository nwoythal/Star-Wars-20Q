Feature: Allow user to ask a questions so they can guess the computers person, place or thing

  As a User
  I want to be able to ask questions
  So that I can guess what the computer is thinking

  Background: Question/Answer nodes have not been added to database

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

  Scenario: User plays a new game
    Then I should see "Welcome to Twenty Questions!"
    And I follow "Guess Mine"
    Then I should be on the UserQuestion page
    And I should see "Enter your question"
    And I fill in "ask" with "Are you a Jedi?"
    And I press "Ask question"
    And I should see "You have 19 questions left."

  Scenario: User is on last question
    And I follow "Guess Mine"
    And I have already asked "20" questions
    Then I should be on the UserQuestion page
    And I follow "Guess answer"
    And I fill in "guess" with "Luke Skywalker?"
    And I press "Guess answer"

    Then I should be on the PlayAgain page
    And I should see "Would you like to play again?"

  Scenario: User is in middle of game and guesses answer
    And I follow "Guess Mine"
    Given I am on the UserQuestion page
    And I have already asked 5 questions

    Then I should be on the UserQuestion page
    And I should see "You have 15 questions left."
    Then I follow "Guess answer"
    And I fill in "guess" with "Obi Wan?"
    And I press "Guess answer"
    Then I should be on the PlayAgain page
