require 'rails_helper'
require 'spec_helper'

describe CategoriesController do
  it 'Should receive and assign the correct category' do
    get :index, {:game => "compguessing"}
    expect(:game_type) == :game
  end

  it 'Should receive and assing the correct category' do
    get :index, {:game => "userguessing"}
    expect(:game_type) == :game
  end
end