class AnswersController < ApplicationController
  def edit
    @question = Question.find params[:question_id]
    @answer = @question.answers.find params[:id]
  end

  def update
    @question = Question.find params[:question_id]
    @answer = @question.answers.find params[:id]
        
    if @answer.update answer_params
      flash[:success] = 'Answer updated!'
      redirect_to question_path
    else
      render :edit
    end
  end

  def create
    @question = Question.find params[:question_id]
    @answer = @question.answers.build answer_params

    if @answer.save
      flash[:success] = "Answer created!"
      redirect_to question_path(@question)
    else
      @answers = @question.answers.order created_at: :desc
      render 'questions/show'
    end
  end

  def destroy
    @question = Question.find params[:question_id]
    answer = @question.answers.find params[:id]
    answer.destroy
    flash[:success] = 'Answer deleted!'
    redirect_to question_path(@question)
  end

  private

  def answer_params
    params.require(:answer).permit(:body)
  end
end