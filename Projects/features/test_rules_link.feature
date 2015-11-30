Feature: Allow user to check to the rules of the game

  As a User
  I want to be able to read the rules
  So that I can win the game

Background: tasks have been added to database

    Given the database is set up:
      | what_am_i | answer_or_question | node_number |
      | Question  | Are you a Person?  | 1           |

    Given the following tasks exist:
      | what_am_i | answer_or_question | node_number |
      | Question  | Are you a Male?    | 1           |
      | Answer    | Obi Wan            | 2           |
      | Answer    | Ahsoka Tano        | 3           |

    And  I am on the Welcome page

Scenario: I would like to check the rules on the Welcome Page
  And I should see "Rules"
  Then I follow "Rules"
  And I should see "Game Rules:"
  And I should see "Click Here To Go Back"
  Then I follow "Click Here To Go Back"
  Then I should be on the Welcome page

Scenario: I would like to check the rules on the ComputersQuestion page
  And I follow "Guess Yours"
  And I should be on the ComputersQuestion page
  And I should see "Rules"
  Then I follow "Rules"
  And I should see "Game Rules:"
  And I should see "Click Here To Go Back"
  Then I follow "Click Here To Go Back"
  Then I should be on the ComputersQuestion page

Scenario: I would like to check the rules on the Play Again page
  Given I have already played a game
  And I should be on the PlayAgain page
  And I should see "Rules"
  Then I follow "Rules"
  And I should see "Game Rules:"
  And I should see "Click Here To Go Back"
  Then I follow "Click Here To Go Back"
  Then I should be on the PlayAgain page
