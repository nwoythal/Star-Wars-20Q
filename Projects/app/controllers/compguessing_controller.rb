class CompguessingController < ApplicationController
  def index
    if params[:node_number] == '0'
      @category = params[:category]
      @question = Bus.get_computer_guess_info(@category, 1)
      @node_number = 1
      session[:node_number] = @node_number
      redirect_to :action=>"index", :controller=> "compguessing",  :category=>"#{@category}", :node_number => @node_number
    elsif (params[:category] == "questions") && (params[:button_clicked] == "no")
      @category = params[:category]
      @node_number = session[:node_number]
      @node_number = @node_number = 1 + Integer(@node_number)
      if @node_number > 17
        @node_number = 1
      end
      redirect_to :action=>"index", :controller=> "compguessing",  :category=>"#{@category}", :node_number => @node_number
    elsif (params[:category] == "questions") && (params[:button_clicked] == "yes")
      @node_number = 1
      @category = Bus.get_category(session[:node_number].to_s)
      redirect_to :action=>"index", :controller=> "compguessing",  :category=>"#{@category}", :node_number => @node_number
    else
      if (params[:button_clicked].to_s == "yes") && (session[:node_number].to_s == params[:node_number].to_s)
        @category = params[:category]
        @node_number = params[:node_number]
        @node_number = 2*Integer(@node_number)
        redirect_to :action=>"index", :controller=> "compguessing",  :category=>"#{@category}", :node_number => @node_number
      elsif (params[:button_clicked] == "no") && (session[:node_number].to_s == params[:node_number].to_s)
             @category = params[:category]
             @node_number = params[:node_number]
             @node_number = 2*Integer(@node_number) + 1
             redirect_to :action=>"index", :controller=> "compguessing",  :category=>"#{@category}", :node_number => @node_number
      end
      @node_number = params[:node_number]
      session[:node_number] = @node_number
      @category = params[:category]
      @question = Bus.get_computer_guess_info(@category, @node_number)
      if @question.what_am_i.to_s == 'Redirect'
        session[:node_number] = @question.answer_or_question
        redirect_to :action=>"index", :controller=> "compguessing", :category=>"questions", :button_clicked => "yes"
      end
      if @question.what_am_i.to_s == 'Answer'
        @pic = Bus.get_pic_info(@category, @question.answer_or_question)
        redirect_to :action=>"index", :controller=>"playagain", :answer => @question.answer_or_question.to_s, :game => 'compguessing', :pic => @pic
      end
    end


    # all calls to the database must go through the bus class
    #if @question.what_am_i.to_s == "Answer"
    # return RedirectToAction("index", :question => @question)
    #else
    #  return @question
    #end
    #@question, what = Bus.get_computer_guess_info(@category, 1)
  end

end
