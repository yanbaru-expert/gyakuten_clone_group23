class QuestionsController < ApplicationController
  def index
    @questions = Question.order(id: :DESC) 
  end
end
