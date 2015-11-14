require 'spec_helper'
include ProjectsHelper

describe Question do
  it 'can find the first question to start the game' do
    expect(Question.first.node_number).to eq(1)
  end
end
