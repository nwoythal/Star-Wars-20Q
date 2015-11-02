require 'spec_helper'
include ProjectsHelper

describe Starwar do
  it 'can find the first question to start the game' do
    expect(Starwar.first.node_number).to eq(1)
  end
end
