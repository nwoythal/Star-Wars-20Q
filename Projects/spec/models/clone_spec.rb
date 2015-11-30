require 'spec_helper'
require 'rails_helper'
include ProjectsHelper

describe Clone do
  describe 'clone_pic_info' do
    it 'should delete the spacing and make it lowercase in the name' do
      expect(Clone.clone_pic_info('Captain Rex')).to eq('clones/captainrex')
    end
    it 'should check again' do
      expect(Clone.clone_pic_info('Clone Trooper Heavy')).to eq('clones/clonetrooperheavy')
    end
  end
end