class Picture
  def self.get_welcome_pic
    returnArray = Array.new
    pic_one = rand(1..24)
    pic_two = rand(1..24)
    while pic_two == pic_one
      pic_two = rand(1..24)
    end
    returnArray[0] = welcome_pic(pic_one)
    returnArray[1] = welcome_pic(pic_two)
    return returnArray
  end

  def self.welcome_pic(num)
    case num
      when 1
        return "welcome/Bail_Organa.png"
      when 2
        return "welcome/C-3PO.jpg"
      when 3
        return "welcome/count-dooku.jpg"
      when 4
        return "welcome/Darth_Vader.png"
      when 5
        return "welcome/general_grievous.jpg"
      when 6
        return "welcome/Han_solo.jpg"
      when 7
        return "welcome/jangofett.jpg"
      when 8
        return "welcome/KiAdiMundi.jpg"
      when 9
        return "welcome/landocalrissian1.jpg"
      when 10
        return "welcome/LukeSkywalker1.jpg"
      when 11
        return "welcome/Mace_Windu.jpg"
      when 12
        return "welcome/OwenLars.jpg"
      when 13
        return "welcome/padme-amidala.jpg"
      when 14
        return "welcome/panaka.jpg"
      when 15
        return "welcome/PrincessLeia1.jpg"
      when 16
        return "welcome/R2d2.jpg"
      when 17
        return "welcome/rsz_anakinskywalker.jpg"
      when 18
        return "welcome/rsz_chancellorpap.jpg"
      when 19
        return "welcome/rsz_chewie.jpg"
      when 20
        return "welcome/rsz_darth_maul.jpg"
      when 21
        return "welcome/rsz_fett.jpg"
      when 22
        return "welcome/rsz_skywalkerkid.jpg"
      when 23
        return "welcome/rsz_yodas_hover_chair.png"
      when 24
        return "welcome/rsz_obi-wan.jpg"
    end
  end
end