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
    end
  end

  def self.get_pic_info(category,name)
    case category
      when "jedi"
        return Jedi.jedi_pic_info(name)
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
    return category.find_by_node_number(node_number)[:answer_or_question]
  end


=begin

  def self.search_for_question(current_node, question)
    parent_node=(current_node/2.0).floor #2.0, just in case of truncation error
    question=question.downcase.gsub(/[^0-9a-z\?]/i,' ') #remove punctuation
    while(find_by_node_number(parent_node)[:question_or_answer].downcase!=question&&parent_node>=1) #ends at 1 for now
      current_node=parent_node
      parent_node=(parent_node/2.0).floor
    end
    if(find_by_node_number(parent_node)[:question_or_answer].downcase==question)
      return parent_node*2==current_node
    end
    return false
  end
=end

end
