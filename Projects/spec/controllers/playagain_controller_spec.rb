require 'rails_helper'
require 'spec_helper'

describe PlayagainController do
  it 'Should receive the computer guess' do
    get :index, {:answer => "Is it Luke Skywalker?"}
    expect(@answer) == :answer
  end

  it 'Should receive the user guess' do
    get :index, {:game => "Is it the DeathStar?"}
    expect(@answer) == :answer
  end
end