class Jedi <  ActiveRecord::Base

  def self.jedi_pic_info(name)
    folder = "jedi/"
    return folder << name.delete(' ').downcase
  end

end