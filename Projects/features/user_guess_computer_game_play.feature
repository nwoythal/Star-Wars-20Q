Feature: Allow user to ask a questions so they can guess the computers person, place or thing

  As a User
  I want to be able to ask questions
  So that I can guess what the computer is thinking

  Background: Question/Answer nodes have not been added to database

    Given the following tasks exist:
      | what_am_i | answer_or_question | node_number |
      | Question  | Are you a Person?  | 1           |
      | Answer    | Obi Wan            | 2           |
      | Answer    | X-Wing             | 3           |

    And  I am on the Welcome page

  Scenario: User plays a new game
    Then I should see "Welcome to Twenty Questions!"
    And I follow "Guess your object"
    Then I should be on the UserQuestion page
    And I should see "Enter your question"
    And I fill in "ask" with "Are you a Jedi?"
    And I press "Ask question"
    And I should see "You have 19 questions left."

  Scenario: User is on last question
    And I follow "Guess your object"
    And I have already asked "20" questions
    Then I should be on the UserQuestion page
    And I follow "Guess answer"
    And I fill in "guess" with "Luke Skywalker?"
    And I press "Guess answer"

    Then I should be on the PlayAgain page
    And I should see "Would you like to play again?"

  Scenario: User is in middle of game and guesses answer
    And I follow "Guess your object"
    Given I am on the UserQuestion page
    And I have already asked 5 questions

    Then I should be on the UserQuestion page
    And I should see "You have 15 questions left."
    Then I follow "Guess answer"
    And I fill in "guess" with "Obi Wan?"
    And I press "Guess answer"
    Then I should be on the PlayAgain page
