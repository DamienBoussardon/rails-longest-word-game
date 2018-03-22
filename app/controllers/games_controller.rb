class GamesController < ApplicationController
  def new
    @letters = ('a'..'z').to_a.sample(10)
  end

  def score
    @score = params[:games]
    @sum=0

    @or = params[:games].split(//)



    @or.each_with_index do |ele, index|
      @sum += 1
    end
  end
end
