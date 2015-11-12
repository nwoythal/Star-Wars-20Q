class WelcomeController < ApplicationController
  def index
    # all calls to the database must go through the bus class
    session[:guesses_left]=nil
  end
end