class QuestionsController < ApplicationController
  def index
    @questions = Question.all.reverse
  end
end
