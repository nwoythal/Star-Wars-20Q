Feature: As a User I want the computer to guess what I am thinking.

  As a User
  I want to think of a StarWars object
  So that the computer can guess what I am thinking

  Background: tasks have been added to database

    Given the database is set up:
      | what_am_i | answer_or_question | node_number |
      | Question  | Are you a Person?  | 1           |
      | Question  | Are you a Person?  | 2           |
      | Question  | Are you a Person?  | 3           |
      | Question  | Are you a Person?  | 4           |

    Given the following tasks are set up for user guess game:
      | what_am_i | answer_or_question | node_number |
      | Question  | Are you a Male?    | 1           |
      | Answer    | Obi Wan            | 2           |
      | Answer    | Ahsoka Tano        | 3           |

    And  I am on the Welcome page

  Scenario: The user plays a simple game
    Then I should see "Welcome to Twenty Questions!"
    And I should see "Would you like to pick an object for me to guess,"
    And I should see " or would you like to guess mine?"
    And I follow "Guess Yours"
    Then I should be on the ComputersQuestion page
    And I should see "Are you a Person?"
    And I follow "Yes"
    And I should see "Are you a Male?"
    And I follow "Yes"
    Then I should be on the PlayAgain page
    And I should see "Computer Guesses: Obi Wan"
    And I should see "Would you like to play again?"

  Scenario: The user plays simple game
    Then I should see "Welcome to Twenty Questions!"
    And I should see "Would you like to pick an object for me to guess,"
    And I should see " or would you like to guess mine?"
    And I follow "Guess Yours"
    Then I should be on the ComputersQuestion page
    And I should see "Are you a Person?"
    And I follow "No"
    And I should see "Are you a Person?"
    And I follow "Yes"
    And I should see "Are you a Male?"
    And I follow "Yes"
    Then I should be on the PlayAgain page
    And I should see "Computer Guesses: Obi Wan"
    And I should see "Would you like to play again?"

  Scenario: The user plays another simple game
    Given I have already started playing a game
    And I should see "Are you a Male?"
    And I follow "No"
    Then I should be on the PlayAgain page
    And I should see "Computer Guesses: Ahsoka Tano"
    And I should see "Would you like to play again?"

  Scenario: User has played a game and wants to play again
    Given I have already played a game
    And I should be on the PlayAgain page
    And I follow "Play Again!"
    Then I should be on the Welcome page