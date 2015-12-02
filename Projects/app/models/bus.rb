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
      when "starobject"
        if node_number == 1
          @question = Starobject.first
          #what = question.what_am_i.to_s
        else
          @question = Starobject.find_by_node_number(node_number)
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
      when "starthing"
        if node_number == 1
          @question = Starthing.first
          #what = question.what_am_i.to_s
        else
          @question = Starthing.find_by_node_number(node_number)
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
      when "sentient"
        if node_number == 1
          @question = Sentient.first
          #what = question.what_am_i.to_s
        else
          @question = Sentient.find_by_node_number(node_number)
          #what = question.what_am_i.to_s
        end
    end
  end

  def self.get_pic_info(category,name)
    case category
      when "jedi"
        return Jedi.jedi_pic_info(name)
      when "clone"
        return Clone.clone_pic_info(name)
      when "sith"
        return Sith.sith_pic_info(name)
      else
        return "empty"
    end

  end

  def self.get_category(node_number)
    case node_number
      when "1"
        return "starthing"
      when "2"
        return "place"
      when "3"
        return "starobject"
      when "4"
        return "built"
      when "5"
        return "animal"
      when "6"
        return "cyborg"
      when "7"
        return "empire"
      when "8"
        return "rebel"
      when "9"
        return "jedi"
      when "10"
        return "sith"
      when "11"
        return "senator"
      when "12"
        return "weapon"
      when "13"
        return "clone"
      when "14"
        return "machine"
      when "15"
        return "moon"
      when "16"
        return "sentient"
    end
  end 

  def self.grab_object()
    category=get_category(rand(1..15).to_s).capitalize.constantize
    node_number=1
    while(category.find_by_node_number(node_number)[:what_am_i]!="Answer")
      node_number=(node_number*2)+rand(0..1)
      if(category.find_by_node_number(node_number)[:what_am_i]=='Redirect')
        node_number+=1
      end
    end
    return [category.find_by_node_number(node_number)[:answer_or_question], category.to_s, node_number] #return array
  end
  
  def self.find_yes_questions(category, current_node)
    list_of_questions=[]
    parent_node=(current_node/2.0).floor #2.0, just in case of truncation error
    while(parent_node>=1) #ends at 1 for now
      if (parent_node*2)==current_node #we know the answer is yes
        list_of_questions.push(category.constantize.find_by_node_number(parent_node)[:answer_or_question].downcase) #store question in array
      end
      current_node=parent_node
      parent_node=(parent_node/2.0).floor
    end
    #also need root question
    case category.downcase
      when "starthing"
        list_of_questions.push("Is it a character from the Movies?")
      when "place"
        list_of_questions.push("Is it a Place?")
      when "starobject"
        list_of_questions.push("Is it an Object?")
      when "built"
        list_of_questions.push("Is it a Building?")
      when "animal"
        list_of_questions.push("Is it an Animal?")
      when "cyborg"
        list_of_questions.push("Is it a Cyborg?")
      when "empire"
        list_of_questions.push("Is it part of the Galactic Empire?")
      when "rebel"
        list_of_questions.push("Is it a Rebel?")
      when "jedi"
        list_of_questions.push("Is it a Jedi?")
      when "sith"
        list_of_questions.push("Is it a Sith?")
      when "senator"
        list_of_questions.push("Is it a Senator?")
      when "weapon"
        list_of_questions.push("Is it a Weapon?")
      when "clone"
        list_of_questions.push("Is it a Clone?")
      when "machine"
        list_of_questions.push("Is it a Machine?")
      when "moon"
        list_of_questions.push("Is it larger than a Moon?")
    end
    return list_of_questions;
  end


end
