class SolutionsController < ApplicationController
  def index 
    @question = Question.find(params[:question_id])
    @solution = Solution.new
    @solutions = Solution.all
  end
  def create
    @solution = Solution.new(solution_params)
    if @solution.save
      redirect_to question_solutions_path, notice: "回答完了"
    else 
      flash.now[:alert] = '投稿失敗'
      @question = Question.find(params[:question_id])
      @solution = Solution.new
      @solutions = Solution.all
      render :index
    end
  end
  private
  def solution_params
    params.require(:solution).permit(:title, :detail)
  end

end
