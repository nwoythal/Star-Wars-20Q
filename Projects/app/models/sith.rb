class Sith <  ActiveRecord::Base

  def self.sith_pic_info(name)
    folder = "siths/"
    return folder << name.delete(' ').downcase
  end
end