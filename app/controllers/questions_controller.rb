class QuestionsController < ApplicationController
  def index
    @questions = Question.order(id: :DESC) 
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to questions_path, notice: "投稿完了"
    else 
      flash.now[:alert] = '投稿失敗'
      @questions = Question.order(id: :DESC) 
      render :index
    end
  end

  def show
    @question = Question.find(params[:id])
    @solution = Solution.new
    @solutions = @question.solutions
  end

  private
  def question_params
    params.require(:question).permit(:title, :detail)
  end
end
