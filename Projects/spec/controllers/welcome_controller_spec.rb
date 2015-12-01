require 'rails_helper'

describe WelcomeController do
  it 'Should set guesses left to zero' do
    get :index
    expect(:guesses_left) == nil
  end

end
