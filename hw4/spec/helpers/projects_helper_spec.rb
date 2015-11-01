require "spec_helper"

describe ProjectsHelper do
  it "checks for oddness" do
    expect(helper.oddness(1)).to eq("odd")
    expect(helper.oddness(2)).to eq("even")
  end
end

