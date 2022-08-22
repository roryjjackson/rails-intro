class QuestionsController < ApplicationController
  def ask
  end

  def answer
    # raise
    @question = params[:request]
    if params[:request] == ''
      @answer = "Great!"
    elsif params[:request].include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
