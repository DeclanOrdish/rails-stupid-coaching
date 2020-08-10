class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    coach = ['Great!', 'Silly question, get dressed and go to work!', "I don't care, get dressed and go to work!"]

    @question = if params[:question] == 'I am going to work'
                  coach[0]
                elsif params[:question].end_with?('?')
                  coach[1]
                else
                  coach[2]
                end
  end
end
