class PlayagainController < ApplicationController
  def index
    @answer = params[:answer]
    @guess = params[:guess]
    @valid = params[:valid]
  end
end