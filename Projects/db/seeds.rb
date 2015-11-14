persons = [{:what_am_i => 'Answer', :answer_or_question => 'n/a', :node_number => 1}]

places = [{:what_am_i => 'Answer', :answer_or_question => 'n/a', :node_number => 1}]

objects = [{:what_am_i => 'Answer', :answer_or_question => 'n/a', :node_number => 1}]

alives = [{:what_am_i => 'Answer', :answer_or_question => 'n/a', :node_number => 1}]

sentients = [{:what_am_i => 'Answer', :answer_or_question => 'n/a', :node_number => 1}]

builts = [{:what_am_i => 'Answer', :answer_or_question => 'n/a', :node_number => 1}]

animals = [{:what_am_i => 'Answer', :answer_or_question => 'n/a', :node_number => 1}]

cyborgs = [{:what_am_i => 'Answer', :answer_or_question => 'n/a', :node_number => 1}]

empires = [{:what_am_i => 'Answer', :answer_or_question => 'n/a', :node_number => 1}]

rebels = [{:what_am_i => 'Answer', :answer_or_question => 'n/a', :node_number => 1}]

universes = [{:what_am_i => 'Answer', :answer_or_question => 'n/a', :node_number => 1}]

jedis = [{:what_am_i => 'Question', :answer_or_question => 'Are you a Male?', :node_number => 1},
         {:what_am_i => 'Answer', :answer_or_question => 'Guy', :node_number => 2},
         {:what_am_i => 'Answer', :answer_or_question => 'Girl', :node_number => 3}]

siths = [{:what_am_i => 'Answer', :answer_or_question => 'n/a', :node_number => 1}]

senators = [{:what_am_i => 'Answer', :answer_or_question => 'n/a', :node_number => 1}]

weapons = [{:what_am_i => 'Answer', :answer_or_question => 'n/a', :node_number => 1}]

clones = [{:what_am_i => 'Answer', :answer_or_question => 'n/a', :node_number => 1}]

machines = [{:what_am_i => 'Answer', :answer_or_question => 'n/a', :node_number => 1}]

moons = [{:what_am_i => 'Answer', :answer_or_question => 'n/a', :node_number => 1}]

questions = [{:what_am_i => 'Question', :answer_or_question => 'Are you a Person?', :node_number => 1},
             {:what_am_i => 'Question', :answer_or_question => 'Is it a Place?', :node_number => 2},
             {:what_am_i => 'Question', :answer_or_question => 'Is it an Object?', :node_number => 3},
             {:what_am_i => 'Question', :answer_or_question => 'Is it Alive?', :node_number => 4},
             {:what_am_i => 'Question', :answer_or_question => 'Is it Sentient?', :node_number => 5},
             {:what_am_i => 'Question', :answer_or_question => 'Can it be Built?', :node_number => 6},
             {:what_am_i => 'Question', :answer_or_question => 'Is it an Animal?', :node_number => 7},
             {:what_am_i => 'Question', :answer_or_question => 'Is it a Cyborg?', :node_number => 8},
             {:what_am_i => 'Question', :answer_or_question => 'Is it part of the Empire?', :node_number => 9},
             {:what_am_i => 'Question', :answer_or_question => 'Is it a Rebel?', :node_number => 10},
             {:what_am_i => 'Question', :answer_or_question => 'Is it in the Star Wars books, TV shows or video games?', :node_number => 11},
             {:what_am_i => 'Question', :answer_or_question => 'Is it a Jedi?', :node_number => 12},
             {:what_am_i => 'Question', :answer_or_question => 'Is it a Sith?', :node_number => 13},
             {:what_am_i => 'Question', :answer_or_question => 'Is it a Senator?', :node_number => 14},
             {:what_am_i => 'Question', :answer_or_question => 'Is it a Weapon?', :node_number => 15},
             {:what_am_i => 'Question', :answer_or_question => 'Is it a Clone?', :node_number => 16},
             {:what_am_i => 'Question', :answer_or_question => 'Is it a Machine?', :node_number => 17},
             {:what_am_i => 'Question', :answer_or_question => 'Is it larger than a Moon?', :node_number => 18},
]

persons.each do |task|
  Starthing.create!(task)
end

places.each do |task|
  Place.create!(task)
end

objects.each do |task|
  Starobject.create!(task)
end

alives.each do |task|
  Alive.create!(task)
end

sentients.each do |task|
  Sentient.create!(task)
end

builts.each do |task|
  Built.create!(task)
end

animals.each do |task|
  Animal.create!(task)
end

cyborgs.each do |task|
  Cyborg.create!(task)
end

empires.each do |task|
  Empire.create!(task)
end

rebels.each do |task|
  Rebel.create!(task)
end

universes.each do |task|
  Universe.create!(task)
end

jedis.each do |task|
  Jedi.create!(task)
end

siths.each do |task|
  Sith.create!(task)
end

senators.each do |task|
  Senator.create!(task)
end

weapons.each do |task|
  Weapon.create!(task)
end

clones.each do |task|
  Clone.create!(task)
end

machines.each do |task|
  Machine.create!(task)
end

moons.each do |task|
  Moon.create!(task)
end

questions.each do |task|
  Question.create!(task)
end
