# Add a declarative step here for populating the DB with tasks.

Given /the database is set up/ do |task_table|
  task_table.hashes.each do |task|
    Question.create!(task)
  end
end

Given /the following tasks exist/ do |task_table|
  task_table.hashes.each do |task|
    Starthing.create!(task)
  end
end

Given /the following tasks are set up for user guess game/ do |task_table|
  task_table.hashes.each do |task|
    Jedi.create!(task)
    Starthing.create!(task)
    Place.create!(task)
    Starobject.create!(task)
    Alive.create!(task)
    Sentient.create!(task)
    Built.create!(task)
    Animal.create!(task)
    Cyborg.create!(task)
    Empire.create!(task)
    Rebel.create!(task)
    Universe.create!(task)
    Sith.create!(task)
    Senator.create!(task)
    Weapon.create!(task)
    Clone.create!(task)
    Machine.create!(task)
    Moon.create!(task)
    Question.create!(task)
  end
end


Given /I have already started playing a game/ do
  steps %Q{
      And I follow "Guess Yours"
      Then I should be on the ComputersQuestion page
      And I should see "Are you a Person?"
      And I follow "Yes"
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
  while (i <= number.to_i - 1) do
    steps %Q{
            And I fill in "ask" with "Are you Luke Skywalker?"
            And I press "Ask question"
         }
    i += 1
  end
end

Given /I have already played a game/ do
  steps %Q{
        And I follow "Guess Yours"
        Then I should be on the ComputersQuestion page
        And I should see "Are you a Person?"
        And I follow "Yes"
        And I should see "Are you a Male?"
        And I follow "Yes"
       }
end

Given /I have moved passed the Welcome page/ do
  steps %Q{
       And I follow "Guess your object"
       }
end

