class UserguessingController < ApplicationController
  def index
    # all calls to the database must go through the bus class
    if session[:guesses_left].nil?
      @counter=session[:guesses_left]=20 #set counter
    elsif session[:guesses_left]>=1
      @counter=session[:guesses_left]-=1
    elsif session[:guesses_left]<1
      redirect_to show_path()
    end
    #redirect_to :action=>'index', :controller=> 'userguessing', session[:guesses_left] => @counter #does not re-render page, why?
  end

  def create #Here as an alias
    redirect_to :action => 'index'
  end

  def show
     @counter=session[:guesses_left]=nil #reset counter
  end

  def final_guess
    redirect_to :action => 'index', :controller =>'playagain', :answer=> :ask, :game=>'compguessing'
  end

end