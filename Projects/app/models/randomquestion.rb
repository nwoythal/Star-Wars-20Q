class Randomquestion

  def self.get_random_num(already_used_num)
    #going to return array
    #already_used_num is an array
    found_num = false
    while(found_num == false)
      rand_num = rand(1..15)
      found_num = true
      already_used_num.each do |used_num|
        if used_num == rand_num
          found_num = false
        end
      end
    end
    return rand_num
  end

  def self.get_first_random_num
    num = rand(1..15)
  end

  def self.create_initial_array(random_num)
    array = Array.new
    array.append(random_num)
    return array
  end
  def self.update_list_of_already_picked_questions(array, number)
    return array.append(number)
  end
end





