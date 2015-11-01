require 'spec_helper'
include ProjectsHelper

describe Project

  describe 'Find projects whose managers match' do
    it "Can assign a new project" do
      expect(Project.new).to be_an_instance_of(Project)
    end
    it 'can find project id by manager' do
      Project.create(title: "test", manager: "nick")
      expect(Project.find_by_manager("nick").id).to eq(Project.last.id)
    end
end
