class Project < ActiveRecord::Base
  #Method to set sort conditions and highlight options
  def self.sort_condition(sort)
    if sort == 'title'
      order = 'title'
      title_header = 'hilite'
    elsif sort == 'due_date'
      order =  'due_date'
      due_date_header = 'hilite'
    else
      order = 'none'
    end
    return order, title_header, due_date_header
  end
  #Method to create a current session for page recall
  def self.create_session(current)
    current.each do |k, v|
      if v
        current[k] = "1"
      else
        current.delete(k)
      end
    end
    current
  end
  #Method for getting all users from the entire project listing and returning just the unique user names
  def self.get_all_users(current)
    users = {}
    Project.all.each do |name|
      users[name.user] = true
    end
    users.each do |k, v|
      current.each do |project|
        if k.to_s == project.user.to_s
          users[k] = true
          break
        else
          users[k] = false
        end
      end
    end
    users
  end
  #method sorts the list with user filter
  def self.sort_by_users(current)
    condition = current.keys
    returning = []
    Project.all.each do |x|
      condition.each do |y|
        if y.to_s == x.user.to_s
          returning.push(x)
        end
      end
    end
    returning
  end
  #method to display only currently filtered user projects
  def self.find_all_with_filtering(current, order)
    returning = []
    if order != 'none'
      all_projects = Project.order(order)
      all_projects.each do |index|
        current.each do |k , v|
          if k.to_s == index.user.to_s && v
            returning.push(index)
            break
          end
        end
      end
    else
      Project.all.each do |index|
        current.each do |k , v|
          if k.to_s == index.user.to_s && v
            returning.push(index)
            break
          end
        end
      end
    end
    returning
  end
end

