class QuestionsController < ApplicationController
  def index
    @questions = Question.order(id: :DESC) 
    @question = Question.new
  end
  def create
    @question = Question.create(question_params)
    if @question.save
      flash[:notice] = '投稿完了'
    else 
      flash[:notice] = '投稿失敗'
    end
    redirect_to questions_path
  end

  private
  def question_params
    params.require(:question).permit(:title, :detail)
  end
end
