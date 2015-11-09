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

questions = [{:what_am_i => 'Question', :answer_or_question => 'Are you a person?', :node_number => 1},
             {:what_am_i => 'Question', :answer_or_question => 'Is it a place?', :node_number => 2},
             {:what_am_i => 'Question', :answer_or_question => 'Is it an object?', :node_number => 3},
             {:what_am_i => 'Question', :answer_or_question => 'Is it alive?', :node_number => 4},
             {:what_am_i => 'Question', :answer_or_question => 'Is it sentient?', :node_number => 5},
             {:what_am_i => 'Question', :answer_or_question => 'Can it be built?', :node_number => 6},
             {:what_am_i => 'Question', :answer_or_question => 'Is it an animal?', :node_number => 7},
             {:what_am_i => 'Question', :answer_or_question => 'Is it a cyborg?', :node_number => 8},
             {:what_am_i => 'Question', :answer_or_question => 'Is it Empire?', :node_number => 9},
             {:what_am_i => 'Question', :answer_or_question => 'Is it Rebel?', :node_number => 10},
             {:what_am_i => 'Question', :answer_or_question => 'Is it in the Star Wars books, TV shows or video games]?', :node_number => 11},
             {:what_am_i => 'Question', :answer_or_question => 'Is it a Jedi?', :node_number => 12},
             {:what_am_i => 'Question', :answer_or_question => 'Is it a Sith?', :node_number => 13},
             {:what_am_i => 'Question', :answer_or_question => 'Is it a Senator?', :node_number => 14},
             {:what_am_i => 'Question', :answer_or_question => 'Is it a weapon?', :node_number => 15},
             {:what_am_i => 'Question', :answer_or_question => 'Is it a Clone?', :node_number => 16},
             {:what_am_i => 'Question', :answer_or_question => 'Is it a Machine?', :node_number => 17},
             {:what_am_i => 'Question', :answer_or_question => 'Is it larger than a moon?', :node_number => 18},
]

starwars.each do |task|
  Starwar.create!(task)
end

questions.each do |task|
  Question.create!(task)
end