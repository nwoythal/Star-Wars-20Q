require 'rails_helper'
require 'spec_helper'

describe UserguessingController do
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

end
