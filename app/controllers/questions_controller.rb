class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = params[:question]
    if @answer.include?("?")
      @show = "Silly question, get dressed and go to work!"
    elsif @answer.include?("I am going to work right now!")
      @show = ""
    else
      @show = "I don't care, get dressed and go to work!"
    end
  end
end
