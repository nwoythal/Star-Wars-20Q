class ProjectsController < ApplicationController
  
  def show
    id = params[:id] # retrieve project task ID from URI route
    @project = Project.find(id) # look up project task by unique ID
    # will render app/views/projects/show.<extension> by default
  end
  
  #sets up the main page view, with sort options, by the last session point or from a new session
  def index
    sort = params[:sort] || session[:sort]
    order, @title_header, @due_date_header = Project.sort_condition(sort)
    if params[:users] || session[:users]
      current = params[:users] || session[:users]
      current_projects = Project.sort_by_users(current)
      @all_users = Project.get_all_users(current_projects)
    else
      current_projects = Project.all
      @all_users = Project.get_all_users(current_projects)
    end
    if params[:sort] != session[:sort] || params[:users] != session[:users]
      session[:sort] = sort
      session[:users] = Project.create_session(@all_users)
      flash.keep
      redirect_to(:sort => sort, :users => session[:users])
    end
    @projects = Project.find_all_with_filtering(@all_users, order)
  end

  def new
    # default: render 'new' template
  end

  def create
    @project = Project.create!(project_params)
    flash[:notice] = "#{@project.title} was successfully created."
    redirect_to projects_path
  end

  def edit
    @project = Project.find params[:id]
  end

  def update
    @project = Project.find params[:id]
    @project.update_attributes!(project_params)
    flash[:notice] = "#{@project.title} was successfully updated."
    redirect_to project_path(@project)
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    flash[:notice] = "Project '#{@project.title}' deleted."
    redirect_to projects_path
  end

  private
      def project_params
        params.require(:project).permit(:title, :description, :extended_description, :users, :due_date, :all_users)
      end
end
