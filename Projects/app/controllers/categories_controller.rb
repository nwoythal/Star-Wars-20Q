class CategoriesController < ApplicationController
  def index
    @game_type = params[:game]
  end
end