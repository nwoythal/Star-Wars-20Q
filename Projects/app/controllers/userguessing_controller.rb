class UserguessingController < ApplicationController
  def index
    # all calls to the database must go through the bus class
    if session[:usrguess_obj].nil?
      session[:usrguess_obj]=Bus.grab_object()
    end
    if session[:guesses_left].nil?
      @counter=session[:guesses_left]=20 #set counter
    elsif session[:guesses_left]>=1
      @counter=session[:guesses_left]-=1
    elsif session[:guesses_left]<1
      redirect_to show_path()
    end
  end

  def create #Here as an alias
    redirect_to :action => 'index'
  end

  def show
     @counter=session[:guesses_left]=nil #reset counter
  end

  def final_guess
    guess = params[:guess]

    if guess.to_s.downcase.gsub(/[^0-9a-z]/i,'') == session[:usrguess_obj].to_s.downcase.gsub(/[^0-9a-z]/i,'') #remove punctuation & check
      valid = 'Correct!'
    else
      valid = 'Incorrect!'
    end
    redirect_to :action => 'index', :controller =>'playagain', :answer=> session[:usrguess_obj].to_s, :game=>'userguessing', :guess => params[:guess], :valid => valid
  end

end
