require 'rails_helper'
require 'spec_helper'

describe UserguessingController do
  load "#{Rails.root}/db/seeds.rb"  
  it 'starts a new game' do
    get :create
    expect(response).to redirect_to('/userguessing')
  end
  it 'reset the question counter' do
    get :show
    expect(@counter).to eq(nil)
    expect(session[:guesses_left]).to eq(nil)
  end  

  it 'Should check for guesses_left to be nil and set to 20 if such' do
    get :index, {:guesses_left => nil}
    expect(@counter) == 20
    expect(session[:guesses_left]) == (@counter)
  end

  it 'Should check re-route if guesses_left is equal to zero' do
    get :index, {} ,{:guesses_left => 0}
    expect(response).to redirect_to '/userguessing/show'
  end

  it 'should check if usrguess_obj is nil and if it is, pick a random value' do
    get :index, { :usrguess_obj => 'nil' }
    expect(session[:usrguess_obj]).not_to eq(nil)
  end
end
