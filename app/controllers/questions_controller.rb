class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answercoach = ['Silly question, get dressed and go to work!', 'Idc, get dressed and go to work!', 'Great!']

    if params[:test] == ('I am going to work')
      @reponse = @answercoach[2]
    elsif params[:test].include?('?')
      @sillyreponse = @answercoach[0]
    elsif params[:test] != ('I am going to work')
      @badreponse = @answercoach[1]
    end
  end
end
