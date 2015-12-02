require 'spec_helper'
require 'rails_helper'
include ProjectsHelper

describe Picture do
  it 'welcome_pic' do
    expect(Picture.welcome_pic(1)).to eq("welcome/Bail_Organa.png")
    expect(Picture.welcome_pic(2)).to eq("welcome/C-3PO.jpg")
    expect(Picture.welcome_pic(3)).to eq("welcome/count-dooku.jpg")
    expect(Picture.welcome_pic(4)).to eq("welcome/Darth_Vader.png")
    expect(Picture.welcome_pic(5)).to eq("welcome/general_grievous.jpg")
    expect(Picture.welcome_pic(6)).to eq("welcome/Han_solo.jpg")
    expect(Picture.welcome_pic(7)).to eq("welcome/jangofett.jpg")
    expect(Picture.welcome_pic(8)).to eq("welcome/KiAdiMundi.jpg")
    expect(Picture.welcome_pic(9)).to eq("welcome/landocalrissian1.jpg")
    expect(Picture.welcome_pic(10)).to eq("welcome/LukeSkywalker1.jpg")
    expect(Picture.welcome_pic(11)).to eq("welcome/Mace_Windu.jpg")
    expect(Picture.welcome_pic(12)).to eq("welcome/OwenLars.jpg")
    expect(Picture.welcome_pic(13)).to eq("welcome/padme-amidala.jpg")
    expect(Picture.welcome_pic(14)).to eq("welcome/panaka.jpg")
    expect(Picture.welcome_pic(15)).to eq("welcome/PrincessLeia1.jpg")
    expect(Picture.welcome_pic(16)).to eq("welcome/R2d2.jpg")
    expect(Picture.welcome_pic(17)).to eq("welcome/rsz_anakinskywalker.jpg")
    expect(Picture.welcome_pic(18)).to eq("welcome/rsz_chancellorpap.jpg")
    expect(Picture.welcome_pic(19)).to eq("welcome/rsz_chewie.jpg")
    expect(Picture.welcome_pic(20)).to eq("welcome/rsz_darth_maul.jpg")
    expect(Picture.welcome_pic(21)).to eq("welcome/rsz_fett.jpg")
    expect(Picture.welcome_pic(22)).to eq("welcome/rsz_skywalkerkid.jpg")
    expect(Picture.welcome_pic(23)).to eq("welcome/rsz_yodas_hover_chair.png")
    expect(Picture.welcome_pic(24)).to eq("welcome/rsz_obi-wan.jpg")
  end
end