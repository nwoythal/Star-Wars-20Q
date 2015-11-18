class Jedi <  ActiveRecord::Base

  def self.jedi_pic_info(name)
    return name.delete(' ').downcase
  end

end