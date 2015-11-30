require "spec_helper"

describe Jedi do
  it "deletes the spaces in names" do
    expect(Jedi.jedi_pic_info("Obi Wan")).to eq("jedi/obiwan")
  end
end
