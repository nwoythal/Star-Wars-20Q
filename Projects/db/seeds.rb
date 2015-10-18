# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#This is a very incomplete list- features to be added: Logins, accessibility, tasks to be completed later, view of completed tasks, and sorting and filtering of all tasks
starwars = [{:what_am_i => 'Question', :answer_or_question => 'Are you a person?', :node_number => 1},
            {:what_am_i => 'Answer', :answer_or_question => 'Obi Wan', :node_number => 2},
            {:what_am_i => 'Answer', :answer_or_question => 'X-Wing', :node_number => 3}
           ]

starwars.each do |task|
  Starwar.create!(task)
end