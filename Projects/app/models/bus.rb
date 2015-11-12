require 'jedi'
require 'question'
require 'starthing'
require 'place'
require 'alive'
require 'sentient'
require 'built'
require 'animal'
require 'cyborg'
require 'empire'
require 'rebel'
require 'universe'
require 'sith'
require 'senator'
require 'weapon'
require 'clone'
require 'machine'
require 'moon'
require 'starobject'

class Bus
  # all calls to the database must go through the bus
  #we will need to make this a dynamic call -Colton
  #for example
  def self.get_computer_guess_info(category , node_number)
    case category
      when "questions"
        if node_number == 1
          @question = Question.first
          #what = question.what_am_i.to_s
        else
          @question = Question.find_by_node_number(node_number)
          #what = question.what_am_i.to_s       
        end
      when "jedi"
        if node_number == 1
          @question = Jedi.first
          #what = question.what_am_i.to_s
        else
          @question = Jedi.find_by_node_number(node_number)
          #what = question.what_am_i.to_s
        end
      when "person"
        if node_number == 1
          @question = Starthing.first
          #what = question.what_am_i.to_s
        else
          @question = Starthing.find_by_node_number(node_number)
          #what = question.what_am_i.to_s
        end
      when "place"
        if node_number == 1
          @question = Place.first
          #what = question.what_am_i.to_s
        else
          @question = Place.find_by_node_number(node_number)
          #what = question.what_am_i.to_s
        end
      when "object"
        if node_number == 1
          @question = Starobject.first
          #what = question.what_am_i.to_s
        else
          @question = Starobject.find_by_node_number(node_number)
          #what = question.what_am_i.to_s
        end
      when "alive"
        if node_number == 1
          @question = Alive.first
          #what = question.what_am_i.to_s
        else
          @question = Alive.find_by_node_number(node_number)
          #what = question.what_am_i.to_s
        end
      when "sentient"
        if node_number == 1
          @question = Sentient.first
          #what = question.what_am_i.to_s
        else
          @question = Sentient.find_by_node_number(node_number)
          #what = question.what_am_i.to_s
        end
      when "built"
        if node_number == 1
          @question = Built.first
          #what = question.what_am_i.to_s
        else
          @question = Built.find_by_node_number(node_number)
          #what = question.what_am_i.to_s
        end
      when "animal"
        if node_number == 1
          @question = Animal.first
          #what = question.what_am_i.to_s
        else
          @question = Animal.find_by_node_number(node_number)
          #what = question.what_am_i.to_s
        end
      when "cyborg"
        if node_number == 1
          @question = Cyborg.first
          #what = question.what_am_i.to_s
        else
          @question = Cyborg.find_by_node_number(node_number)
          #what = question.what_am_i.to_s
        end
      when "empire"
        if node_number == 1
          @question = Empire.first
          #what = question.what_am_i.to_s
        else
          @question = Empire.find_by_node_number(node_number)
          #what = question.what_am_i.to_s
        end
      when "rebel"
        if node_number == 1
          @question = Rebel.first
          #what = question.what_am_i.to_s
        else
          @question = Rebel.find_by_node_number(node_number)
          #what = question.what_am_i.to_s
        end
      when "universe"
        if node_number == 1
          @question = Universe.first
          #what = question.what_am_i.to_s
        else
          @question = Universe.find_by_node_number(node_number)
          #what = question.what_am_i.to_s
        end
      when "sith"
        if node_number == 1
          @question = Sith.first
          #what = question.what_am_i.to_s
        else
          @question = Sith.find_by_node_number(node_number)
          #what = question.what_am_i.to_s
        end
      when "senator"
        if node_number == 1
          @question = Senator.first
          #what = question.what_am_i.to_s
        else
          @question = Senator.find_by_node_number(node_number)
          #what = question.what_am_i.to_s
        end
      when "weapon"
        if node_number == 1
          @question = Weapon.first
          #what = question.what_am_i.to_s
        else
          @question = Weapon.find_by_node_number(node_number)
          #what = question.what_am_i.to_s
        end
      when "clone"
        if node_number == 1
          @question = Clone.first
          #what = question.what_am_i.to_s
        else
          @question = Clone.find_by_node_number(node_number)
          #what = question.what_am_i.to_s
        end
      when "machine"
        if node_number == 1
          @question = Machine.first
          #what = question.what_am_i.to_s
        else
          @question = Machine.find_by_node_number(node_number)
          #what = question.what_am_i.to_s
        end
      when "moon"
        if node_number == 1
          @question = Moon.first
          #what = question.what_am_i.to_s
        else
          @question = Moon.find_by_node_number(node_number)
          #what = question.what_am_i.to_s
        end
    end
  end

  # same with this method
  def self.get_user_guess_info(category , node_number)

  end

  def self.get_category(node_number)
    case node_number
      when "1"
        return "person"
      when "2"
       return "place"
      when "3"
       return  "object"
      when "4"
        return "alive"
      when "5"
        return "sentient"
      when "6"
        return "built"
      when "7"
        return "animal"
      when "8"
        return "cyborg"
      when "9"
        return "empire"
      when "10"
        return "rebel"
      when "11"
        return "universe"
      when "12"
        return "jedi"
      when "13"
        return "sith"
      when "14"
        return "senator"
      when "15"
        return "weapon"
      when "16"
        return "clone"
      when "17"
        return "machine"
      when "18"
        return "moon"
    end
  end

end
