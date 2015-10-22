class UserguessingController < ApplicationController
  def index
    # all calls to the database must go through the bus class
    @category = params[:category]
  end
end