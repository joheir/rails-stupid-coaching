class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    possibilites = ['I am going to work', '?']
    answers = ['Great!', 'Silly question, get dressed and go to work!', 'I don\'t care, get dressed and go to work!']
    if @question == possibilites[0]
      @answer = answers[0]
    elsif @question.include? possibilites[1]
      @answer = answers[1]
    else
      @answer = answers[2]
    end
  end
end
