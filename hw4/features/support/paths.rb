# TL;DR: YOU SHOULD DELETE THIS FILE
#
# This file is used by web_steps.rb, which you should also delete
#
# You have been warned
module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name

    when /^the (ProjectManager )?home\s?page$/ then '/projects'
    when /^the projects page$/ then '/projects'

    when /^the details page for "(.*)"$/ then
      page_name =~ /^the details page for "(.*)"$/
      project = Project.find_by_title $1
      project_path project

    when /^the Similar Tasks page for "(.*)"$/ then
      page_name =~ /^the Same Projects page for "(.*)"$/
      project = Project.find_by_title $1
      id = '1'
      find_all_by_manager_path project  
    when /^the edit page for "(.*)"$/ then
      page_name =~ /^the edit page for "(.*)"$/
      project = Project.find_by_title $1
      edit_project_path project 
    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    else
      begin
        page_name =~ /^the (.*) page$/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue NoMethodError, ArgumentError
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)
