require 'rails_helper'
require 'spec_helper'

describe UserguessingController do
  it 'starts a new game' do
    get :create
    expect(response).to redirect_to('/userguessing')
  end
  it 'redirects to a final guess' do
    get :final_guess
    expect(response).to redirect_to(:action => 'index', :controller =>'playagain', :answer=> :ask, :game=>'compguessing')
  end
  it 'reset the question counter' do
    get :show
    expect(@counter).to eq(nil)
    expect(session[:guesses_left]).to eq(nil)
  end
end
