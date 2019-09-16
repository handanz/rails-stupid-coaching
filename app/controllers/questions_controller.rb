class QuestionsController < ApplicationController
  def ask
  end

  def answer
    if params[:answers] == 'I am going to work'
      @reply = 'Great'
    elsif /.?/.match(params[:answers])
      @reply = 'Silly question, get dressed and go to work!'
    else
      @reply = 'I don\'t care, get dressed and go to work!'
    end
  end
end
