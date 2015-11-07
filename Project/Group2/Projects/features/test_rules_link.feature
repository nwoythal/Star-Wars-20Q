Feature: Allow user to check to the rules of the game

  As a User
  I want to be able to read the rules
  So that I can win the game

Background: Always start on home page
  And  I am on the Welcome page

Scenario: I would like to check the rules on the Welcome Page
  And I should see "Rules"
  Then I follow "Rules"
  And I should see "Game rules"
  And I should see "Click Here To Go Back"
  Then I follow "Click Here To Go Back"
  Then I should be on the Welcome page

Scenario: I would like to check the rules on the Categories Page
  Given I have moved passed the Welcome page
  And I should be on the Categories page
  And I should see "Rules"
  Then I follow "Rules"
  And I should see "Game rules"
  And I should see "Click Here To Go Back"
  Then I follow "Click Here To Go Back"
  Then I should be on the Categories page

Scenario: I would like to check the rules on the ComputersQuestion page
  Given I have moved passed beginning Pages
  And I should be on the ComputersQuestion page
  And I should see "Rules"
  Then I follow "Rules"
  And I should see "Game rules"
  And I should see "Click Here To Go Back"
  Then I follow "Click Here To Go Back"
  Then I should be on the ComputersQuestion page

Scenario: I would like to check the rules on the Play Again page
  Given I have already played a game
  And I should be on the PlayAgain page
  And I should see "Rules"
  Then I follow "Rules"
  And I should see "Game rules"
  And I should see "Click Here To Go Back"
  Then I follow "Click Here To Go Back"
  Then I should be on the PlayAgain page
