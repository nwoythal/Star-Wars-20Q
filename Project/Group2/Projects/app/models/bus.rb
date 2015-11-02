require 'starwar'
class Bus
  # all calls to the database must go through the bus
  #we will need to make this a dynamic call -Colton
  #for example
  def self.get_computer_guess_info(category , node_number)
  # case cagetory
  # when "starwars"
  # when "animals"
    case category
      when "starwars"
        if node_number == 1
          @question = Starwar.first
          #what = question.what_am_i.to_s
        else
          @question = Starwar.find_by_node_number(node_number)
          #what = question.what_am_i.to_s       
        end
      #break
    end
  end

  # same with this method
  def self.get_user_guess_info(category , node_number)

  end


end
