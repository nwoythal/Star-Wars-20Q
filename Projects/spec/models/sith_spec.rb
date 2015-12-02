require "spec_helper"

describe Sith do
  it "deletes the spaces in the name" do
    expect(Sith.sith_pic_info("Darth Malgus")).to eq("siths/darthmalgus")
  end
end