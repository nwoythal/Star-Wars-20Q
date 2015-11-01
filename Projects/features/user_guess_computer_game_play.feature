Feature: Allow user to ask a questions so they can guess the computers person, place or thing

  As a User
  I want to be able to ask questions
  So that I can guess what the computer is thinking

  Background: Question/Answer nodes have not been added to database
    And  I am on the Welcome page

  Scenario: User plays a new game
    Then I should see "Welcome to Twenty Questions!"
    And I follow "Guess your object"

    Then I should be on the Categories page
    And I should see "Star Wars"
    And I follow "Star Wars"

    Then I should be on the UserQuestion page
    And I should see "Enter your question"
    And I fill in "Question" with "Are you a Jedi?"
    And I follow "Submit Question"

    Then I should see "Yes"
    And I should see "Remaining questions: 19"

  Scenario: User is on last question
    Given I am on the User Guessing page
    Given I have asked "19" questions
    Then I should see "Enter your question"
    And I should see "Remaining questions: 1"
    And I fill in "Question" with "Are you Luke Skywalker?"
    And I follow "Submit Question"

    Then I should be on the PlayAgain page
    And I should see "Correct!"
    And I should see "Would you like to play again?"

  Scenario: User is in middle of game and guesses answer
    Given I am on the UserQuestion page
    Given I have asked "5" questions
    Then I should see "Enter your question"
    And I should see "Remaining Questions: 15"
    And I fill in "Questions" with "Luke Skywalker"
    And I follow "Submit Answer"

    Then I should be on the PlayAgain page
    And I should see "Correct!"
    And I should see "Would you like to play again?"

  Scenario: The user has already played a game and wants to play again
    Given I have already played a game
    And I should be on the PlayAgain page
    And I follow "Play Again!"
    Then I should be on the Welcome page