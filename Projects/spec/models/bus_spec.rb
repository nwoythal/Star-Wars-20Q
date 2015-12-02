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
    it 'Should check object' do
      expect(Bus.get_computer_guess_info('starobject', '1')).to eq(Starobject.first)
      expect(Bus.get_computer_guess_info('starobject', 1)).to eq(Starobject.first)
    end 
    it 'Should check place' do
      expect(Bus.get_computer_guess_info('place', '1')).to eq(Place.first)
      expect(Bus.get_computer_guess_info('place', 1)).to eq(Place.first)
    end 
    it 'Should check starthing' do
      expect(Bus.get_computer_guess_info('starthing', '1')).to eq(Starthing.first)
      expect(Bus.get_computer_guess_info('starthing', 1)).to eq(Starthing.first)
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
    it 'Should check sentient' do
      expect(Bus.get_computer_guess_info('sentient', '1')).to eq(Sentient.first)
      expect(Bus.get_computer_guess_info('sentient', 1)).to eq(Sentient.first)
    end     
  end


  describe 'get_pic_info' do
    it 'should remove spaces in names and make lowercase' do
      expect(Bus.get_pic_info("jedi",'Obi Wan')).to eq('jedi/obiwan')
      expect(Bus.get_pic_info("clone", "Captain Rex")).to eq("clones/captainrex")
      expect(Bus.get_pic_info("sith", "Darth Malgus")).to eq("siths/darthmalgus")
    end
  end


  describe 'get_category' do
    it 'should check starthing' do
      expect(Bus.get_category('1')).to eq('starthing')
    end
    it 'should check place' do
      expect(Bus.get_category('2')).to eq('place')
    end
    it 'should check object' do
      expect(Bus.get_category('3')).to eq('starobject')
    end
    it 'should check built' do
      expect(Bus.get_category('4')).to eq('built')
    end
    it 'should check animal' do
      expect(Bus.get_category('5')).to eq('animal')
    end
    it 'should check cyborg' do
      expect(Bus.get_category('6')).to eq('cyborg')
    end
    it 'should check empire' do
       expect(Bus.get_category('7')).to eq('empire')
    end
    it 'should check rebel' do
      expect(Bus.get_category('8')).to eq('rebel')
    end
    it 'should check jedi' do
      expect(Bus.get_category('9')).to eq('jedi')
    end
    it 'should check sith' do
      expect(Bus.get_category('10')).to eq('sith')
    end
    it 'should check senator' do
      expect(Bus.get_category('11')).to eq('senator')
    end
    it 'should check weapon' do
      expect(Bus.get_category('12')).to eq('weapon')
    end
    it 'should check clone' do
      expect(Bus.get_category('13')).to eq('clone')
    end
    it 'should check machine' do
      expect(Bus.get_category('14')).to eq('machine')
    end
    it 'should check moon' do
      expect(Bus.get_category('15')).to eq('moon')
    end
    it 'should check sentient' do
      expect(Bus.get_category('16')).to eq('sentient')
    end
  end

  describe 'find_yes_questions' do
    it 'should select the correct category' do
      expect(Bus.find_yes_questions('starthing', 1)).to eq(['Is it a character from the Movies?'])
      expect(Bus.find_yes_questions('place', 1)).to eq(['Is it a Place?'])
      expect(Bus.find_yes_questions('starobject', 1)).to eq(['Is it an Object?'])
      expect(Bus.find_yes_questions('built', 1)).to eq(['Is it a Building?'])
      expect(Bus.find_yes_questions('animal', 1)).to eq(['Is it an Animal?'])
      expect(Bus.find_yes_questions('cyborg', 1)).to eq(['Is it a Cyborg?'])
      expect(Bus.find_yes_questions('empire', 1)).to eq(['Is it a part of the Galactic Empire?'])
      expect(Bus.find_yes_questions('rebel', 1)).to eq(['Is it a part of the Rebel Alliance?'])
      expect(Bus.find_yes_questions('jedi', 1)).to eq(['Is it a Jedi?'])
      expect(Bus.find_yes_questions('sith', 1)).to eq(['Is it a Sith?'])
      expect(Bus.find_yes_questions('senator', 1)).to eq(['Is it a Senator?'])
      expect(Bus.find_yes_questions('weapon', 1)).to eq(['Is it a Weapon?'])
      expect(Bus.find_yes_questions('clone', 1)).to eq(['Is it a Clone?'])
      expect(Bus.find_yes_questions('machine', 1)).to eq(['Is it a Machine?'])
      expect(Bus.find_yes_questions('moon', 1)).to eq(['Is it larger than a Moon?'])
    end
  end
end





















