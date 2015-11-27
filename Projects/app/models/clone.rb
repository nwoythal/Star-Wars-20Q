class Clone <  ActiveRecord::Base
  def self.clone_pic_info(name)
    folder = "clones/"
    return folder << name.delete(' ').downcase
  end
end