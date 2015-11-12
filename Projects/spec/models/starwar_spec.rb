require 'spec_helper'
include ProjectsHelper
describe Starwar do

  describe 'create a new entry' do
    it "Can create a new entry" do
      expect(Starwar.new).to be_an_instance_of(Starwar)
    end
  end
end
