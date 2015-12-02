class PlayagainController < ApplicationController
  def index
    @answer = params[:answer].gsub(/\\\./,'')
    @guess = params[:guess].split.map(&:capitalize).join(' ')
    @valid=@answer.downcase.gsub(/[^a-z0-9]/i,'').eql?(@guess.downcase.gsub(/[^a-z0-9]/i,'')) ? "Correct!" : "Incorrect!"
    @pic = params[:pic]
  end
end
