require 'spec_helper'
require 'rails_helper'
include ProjectsHelper

describe Randomquestion do
  describe 'get random number' do
    it 'should return a random number' do
      srand(50)
      expect(Randomquestion.get_random_num([1])).to eq(12)
    end
    it 'should select a different number if already used' do
      srand(50)
      expect(Randomquestion.get_random_num([12])).to eq(1)
    end
  end

  describe 'get_first_random_num' do
    it 'should return a number 1-15' do
      Randomquestion.get_first_random_num.should be_between(1, 15)
    end
  end

  describe 'create_initial_array' do
    it 'should be empty in no values passed' do
      expect(Randomquestion.create_initial_array([])).to eq([[]])
    end
    it 'should append the already picked numbers' do
      expect(Randomquestion.create_initial_array([1, 2])).to eq([[1, 2]])
    end
  end

  describe 'update_list_of_already_picked_questions' do
    it 'should return the new array' do
      expect(Randomquestion.update_list_of_already_picked_questions([5, 6, 7], 8)).to eq([5, 6, 7, 8])
    end
  end
end