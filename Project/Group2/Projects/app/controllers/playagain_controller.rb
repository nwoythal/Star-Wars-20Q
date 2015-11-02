class PlayagainController < ApplicationController
  def index
    @answer = params[:answer]
  end
end