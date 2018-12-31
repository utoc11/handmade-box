class QuestionsController < ApplicationController
  before_action :set_question, only: %i[show edit update]
  before_action :set_current_user

  def new
    @question = Question.new
  end

  def create
    @question = Question.create(question_params,user_id: @current_user.id)
    if @question.save
      redirect_to question_path(@question), notice: t('common.flash.created')
    else
      flash.now[:alert] = @question.errors.full_messages.join('ã€‚')
      @question.errors.delete(:title)
      @question.errors.delete(:body)
      @question.errors.delete(:pd_tag_id)
      @question.errors.delete(:tech_tag_id)
      render :new

    end
  end

  def show
  end

  def edit
  end

  def update
  end

  private

  def set_question
    @question = Question.find(params[:id])
  end

  def question_params
    params.require(:question).permit(:title, :body,:pd_tag_id,:tech_tag_id)
  end


end
