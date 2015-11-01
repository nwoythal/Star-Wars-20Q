require 'spec_helper'
require 'rails_helper'
  
describe ProjectsController do
  describe 'GET index' do
    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end
  describe 'find all by same manager used on project' do
    it 'redirects to find_all_by_manager route' do
      project = Project.create
      get :find_all_by_manager, :id => 1
    end
    it 'returns to index when no manager' do
      project = Project.create
      get :find_all_by_manager, :id => 1
      expect(response).to redirect_to(projects_path)
    end
  end
  describe 'create a new project' do
    it 'creates a new project in the database' do
      post :create, project: {title: 'test', manager: 'nick'}
    end
  end
  describe 'deletes a current project' do
    it 'deletes a record from the database' do
     post :create, project: {title: 'test'}
     post :create, project: {title: 'test'}
     post :create, project: {title: 'test'}
     post :create, project: {title: 'test'}
     post :create, project: {title: 'test'}
     delete :destroy, id: 5
    end
  end   
end
