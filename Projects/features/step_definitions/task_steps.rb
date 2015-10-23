# Add a declarative step here for populating the DB with tasks.

Given /the following tasks exist/ do |task_table|
  task_table.hashes.each do |task|
    Starwar.create!(task)
  end
end
