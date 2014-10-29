class UserResponsesController < ApplicationController
  before_action :set_question
  before_action :set_user_response, only: [:show, :edit, :update, :destroy]
  respond_to :html

  def index
    @user_responses = @question.user_responses
    respond_with(@user_responses)
  end

  def show
    respond_with(@user_response)
  end

  def new
    @user_response = @question.user_responses.build
    respond_with(@user_response)
  end

  def edit
  end

  # validates user responses against expected answers
  #  does NOT save
  # uses Rail's errors to manage/display incorrect answers
  def create
    @user_response = UserResponse.new(user_response_params)
    if @user_response.valid?
      flash[:notice] = "Yes!  Those are the correct answers."
    end
    render :new
  end

  def update
    @user_response.update(user_response_params)
    respond_with(@user_response)
  end

  def destroy
    @user_response.destroy
    respond_with(@user_response)
  end

  private


  def set_question
    @question = Question.find(params[:question_id])
  end

  def set_user_response
    @user_response = UserResponse.find(params[:id])
  end

  def user_response_params
    params.require(:user_response).permit(:question_id, :capital, :language)
  end
end
