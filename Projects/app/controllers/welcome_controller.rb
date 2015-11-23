class WelcomeController < ApplicationController
  def index
    # all calls to the database must go through the bus class
    session[:guesses_left]=nil #reset guesses
    session[:usrguess_obj]=nil #reset picked object
    array_pic = Picture.get_welcome_pic
    @pic_one = array_pic[0]
    @pic_two = array_pic[1]
  end
end
