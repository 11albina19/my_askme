class QuestionsController < ApplicationController

  def create
    Question.create(
      body: params[:question][:body],
      user_id: params[:question][:user_id]
    )
  end

  def update
    @question = Question.find(params[:id])
    @question.update(
      body: params[:question][:body],
      user_id: params[:question][:user_id]
    )
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
  end

  def show
    @question = Question.find(params[:id])
  end

  def index
    @question = Question.all
  end
  #redirect_to '/'
  #render text: 'Ваш запрос обработан'
end
