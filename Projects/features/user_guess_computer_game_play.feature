Feature: As a User I want to guess the computers person, place or thing

  As a User
  I want to think of a StarWars person, place or thing
  So that I can guess what the computer has picked

Background: I start on the home page
  And  I am on the Welcome page


Scenario: The user plays a simple game
  Then I should see "Welcome to Twenty Questions!"
  And I should see "Would you like to pick an object, or guess mine?"
  And I follow "Guess your object"
  Then I should be on the Categories page
  And I should see "Star Wars"
  And I follow "Star Wars"
  Then I should be on the UserQuestion page
  And  I fill in "Manager" with "Coulson"


Scenario: The user plays another simple game
  Given I have already picked the StarWars category