# Add a declarative step here for populating the DB with tasks.

Given /the following tasks exist/ do |task_table|
  task_table.hashes.each do |task|
    Starwar.create!(task)
  end
end

Given /I have already picked a category/ do
 steps %Q{
        Then I should see "Welcome to Twenty Questions!"
        And I should see "Would you like to pick an object, or guess mine?"
        And I follow "Pick an object"
        Then I should be on the Categories page
        And I should see "Star Wars"
        And I follow "Star Wars"
        Then I should be on the ComputersQuestion page
       }
end


Given /I have already picked the StarWars category/ do
  steps %Q{
        Then I should see "Welcome to Twenty Questions!"
        And I should see "Would you like to pick an object, or guess mine?"
        And I follow "Guess your object"
        Then I should be on the Categories page
        And I should see "Star Wars"
        And I follow "Star Wars"
        Then I should be on the UserQuestion page
       }
end

And /I have already asked (.*) questions/ do |number|
  i = 1
  while i <= 19 do
    steps %Q{
             And I fill in "Enter your question" with "Are you Luke Skywalker?"
             And I follow "Submit Question"
          }
    i += 1
  end
end

Given /I have already played a game/ do
  steps %Q{
         Then I should see "Welcome to Twenty Questions!"
         And I should see "Would you like to pick an object, or guess mine?"
         And I follow "Pick an object"
         Then I should be on the Categories page
         And I should see "Star Wars"
         And I follow "Star Wars"
         Then I should be on the ComputersQuestion page
         And I should see "Are you a Person?"
         And I follow "Yes"
        }
end