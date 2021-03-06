class UserguessingController < ApplicationController
  def index
    # all calls to the database must go through the bus class
    @answer = "Incorrect!"
    @input = params[:input]
    if session[:usrguess_obj].nil? && session[:yes_questions].nil?
      session[:usrguess_obj]=Bus.grab_object()
      session[:yes_questions]=Bus.find_yes_questions(session[:usrguess_obj][1], session[:usrguess_obj][2])
      session[:usrguess_obj]=session[:usrguess_obj][0] #set to answer
    end
    if session[:guesses_left].nil?
      @counter=session[:guesses_left]=20 #set counter
    elsif session[:guesses_left]>=1
      @counter=session[:guesses_left]-=1
    elsif session[:guesses_left]<1
      redirect_to show_path()
    end
    if !@input.nil?
      session[:yes_questions].each do |question|
        if @input.delete(' ').downcase == question.delete(' ').downcase
          @answer = "Correct!"

        end

      end
    else
      @answer = ""
    end

  end

  def create #Here as an alias
    redirect_to :action => 'index'
  end

  def show
     @counter=session[:guesses_left]=nil #reset counter
  end

  def final_guess
    redirect_to :action => 'index', :controller =>'playagain', :answer=> session[:usrguess_obj].to_s, :game=>'userguessing', :guess => params[:guess]
  end

end
