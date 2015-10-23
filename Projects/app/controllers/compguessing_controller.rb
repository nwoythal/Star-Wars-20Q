class CompguessingController < ApplicationController
  def index
    # all calls to the database must go through the bus class
    @category = params[:category]
    @node_number = params[:node_number]
    @question = Bus.get_computer_guess_info(@category, @node_number)
    #if @question.what_am_i.to_s == "Answer"
    # return RedirectToAction("index", :question => @question)
    #else
    #  return @question
    #end
    #@question, what = Bus.get_computer_guess_info(@category, 1)
  end

  def yes_cond
    @category = params[:category]
  end
end
