class SolutionsController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    @solution = @question.solutions.build(solution_params)
    
    if @solution.save
      redirect_to question_path(@solution.question_id), notice: "回答完了"
    else 
      flash.now[:alert] = '投稿失敗'
      @solutions = @question.solutions
      render template: "questions/show"
    end
  end
  private
  def solution_params
    params.require(:solution).permit(:answer)
  end

end
