class UserguessingController < ApplicationController
  def index
    # all calls to the database must go through the bus class
    @category = params[:category]
  end
  
  def create #Named create because rails REALLY wants it to be
    byebug
    redirect_to("/playagain?guess='#{params[:ask]}'") #string is stored in params[:ask]
  end
end
