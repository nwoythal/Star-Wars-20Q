require 'spec_helper'
require 'rails_helper'
include ProjectsHelper

describe Question do
  it 'can find the first question to start the game' do
    expect(Question.first.node_number).to eq(1)
  end
end

describe Bus do
  describe 'get_computer_guess_info' do
    it 'Should check questions' do
      expect(Bus.get_computer_guess_info('questions', '1')).to eq(Question.first)
      #expect(@question).to eq(Question.first)
      Bus.get_computer_guess_info('questions', '1')
    end
    it 'Should check jedi' do
      expect(Bus.get_computer_guess_info('jedi', '1')).to eq(Jedi.first)
      expect(Bus.get_computer_guess_info('jedi', 1)).to eq(Jedi.first)
    end
    it 'Should check person' do
      expect(Bus.get_computer_guess_info('person', '1')).to eq(Starthing.first)
      expect(Bus.get_computer_guess_info('person', 1)).to eq(Starthing.first)
    end
    it 'Should check place' do
      expect(Bus.get_computer_guess_info('place', '1')).to eq(Place.first)
      expect(Bus.get_computer_guess_info('place', 1)).to eq(Place.first)
    end  
    it 'Should check object' do
      expect(Bus.get_computer_guess_info('object', '1')).to eq(Starobject.first)
      expect(Bus.get_computer_guess_info('object', 1)).to eq(Starobject.first)
    end 
    it 'Should check alive' do
      expect(Bus.get_computer_guess_info('alive', '1')).to eq(Alive.first)
      expect(Bus.get_computer_guess_info('alive', 1)).to eq(Alive.first)
    end 
    it 'Should check sentient' do
      expect(Bus.get_computer_guess_info('sentient', '1')).to eq(Sentient.first)
      expect(Bus.get_computer_guess_info('sentient', 1)).to eq(Sentient.first)
    end 
    it 'Should check built' do
      expect(Bus.get_computer_guess_info('built', '1')).to eq(Built.first)
      expect(Bus.get_computer_guess_info('built', 1)).to eq(Built.first)
    end 
    it 'Should check animal' do
      expect(Bus.get_computer_guess_info('animal', '1')).to eq(Animal.first)
      expect(Bus.get_computer_guess_info('animal', 1)).to eq(Animal.first)
    end 
    it 'Should check cyborg' do
      expect(Bus.get_computer_guess_info('cyborg', '1')).to eq(Cyborg.first)
      expect(Bus.get_computer_guess_info('cyborg', 1)).to eq(Cyborg.first)
    end 
    it 'Should check empire' do
      expect(Bus.get_computer_guess_info('empire', '1')).to eq(Empire.first)
      expect(Bus.get_computer_guess_info('empire', 1)).to eq(Empire.first)
    end 
    it 'Should check rebel' do
      expect(Bus.get_computer_guess_info('rebel', '1')).to eq(Rebel.first)
      expect(Bus.get_computer_guess_info('rebel', 1)).to eq(Rebel.first)
    end 
    it 'Should check sith' do
      expect(Bus.get_computer_guess_info('sith', '1')).to eq(Sith.first)
      expect(Bus.get_computer_guess_info('sith', 1)).to eq(Sith.first)
    end 
    it 'Should check senator' do
      expect(Bus.get_computer_guess_info('senator', '1')).to eq(Senator.first)
      expect(Bus.get_computer_guess_info('senator', 1)).to eq(Senator.first)
    end 
    it 'Should check weapon' do
      expect(Bus.get_computer_guess_info('weapon', '1')).to eq(Weapon.first)
      expect(Bus.get_computer_guess_info('weapon', 1)).to eq(Weapon.first)
    end 
    it 'Should check clone' do
      expect(Bus.get_computer_guess_info('clone', '1')).to eq(Clone.first)
      expect(Bus.get_computer_guess_info('clone', 1)).to eq(Clone.first)
    end 
    it 'Should check machine' do
      expect(Bus.get_computer_guess_info('machine', '1')).to eq(Machine.first)
      expect(Bus.get_computer_guess_info('machine', 1)).to eq(Machine.first)
    end 
    it 'Should check when moon' do
      expect(Bus.get_computer_guess_info('moon', '1')).to eq(Moon.first)
      expect(Bus.get_computer_guess_info('moon', 1)).to eq(Moon.first)
    end 
  end
  describe 'get_pic_info' do
    it 'should remove spaces in names and make lowercase' do
      expect(Bus.get_pic_info("jedi",'Obi Wan')).to eq('obiwan')
    end
  end
  describe 'get_category' do
    it 'should check person' do
      expect(Bus.get_category('1')).to eq('person')
    end
    it 'should check place' do
      expect(Bus.get_category('2')).to eq('place')
    end
    it 'should check object' do
      expect(Bus.get_category('3')).to eq('object')
    end
    it 'should check alive' do
      expect(Bus.get_category('4')).to eq('alive')
    end
    it 'should check sentient' do
      expect(Bus.get_category('5')).to eq('sentient')
    end
    it 'should check built' do
      expect(Bus.get_category('6')).to eq('built')
    end
    it 'should check animal' do
       expect(Bus.get_category('7')).to eq('animal')
    end
    it 'should check cyborg' do
      expect(Bus.get_category('8')).to eq('cyborg')
    end
    it 'should check empire' do
      expect(Bus.get_category('9')).to eq('empire')
    end
    it 'should check rebel' do
      expect(Bus.get_category('10')).to eq('rebel')
    end
    it 'should check jedi' do
      expect(Bus.get_category('11')).to eq('jedi')
    end
    it 'should check sith' do
      expect(Bus.get_category('12')).to eq('sith')
    end
    it 'should check senator' do
      expect(Bus.get_category('13')).to eq('senator')
    end
    it 'should check weapon' do
      expect(Bus.get_category('14')).to eq('weapon')
    end
    it 'should check clone' do
      expect(Bus.get_category('15')).to eq('clone')
    end
    it 'should check machine' do
      expect(Bus.get_category('16')).to eq('machine')
    end
    it 'should check moon' do
      expect(Bus.get_category('17')).to eq('moon')
    end
  end
  
  describe 'grab_object' do
    it 'should return a random number' do
      #Force seed to test result
      srand(100)
      expect(Bus.grab_object).to eq('cyborg')
    end
  end
end





















