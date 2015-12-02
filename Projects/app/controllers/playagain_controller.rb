class PlayagainController < ApplicationController
  def index
    @answer = params[:answer].to_s.gsub(/\\\./,'')
    @guess = params[:guess].to_s.split.map(&:capitalize).join(' ')
    @valid=@answer.to_s.downcase.gsub(/[^a-z0-9]/i,'').eql?(@guess.to_s.downcase.gsub(/[^a-z0-9]/i,'')) ? "Correct!" : "Incorrect!"
    @pic = params[:pic]
  end
end
